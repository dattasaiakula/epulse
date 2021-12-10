<?php 
   session_start();
   include "../../connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   
    $userId = $_SESSION['id'];
    $query = "SELECT * FROM id18088723_users.usersdata WHERE id = $userId";
     $result = mysqli_query($conn, $query);
     $row=mysqli_fetch_assoc($result);
     $usercompany = $row['company']; ?>

<!DOCTYPE html>
<html lang="en">
<style>
    /* Google Font Link */
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

    table {
        width: 1370px;
    }

    .topnav {
        overflow: hidden;
        width: 1459px;
        position: fixed;
        background-color: rgb(3, 231, 136);

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
        background-color: #418f99a2;
        color: black;
    }

    .topnav a.active {
        background-color: #04AA6D;
        color: white;
    }
</style>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatile" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Issue Tracker</title>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <!-- DataTable Function -->
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <link href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" rel="stylesheet">


    <div class="topnav">
    <a class="btn " href="../../homepage.php">Home</a>
        <a style="margin-left:1000px;">
            <i class='bx bxs-user-pin'>
                <?=$_SESSION['name']?>
            </i>
        </a>
        <a href=" ../../index.php" class="btn" style="margin-left: 10px;">Logout</a>
    </div>
</head>

<body>
    <a class="btn btn-primary" href="customer_admin_adding_issue.php" class="text-light" style="margin-top: 70px;">Add Issue</a>
    <hr style="width: 1375px;margin-top:5px;" />
    <form style="width:1380px;">
        <div class="main">
            <div class="tableContainer">
                <table id="myTable" class="table table-striped " style="margin-left: 10px;">
                    <thead style="background: rgb(79, 176, 201);">
                        <tr style="width: 1500px;">
                            <th scope="col">S.NO</th>
                            <th scope="col">IssueName</th>
                            <th scope="col">IssueType</th>
                            <th scope="col">IssueDescription</th>
                            <th scope="col">Team</th>
                            <th scope="col">Area</th>
                            <th scope="col">Priority</th>
                            <th scope="col">Assignee</th>
                            <th scope="col">Status</th>
                            <th scope="col">CreatedDate</th>
                            <th scope="col">ReportedBy</th>
                            <th scope="col">ModifiedDate</th>
                            <th scope="col">Actions</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php
                      
                            $sql = "Select * from id18088723_users.issue_tracker_tb WHERE user_company = '$usercompany'";
                            $result = mysqli_query($conn, $sql);
                            $i=0;
                            if($result){
                                    while($row=mysqli_fetch_assoc($result)){
                                        $i++;
                                        $IssueId = $row['IssueId'];
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
                                        $ModifiedDate = $row['ModifiedDate'];?>

                        <tr>
                            <td scope="row"> 
                                    <?=$i?> </td>
                            <td scope="row"> <a href="customer_issueId_View.php?edit_record_id=<?=$IssueId?>">
                                    <?=$IssueName?>
                                </a> </td>
                            <td scope="row">
                                <?=$IssueType?>
                            </td>
                            <td scope="row">
                                <?=$IssueDescription?>
                            </td>
                            <td scope="row">
                                <?=$ProductTeam?>
                            </td>
                            <td scope="row">
                                <?=$Area?>
                            </td>
                            <td scope="row">
                                <?=$Priority?>
                            </td>
                            <td scope="row">
                                <?=$Owner?>
                            </td>
                            <td scope="row">
                                <option>
                                    <?=$Status?>
                                </option>
                            </td>
                            <td scope="row">
                                <?=$CreatedDate?>
                            </td>
                            <td scope="row">
                                <?=$ReportedBy?>
                            </td>
                            <td scope="row">
                                <?=$ModifiedDate?>
                            </td>

                            <td style="width: 120px;text-align:center;">
                                <button
                                    style="padding-left: 0px;padding-right: 0px;padding-bottom: 0px;padding-top: 0px;border-top-width: 0px;border-right-width: 0px;border-bottom-width: 0px;border-left-width: 0px;width: 40px;">
                                    <a class="btn btn-primary glyphicon glyphicon-pencil" value="Edit"
                                        href="customer_admin_issue_update.php?updatedid/editind_recordId=<?php echo $row['IssueId'] ?>"></a>
                                </button>
                                <!-- <button>
                                    <a class=" col glyphicon glyphicon-list-alt"
                                        href="comments_page.php?commenting_recordId=<?=$IssueId?>"></a>
                                </button> -->
                            </td>


                        </tr>
                        <?php
                                    }
                            } 
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</body>


<script>
    //Table pagination and sorting ...
    $(document).ready(function () {
        $("#myTable").DataTable({
            info: false,
            footer: true,
        });
    });
</script>

</html>
<?php }else{
    header("Location: ../../login_page.php");
} ?>