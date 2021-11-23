<?php 
   session_start();
   include "connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   ?>

<?php

    include 'connect.php';
    $Issueid = $_GET['edit_record_id'];
    $sql = "SELECT * FROM users.issue_tracker_tb WHERE IssueId=$Issueid";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
        $IssueName = $row['IssueName'];
        $IssueType = $row['IssueType'];
        $IssueDescription = $row['IssueDescription'];
        $ProductTeam = $row['ProductTeam'];
        $Area = $row['Area'];
        $Priority = $row['Priority'];
        $Owner = $row['Owner'];
        $Status = $row['Status'];
        $Comments = $row['Comments'];
        $CreatedDate = $row['CreatedDate'];
        $ReportedBy = $row['ReportedBy'];
        $ModifiedDate = $row['ModifiedDate'];
        $CreatedBy = $row['CreatedBy'];
        $ModifiedBy = $row['ModifiedBy'];
?>



<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Issue Tracker</title>
</head>

<body>
    <div class="container" style="text-align: end; font-size:30px">
        <i class='bx bxs-user-pin'>
            <?=$_SESSION['name']?>
        </i>
        <a href=" /loginpage/logout.php" class="btn btn-secondary btn-sm" style="margin-left: 10px;">Logout</a>
    </div>
    <div class="container my-4">
        <form method="post">
            <div class="row">
                <div class="col">
                    <lable><b>Issue Name</b></lable>
                    <input disabled type="text" class="form-control" placeholder="Issue Name" name="IssueName"
                        value=<?php echo $IssueName; ?>>
                </div>
                <div class="col">
                    <label for="description"><b>Issue Description</b></label><br />
                    <textarea disabled type="text" class="form-control" placeholder="Enter Description"
                        name="IssueDescription" ><?php echo $IssueDescription; ?></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="issue"><b>Issue Type</b></label><br />
                    <input disabled class="form-control" name="IssueType" value="<?php echo $IssueType; ?>">
                </div>
                <div class="col">
                    <label for="Priority"><b>Priority</b></label><br />
                    <input disabled class="form-control" name="Priority" value="<?php echo $Priority; ?>">
                    </input>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="issue"><b> Team</b></label><br />
                    <input disabled class="form-control" name="ProductTeam" value="<?php echo $ProductTeam; ?>">
                    </input>
                </div>
                <div class="col">
                    <label for="issue"><b>Area</b></label><br />
                    <input disabled class="form-control" id="mulList" name="Area" value="<?php echo $Area; ?>">
                    </input>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="issue"><b>Assignee</b></label><br />
                    <input disabled type="text" class="form-control" name="Owner" value="<?php echo $Owner; ?>">
                </div>
                <div class="col">
                    <div class="column right">
                        <label for="issue"><b>Status</b></label><br />
                        <input disabled class="form-control" name="Status" value="<?php echo $Status; ?>">
                        </input>
                    </div>
                </div>
                <div class="row">
                <div class="col">
                        <label for="issue"><b>Modified By</b></label><br />
                        <input disabled class="form-control" name="ModifiedBy" value="<?php echo $ModifiedBy; ?>">
                        </input>
                    </div>
                    <div class="col">
                        <label for="issue"><b>Modified Date</b></label><br />
                        <input disabled type="text" class="form-control" name="ModifiedDate" value="<?php echo
                            $ModifiedDate; ?>">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <label for="issue"><b>Created Date</b></label><br />
                        <input disabled type="text" class="form-control" name="CreatedDate" value="<?php echo
                            $CreatedDate; ?>">
                    </div>
                    <div class="col">
                        <label for="issue"><b>Reported By</b></label><br />
                        <input disabled type="text" class="form-control" name="ReportedBy" value="<?php echo $ReportedBy;
                            ?>">
                    </div>
                </div>
                
        </form>
    </div>
    <hr />

    <div class="container">
        <form action="comment_data_inserting_db.php" method="POST">
            <h2 class="text-danger">Comments</h2>
            <hr>
            
            <?php
                include 'connect.php';
                $sql = "SELECT * FROM users.comments WHERE issue_id = $Issueid ORDER BY id DESC";
                $result = mysqli_query($conn, $sql);
                
                if($result){
                    
                    while($row=mysqli_fetch_assoc($result)){
                        $username = $row['username'];
                        $date = $row['posteddate'];
                        $comment = $row['comment'];
                        
                        echo '<div class="card" style="margin-bottom:4px; margin-top:2px;">
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

</html>
<?php }else{
	header("Location: login_page.php");
} ?>