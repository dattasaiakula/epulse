<?php 
   session_start();
   include "../../connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {  
    $userId = $_SESSION['id'];
    $query = "SELECT * FROM id18088723_users.usersdata WHERE id = $userId";
     $result = mysqli_query($conn, $query);
     $row=mysqli_fetch_assoc($result);
     $name = $row['name']; ?>

<?php

    include '../../connect.php';
    $Issueid = $_GET['updatedid/editind_recordId'];
    $sql = "SELECT * FROM id18088723_users.issue_tracker_tb WHERE IssueId=$Issueid";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
        $issueid = $row['IssueId'];
        $IssueName = $row['IssueName'];
        $IssueType = $row['IssueType'];
        $IssueDescription = $row['IssueDescription'];
        $ProductTeam = $row['ProductTeam'];
        $Area = $row['Area'];
        $Priority = $row['Priority'];
        $Owner = $row['Owner'];
        $Status = $row['Status'];
        $CreatedDate = $row['CreatedDate'];
        $ReportedBy = $row['ReportedBy'];
        $ModifiedDate = $row['ModifiedDate'];
        $ModifiedBy = $row['ModifiedBy'];



    if(isset($_POST['save'])){
        $IssueName = $_POST['IssueName'];
        $IssueType = $_POST['IssueType'];
        $IssueDescription = $_POST['IssueDescription'];
        $ProductTeam = $_POST['ProductTeam'];
        $Area = $_POST['Area'];
        $Priority = $_POST['Priority'];
        $Owner = $_POST['Owner'];
        $Status = $_POST['Status'];
        $CreatedDate = $_POST['CreatedDate'];
        $ReportedBy = $_POST['ReportedBy'];
        $ModifiedDate = $_POST['ModifiedDate'];
        $ModifiedBy = $_POST['ModifiedBy'];



        $sql = "UPDATE id18088723_users.issue_tracker_tb 
                SET IssueName='$IssueName',IssueType='$IssueType',IssueDescription='$IssueDescription',
                ProductTeam='$ProductTeam',Area='$Area',Priority='$Priority',Owner='$Owner',Status='$Status',
                ReportedBy='$ReportedBy', ModifiedDate=Now(),UpdatedBy = '$name' WHERE IssueId=$Issueid";
        
        $result = mysqli_query($conn, $sql);
        if($result){
            //echo "Updated Successfully";
            header('location: gainsight_admin_issues.php');
        }else{
            die(mysqli_error($conn));
        }
       
    }
    
?>



