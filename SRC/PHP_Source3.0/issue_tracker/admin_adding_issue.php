<?php 
   session_start();
   include "connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   
    $userId = $_SESSION['id'];
    $query1 = "SELECT * FROM users.usersdata WHERE id = '$userId'";
    $res = mysqli_query($conn, $query1);
    $row1 = mysqli_fetch_assoc($res);
    $userid = $row1['id'];
    $usercompany = $row1['company'];?>

<?php

    include 'connect.php';
    if(isset($_POST['submit']) ){

        
        


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
        $company = $_POST['company'];

        
        $pname = $_FILES['fileUpload']['name'];
        $tname = $_FILES['fileUpload']['tmp_name'];
        $img_ex = pathinfo($pname,PATHINFO_EXTENSION);
        $img_ex_lc = strtolower($img_ex);
        $allowed_exs = array("jpg","jpeg","png");
        if(in_array($img_ex_lc, $allowed_exs)){
            $new_img_name = uniqid("IMG-",true).'.'.$img_ex_lc;
            $upload_dir = 'issue_tracker/uploadedData/'.$new_img_name;
            move_uploaded_file($tname, $upload_dir);
        

$sql = "INSERT INTO users.issue_tracker_tb(IssueName,IssueType,IssueDescription,ProductTeam,Area,Priority,Owner,Status,CreatedDate,user_company,ReportedBy,Attachements)
VALUES('$IssueName','$IssueType','$IssueDescription','$ProductTeam','$Area','$Priority','$Owner','$Status',Now(),'$company','$ReportedBy','$new_img_name')";
$result = mysqli_query($conn, $sql);
if($result){
//echo "Inserted Successfully";
header('location: user_issues.php');
}else{
die(mysqli_error($conn));
}
        }
}
?>



<!doctype html>
<html lang="en">
<style>
    .mode-one {
        background-color: green;
    }

    .mode-two {
        background-color: rgb(149, 150, 83);
    }

    .mode-three {
        background-color: rgb(120, 184, 120);
    }

    .mode-four {
        background-color: red;
    }
</style>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <div class="container" style="text-align: end; font-size:30px">
        <i class='bx bxs-user-pin'>
            <?=$_SESSION['name']?>
        </i>
        <a href=" /loginpage/logout.php" class="btn btn-secondary btn-sm" style="margin-left: 10px;">Logout</a>
    </div>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title>Issue Tracker</title>
</head>

<body class="p-3 mb-2 bg-light text-dark">
    <div class="container my-4 ">
        <form method="post" enctype="multipart/from-data">
            <div class="row">
                <div class="col">
                    <lable><b>Name</b></lable>
                    <input required type="text" class="form-control " placeholder="Issue Name" name="IssueName"
                        autocomplete="off">
                </div>
                <div class="col">
                    <label for="description"><b>Description</b></label><br />
                    <textarea class="form-control" placeholder="Enter Description" name="IssueDescription" rows="4"
                        cols="50"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="issue"><b>Type</b></label><br />
                    <select required class="form-control" name="IssueType" autocomplete="off"
                        style="text-align: center;">
                        <option>Select Type</option>
                        <?php
                        $sql = "SELECT * FROM users.Issue_Type";
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
                    <select required class="form-control" name="Priority" autocomplete="off"
                        style="text-align: center;">
                        <option>Select Priority</option>
                        <?php
                        $sql = "SELECT * FROM users.Issue_Priority";
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
                    <select required class="form-control" name="ProductTeam" autocomplete="off"
                        style="text-align: center;">
                        <option>Select Team</option>
                        <?php
                        $sql = "SELECT * FROM users.Product_Team";
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
                    <select required class="form-control" id="mulList" name="Area" autocomplete="off"
                        style="text-align: center;">
                        <option id="empty">Select Area</option>
                        <?php
                        $sql = "SELECT * FROM users.Area";
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
                    <select type="text" name="Owner" id="Owner" class="form-control">
                        <?php
                                $query1 = "SELECT * FROM users.usersdata ";
                                $res = mysqli_query($conn, $query1);
                                if($res){
                                    while($rows=mysqli_fetch_array($res)){
                                        $userName = $rows['name'];
                                        echo "<option style='text-align: center;' rows='4' cols='4'>$userName</option>";
                                    }
                                }
                            ?>
                    </select>

                </div>
                <div class="col">
                    <div class="column right">
                        <label for="issue"><b>Status</b></label><br />
                        <select required class="form-control" name="Status" autocomplete="off"
                            style="text-align: center;">
                            <?php
                        $sql = "SELECT * FROM users.Status";
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
                        <label disabled for="issue"><b>Created Date</b></label><br />
                        <input disabled type="text" class="form-control" name="CreatedDate" autocomplete="off" />
                    </div>
                    <div class="col">
                        <label for="issue"><b>Company</b></label><br />
                        <select type="text" class="form-control" name="company" id="company" autocomplete="off">
                            <?php
                                $query1 = "SELECT * FROM users.Company ";
                                $res = mysqli_query($conn, $query1);
                                if($res){
                                    while($rows=mysqli_fetch_array($res)){
                                        $CustomerName = $rows['Name'];
                                        echo "<option style='text-align: center;' rows='4' cols='4'>$CustomerName</option>";
                                    }
                                }
                            ?>
                        </select>
                    </div>

                </div>
                <div class="row">
                    <div class="col">
                        <label for="issue"><b>Reported By</b></label><br />
                        <select type="text" class="form-control" name="ReportedBy" id="ReportedBy" autocomplete="off">
                            <?php
                            $currentuserid = $_SESSION['id'];
                                $query1 = "SELECT * FROM users.usersdata WHERE id = $currentuserid ";
                                $res = mysqli_query($conn, $query1);
                                if($res){
                                    while($rows=mysqli_fetch_array($res)){
                                        $CustomerName = $rows['name'];
                                        echo "<option style='text-align: center;' rows='4' cols='4'>$CustomerName</option>";
                                    }
                                }
                            ?>
                        </select>
                    </div>
                    <div class="col">
                        <label  for="issue"><b>Attachments</b></label><br />
                        <input  type="file" class="form-control" name="fileUpload"  />
                    </div>
                </div>

                <button id="myBtn" type="submit" class="btn btn-primary my-3" name="submit"
                    style="margin-left: 5px; margin-right: 10px; width:1307px;">Submit</button>
        </form>
    </div>

</body>

</html>
<?php }else{
	header("Location: login_page.php");
} ?>