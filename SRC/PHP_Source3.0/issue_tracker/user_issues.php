<?php 
   session_start();
   include "connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   
    $userId = $_SESSION['id'];
    $query = "SELECT * FROM users.usersdata WHERE id = $userId";
     $result = mysqli_query($conn, $query);
     $row=mysqli_fetch_assoc($result);
     $usercompany = $row['company']; ?>

<!DOCTYPE html>
<html lang="en">
<style>
    table {
        width: 1300px;
    }

    .search_select_box {
        max-width: 200px;
        margin: 10px auto;
    }

    .search_select_box select {
        width: 100%;
    }

    .search_select_box button {
        background-color: azure !important;
    }

    div.dropdown-menu.show {
        top: 95px;
        height: 180px;
        overflow-y: auto;
    }

    div.li {
        background-color: rgb(216, 16, 16);
        cursor: pointer;
    }
</style>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatile" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Issue Tracker</title>

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
</head>

<body style="background: #E4E9F7;">
    <div class="container" style="text-align: end; font-size:30px">
        <i class='bx bxs-user-pin'>
            <?=$_SESSION['name']?>
        </i>
        <a href=" /loginpage/logout.php" class="btn btn-secondary btn-sm" style="margin-left: 10px;">Logout</a>
    </div>
    <br />
    <!-- <div class="row" style="text-align:center;">
        <label style="text-align:center;width: 215px;font-size:16px;padding-top:3px;margin-left:120px;">Customer</label>
        <select style="text-align:center;width: 256px;" name="customer" id="customer"
            class="form-control" >
            <option>Select Customer</option>
            <?php
                $sql = "SELECT * FROM users.Company";
                    $res1 = mysqli_query($conn, $sql);
                if($res1){
                    while($rows=mysqli_fetch_array($res1)){
                        $CustomerName = $rows['Name'];?>
            <option style='text-align: center;' rows='4' cols='4' value="<?php echo $CustomerName ?>">
                <?php echo $CustomerName ?>
            </option>
            <?php }
                }
            ?>
        </select>
        <div id="customerList" style="width: 715px;height:10px;"></div>
        
    </div> -->
    <div class="col" style="width: 215px;margin-left: 300px;margin-bottom: 0px;">
            <!-- <input id="myInput" name="search" onkeyup="filterTable()" type="text"
                style="border-radius: 10px; width:168px; height:31px" placeholder="Search Here"> -->
            <a class="btn btn-primary" style="margin-left: 25px;border-bottom-width: 0px;" href="user_adding_issue.php"
                class="text-light">Add Issue</a>
        </div>
    <hr style="width: 1375px;" />
    <form>
        <div class="main">

            <!-- <div class="row" style="margin-left: 10px;">
                <label style="width: 215px;font-size:16px;padding-top:3px;">Select Number Of Rows:</label>
                <select class="form-control" name="state" id="maxRows" style="width: 56px;text-align:center;">
                    <option value="5">5</option>
                    <option value="10">10</option>
                    <option value="20">20</option>
                    <option value="50">50</option>
                    <option value="75">70</option>
                    <option value="100">100</option>
                </select>

            </div> -->


            <div class="tableContainer">
                <table id="myTable" class="table table-striped " style="margin-left: 10px;">
                    <thead style="background: rgb(79, 176, 201);">
                        <tr style="width: 1500px;">
                            <th scope="col">IssueId</th>
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
                    <tbody id="dbData">
                        <?php
                      
                            $sql = "Select * from users.issue_tracker_tb WHERE user_company = '$usercompany'";
                            $result = mysqli_query($conn, $sql);
                            if($result){
                                    while($row=mysqli_fetch_assoc($result)){
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
                            <td scope="row"> <a href="issueId_View.php?edit_record_id=<?=$IssueId?>">
                                    <?=$IssueId?>
                                </a> </td>
                            <td scope="row"> <a href="issueId_View.php?edit_record_id=<?=$IssueId?>">
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
                                <option >
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

                            <td style="width: 120px;">
                                <button>
                                    <a class=" col glyphicon glyphicon-pencil" value="Edit"
                                        href="user_issue_update.php?updatedid/editind_recordId=<?=$IssueId?>"></a>
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
    //Select From Dropdown List and Dispaly MYSQL Data.
    $(document).ready(function () {
        $("#customer").on('change', function () {
            var value = $(this).val();
            //alert(value);
            $.ajax({
                url: "customerRelatedData.php",
                type: "POST",
                data: 'request=' + value,
                beforeSend: function () {
                    $(".tableContainer").html("<span>working......</span>");
                },
                success: function (data) {
                    $(".tableContainer").html(data);
                }
            });
        });
    });

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
    header("Location: login_page.php");
} ?>