<!doctype html>
<html lang="en">
<style>
    .topnav {
        overflow: hidden;
        background-color: rgb(76, 110, 219);
    }

    .topnav a {
        float: left;
        color: #ad2c2c;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }

    .topnav a:hover {
       
        color: black;
    }

    .topnav a.active {
        background-color: #04AA6D;
        color: white;
    }
</style>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

        <!-- Top Navigation Bar -->
    <div class="topnav" style="left: 60px;  width: 1459px;">
        <a class="btn " onclick="history.back()">Back</a>
        <a style="margin-left:900px;">
            <i class='bx bxs-user-pin'>
                <?=$_SESSION['name']?>
            </i>
        </a>
        <a href=" ../../index.php" class="btn" >Logout</a>
    </div>
</head>

<body>
    
    <div class="container mt-5">
        <input type="button" class="btn btn-primary my-3 " data-bs-toggle="modal" data-bs-target="#myModal"
            value="Log History" id="log_history"></input>

        <a href="gainsight_admin_comments_page.php?commenting_recordId=<?=$Issueid?>" class="btn btn-primary my-3"
            id="comment">Comment</a>
        <div class="modal" id="myModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Modal Header</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <p>Some text in the modal.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="container my-2">
        <form method="post">
            <div class="col" style="margin-left: 530px;">
                <button type="submit" class="btn btn-primary my-3" name="save">Save</button>

                <input style="margin-left: 50px;" type="button" class="btn btn-primary my-3" name="cancel"
                    value="Cancel" onclick="history.back();">
                </input>

            </div>


            <div class="row">
                <div class="col">
                    <lable><b>Issue Name</b></lable>
                    <input type="text" class="form-control" placeholder="Issue Name" name="IssueName" autocomplete="off"
                        value=<?php echo $IssueName; ?>>
                </div>
                <div class="col">
                    <label for="description"><b>Issue Description</b></label><br />
                    <textarea type="text" class="form-control" placeholder="Enter Description" name="IssueDescription"
                        rows="4" cols="50"><?php echo $IssueDescription; ?></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="issue"><b>Issue Type</b></label><br />
                    <select id="selectId" class="form-control" name="IssueType" autocomplete="off">
                        <option>
                            <?php echo $IssueType;?>
                        </option>
                        <?php
                        $sql = "SELECT * FROM id18088723_users.Issue_Type";
                            $res1 = mysqli_query($conn, $sql);
                        if($res1){
                            while($rows=mysqli_fetch_array($res1)){
                                $type = $rows['type'];
                                echo "<option style='text-align: center;' rows='4' cols='4'>$type</option>";
                        }
                        }
                        ?>
                    </select>
                </div>
                <div class="col">
                    <label for="description"><b>Priority</b></label><br />
                    <select id="selectId" class="form-control" name="Priority" autocomplete="off">
                        <option>
                            <?php echo $Priority; ?>
                        </option>
                        <?php
                        $sql = "SELECT * FROM id18088723_users.Issue_Priority";
                            $res1 = mysqli_query($conn, $sql);
                        if($res1){
                            while($rows=mysqli_fetch_array($res1)){
                                $priority = $rows['priority'];
                                echo "<option style='text-align: center;' rows='4' cols='4'>$priority</option>";
                            }
                        }
                    ?>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="issue"><b>Team</b></label><br />
                    <select id="selectId" class="form-control" name="ProductTeam" autocomplete="off">
                        <option>
                            <?php echo $ProductTeam;?>
                        </option>
                        <?php
                        $sql = "SELECT * FROM id18088723_users.Product_Team";
                            $res1 = mysqli_query($conn, $sql);
                        if($res1){
                            while($rows=mysqli_fetch_array($res1)){
                                $productteam = $rows['product_team'];
                                echo "<option style='text-align: center;' rows='4' cols='4'>$productteam</option>";
                            }
                        }
                    ?>
                    </select>
                </div>
                <div class="col">
                    <label for="issue"><b>Area</b></label><br />
                    <select id="selectId" class="form-control" id="mulList" name="Area" autocomplete="off">
                        <option id="empty">
                            <?php echo $Area; ?>
                        </option>
                        <?php
                        $sql = "SELECT * FROM id18088723_users.Area";
                            $res1 = mysqli_query($conn, $sql);
                        if($res1){
                            while($rows=mysqli_fetch_array($res1)){
                                $area = $rows['area'];
                                echo "<option style='text-align: center;' rows='4' cols='4'>$area</option>";
                            }
                        }
                    ?>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="issue"><b>Assignee</b></label><br />
                    <select id="selectId" type="search" class="form-control" name="Owner">
                        <option>
                            <?php echo $Owner; ?>
                        </option>
                        <?php
                        $sql = "SELECT * FROM id18088723_users.usersdata";
                            $res1 = mysqli_query($conn, $sql);
                        if($res1){
                            while($rows=mysqli_fetch_array($res1)){
                                $CustomerName = $rows['name'];
                                echo "<option style='text-align: center;' rows='4' cols='4'>$CustomerName</option>";
                            }
                        }
                    ?>
                    </select>
                </div>
                <div class="col">
                    <div class="column right">
                        <label for="issue"><b>Status</b></label><br />
                        <select id="selectId" class="form-control" name="Status" autocomplete="off">
                            <option>
                                <?php echo $Status; ?>
                            </option>
                            <?php
                        $sql = "SELECT * FROM id18088723_users.Status";
                            $res1 = mysqli_query($conn, $sql);
                        if($res1){
                            while($rows=mysqli_fetch_array($res1)){
                                $status = $rows['status'];
                                echo "<option style='text-align: center;' rows='4' cols='4'>$status</option>";
                            }
                        }
                    ?>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <label for="issue"><b>Created Date</b></label><br />
                        <input readonly type="text" class="form-control" name="CreatedDate" autocomplete="off"
                            value=<?php echo $CreatedDate; ?>>
                    </div>
                    <div class="col">
                        <label for="issue"><b>Reported By</b></label><br />
                        <select id="selectid" type="search" class="form-control" name="ReportedBy">
                            <option>
                                <?php echo $ReportedBy; ?>
                            </option>
                            <?php
                            $sql = "SELECT * FROM id18088723_users.usersdata";
                                $res1 = mysqli_query($conn, $sql);
                            if($res1){
                                while($rows=mysqli_fetch_array($res1)){
                                    $CustomerName = $rows['name'];
                                    echo "<option style='text-align: center;' rows='4' cols='4'>$CustomerName</option>";
                                }
                            }
                        ?>
                        </select>

                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <label disabled for="issue"><b>Modified Date</b></label><br />
                        <input disabled type="text" class="form-control" name="ModifiedDate" autocomplete="off"
                            value=<?php echo $ModifiedDate; ?>>
                    </div>
                    <div class="col">
                        <label hidden for="issue"><b>Modified By</b></label><br />
                        <select id="selectId" hidden class="form-control" name="ModifiedBy" autocomplete="off">
                            <option style="text-align: center;">None</option>
                            <?php
                            $sql = "SELECT * FROM id18088723_users.usersdata";
                                $res1 = mysqli_query($conn, $sql);
                            if($res1){
                                while($rows=mysqli_fetch_array($res1)){
                                    $CustomerName = $rows['name'];
                                    echo "<option style='text-align: center;' rows='4' cols='4'>$CustomerName</option>";
                                }
                            }
                        ?>
                        </select>
                    </div>
                </div>
        </form>
    </div>
    <hr />

    <div class="container">
        <form id="commentForm">
            <h1 class="text-danger">Comments</h1>
            <?php
                    include 'connect.php';
                    $sql = "SELECT * FROM id18088723_users.comments WHERE issue_id = $Issueid ORDER BY id DESC";
                    $result = mysqli_query($conn, $sql);
                    
                    if($result){
                        
                        while($row=mysqli_fetch_assoc($result)){
                            $username = $row['username'];
                            $date = $row['posteddate'];
                            $comment = $row['comment'];
                            
                            echo '<div class="card" style="margin-bottom:5px; margin-top:2px;">
                                <div class="card-header">
                                    <p>Posetd
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
    
                ?>
        </form>
    </div>
</body>
<script>
    var optionValues = [];
    $('#selectId option').each(function () {
        if ($.inArray(this.value, optionValues) > -1) {
            $(this).remove()
        } else {
            optionValues.push(this.value);
        }
    });
</script>

</html>
<?php }else{
	header("Location: ../../login_page.php");
} ?>