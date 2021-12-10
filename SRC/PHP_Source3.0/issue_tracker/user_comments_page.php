<?php 
   session_start();
   include "connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   
       $userId = $_SESSION['id'];
       $query = "SELECT name FROM users.usersdata WHERE id = $userId";
        $result = mysqli_query($conn, $query);
        $row=mysqli_fetch_assoc($result);
        $username = $row['name'];?>

<?php

    include 'connect.php';
    $Issueid = $_GET['commenting_recordId'];
    $sql = "SELECT IssueName FROM users.issue_tracker_tb WHERE IssueId=$Issueid";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
        
        $IssueName = $row['IssueName'];

    if(isset($_POST['submit'])){
        $comments = $_POST['comment'];
       



        $sql = " INSERT INTO users.comments(comment, username, userId,posteddate,issue_id, issue_name) 
                    VALUES ('$comments','$username',$userId, Now(),$Issueid,'$IssueName') ";
        
        $result = mysqli_query($conn, $sql);
        if($result){
            //echo "Updated Successfully";
            header("location: user_issue_update.php?updatedid/editind_recordId='$Issueid'");
        }else{
            die(mysqli_error($conn));
        }
       
    }
    
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <title>Comment Section</title>
</head>

<body>
    <div class="container" style="text-align: end; font-size:30px">
        <i class='bx bxs-user-pin'>
            <?=$_SESSION['name']?>
        </i>
        <a href=" /loginpage/logout.php" class="btn btn-secondary btn-sm" style="margin-left: 10px;">Logout</a>
    </div>
    <div class="container">
        <form action="" method="POST">
            <h2 class="text-danger">Comments</h2>
            <hr>
            <div>
                <label>Comment</label>
                <textarea class="form-control" name="comment" id="comment"
                    placeholder="Write your comments here..."></textarea><br>
            </div>
            <button name="submit" id="submit" class="btn btn-primary">Submit</button>
            <!-- <br>
            <br>
            <?php
                    include 'connect.php';
                    $sql = "SELECT * FROM users.comments WHERE issue_id = $Issueid ORDER BY id DESC";
                    $result = mysqli_query($conn, $sql);
                    
                    if($result){
                        
                        while($row=mysqli_fetch_assoc($result)){
                            $username = $row['username'];
                            $date = $row['posteddate'];
                            $comment = $row['comment'];
                            
                            echo '<div class="card" style="margin-bottom:2px; margin-top:2px;">
                                <div class="card-header">
                                    <p>Posted
                                        <b>
                                         '.$username.'
                                        </b>on<br>
                                        <b>
                                            '.$date.'
                                        </b>
                                        </p>
                                </div>
                                <div class="card-body">
                                    <p class="card-text">
                                       '.$comment.'
                                    </p>
                                </div>
                                
                                </div>';
                                
                                }
                                }
    
                ?> -->

        </form>
    </div>
</body>
<script>
    function replybtn() {

    }
</script>

</html>
<?php }else{
	header("Location: login_page.php");
} ?>