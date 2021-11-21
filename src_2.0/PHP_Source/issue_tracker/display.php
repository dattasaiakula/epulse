<?php 
   session_start();
   include "connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   
   ?>

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
    <div class="row" style="text-align:center;">
        <label style="text-align:center;width: 215px;font-size:16px;padding-top:3px;margin-left:120px;">Customer</label>
        <select style="text-align:center;width: 256px;" name="customer" onchange="selectCustomerName()" id="customer"
            class="form-control" placeholder="Enter Customer Name">
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
        <!--<div id="customerList" style="width: 715px;height:10px;"></div>-->
        <div class="col" style="width: 215px;margin-left: 300px;margin-bottom: 0px;">
            <!-- <input id="myInput" name="search" onkeyup="filterTable()" type="text"
                style="border-radius: 10px; width:168px; height:31px" placeholder="Search Here"> -->
            <a class="btn btn-primary" style="margin-left: 25px;border-bottom-width: 0px;" href="user.php"
                class="text-light">Add Issue</a>
        </div>
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
                    <thead>
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
                    <!-- <tbody id="dbData">
                        <?php
                      
                            $sql = "Select * from users.issue_tracker_tb";
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
                                <option class="status" id="status" style="background-color: aqua;">
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
                                        href="update.php?updatedid/editind_recordId=<?=$IssueId?>"></a>
                                </button>
                                <button>
                                    <a class=" col glyphicon glyphicon-list-alt"
                                        href="comments_page.php?commenting_recordId=<?=$IssueId?>"></a>
                                </button>
                            </td>


                        </tr>
                        <?php
                                    }
                            } 
                        ?>
                    </tbody> -->
                </table>
            </div>
            <!-- <div class="pagination-container">
                <nav style="margin-left: 900px;width: 500px;">
                    <ul class="pagination "
                        style="width: 312px;height: 26px;margin-top: 0px;padding-top: 0px;padding-bottom: 0px; ">

                        <li data-page="prev">
                            <span>
                                Previous <span class="sr-only">(current)
                                </span></span>
                        </li>
                        <li data-page="next" id="prev">
                            <span> Next <span class="sr-only">(current)</span></span>
                        </li>
                    </ul>
                </nav>
            </div> -->
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
        $("#myTable").DataTable();
    });

    function filterTable(event) {
        var filter = event.target.value.toUpperCase();
        var rows = document.querySelector("#myTable tbody").rows;

        for (var i = 0; i < rows.length; i++) {
            var firstCol = rows[i].cells[0].textContent.toUpperCase();
            var secondCol = rows[i].cells[1].textContent.toUpperCase();
            var thirdCol = rows[i].cells[2].textContent.toUpperCase();
            var forthCol = rows[i].cells[3].textContent.toUpperCase();
            var fifthCol = rows[i].cells[4].textContent.toUpperCase();
            var sixthCol = rows[i].cells[5].textContent.toUpperCase();
            var seventhCol = rows[i].cells[6].textContent.toUpperCase();
            var eighthCol = rows[i].cells[7].textContent.toUpperCase();
            var ninthCol = rows[i].cells[8].textContent.toUpperCase();
            var tenthCol = rows[i].cells[9].textContent.toUpperCase();
            var eleventhCol = rows[i].cells[10].textContent.toUpperCase();
            var twelfthCol = rows[i].cells[11].textContent.toUpperCase();
            var thirteenthCol = rows[i].cells[12].textContent.toUpperCase();


            if (firstCol.indexOf(filter) > -1 || secondCol.indexOf(filter) > -1 || thirdCol.indexOf(filter) > -1 || forthCol.indexOf(filter) > -1
                || fifthCol.indexOf(filter) > -1 || sixthCol.indexOf(filter) > -1 || seventhCol.indexOf(filter) > -1 || eighthCol.indexOf(filter) > -1
                || ninthCol.indexOf(filter) > -1 || tenthCol.indexOf(filter) > -1 || eleventhCol.indexOf(filter) > -1 || twelfthCol.indexOf(filter) > -1
                || thirteenthCol.indexOf(filter) > -1) {
                rows[i].style.display = "";
            } else {
                rows[i].style.display = "none";
            }
        }
    }
    document.querySelector('#myInput').addEventListener('keyup', filterTable, false);




    getPagination('#myTable');
    function getPagination(table) {
        var lastPage = 1;

        $('#maxRows')
            .on('change', function (evt) {
                //$('.paginationprev').html('');                        // reset pagination

                lastPage = 1;
                $('.pagination')
                    .find('li')
                    .slice(1, -1)
                    .remove();
                var trnum = 0; // reset tr counter
                var maxRows = parseInt($(this).val()); // get Max Rows from select option

                if (maxRows == 5000) {
                    $('.pagination').hide();
                } else {
                    $('.pagination').show();
                }

                var totalRows = $(table + ' tbody tr').length; // numbers of rows
                $(table + ' tr:gt(0)').each(function () {
                    // each TR in  table and not the header
                    trnum++; // Start Counter
                    if (trnum > maxRows) {
                        // if tr number gt maxRows

                        $(this).hide(); // fade it out
                    }
                    if (trnum <= maxRows) {
                        $(this).show();
                    } // else fade in Important in case if it ..
                }); //  was fade out to fade it in
                if (totalRows > maxRows) {
                    // if tr total rows gt max rows option
                    var pagenum = Math.ceil(totalRows / maxRows); // ceil total(rows/maxrows) to get ..
                    //  numbers of pages
                    for (var i = 1; i <= pagenum;) {
                        // for each page append pagination li
                        $('.pagination #prev')
                            .before(
                                '<li data-page="' +
                                i +
                                '">\
                                        <span>' +
                                i++ +
                                '<span class="sr-only">(current)</span></span>\
                                      </li>'
                            )
                            .show();
                    } // end for i
                } // end if row count > max rows
                $('.pagination [data-page="1"]').addClass('active'); // add active class to the first li
                $('.pagination li').on('click', function (evt) {
                    // on click each page
                    evt.stopImmediatePropagation();
                    evt.preventDefault();
                    var pageNum = $(this).attr('data-page'); // get it's number

                    var maxRows = parseInt($('#maxRows').val()); // get Max Rows from select option

                    if (pageNum == 'prev') {
                        if (lastPage == 1) {
                            return;
                        }
                        pageNum = --lastPage;
                    }
                    if (pageNum == 'next') {
                        if (lastPage == $('.pagination li').length - 2) {
                            return;
                        }
                        pageNum = ++lastPage;
                    }

                    lastPage = pageNum;
                    var trIndex = 0; // reset tr counter
                    $('.pagination li').removeClass('active'); // remove active class from all li
                    $('.pagination [data-page="' + lastPage + '"]').addClass('active'); // add active class to the clicked
                    // $(this).addClass('active');                  // add active class to the clicked
                    limitPagging();
                    $(table + ' tr:gt(0)').each(function () {
                        // each tr in table not the header
                        trIndex++; // tr index counter
                        // if tr index gt maxRows*pageNum or lt maxRows*pageNum-maxRows fade if out
                        if (
                            trIndex > maxRows * pageNum ||
                            trIndex <= maxRows * pageNum - maxRows
                        ) {
                            $(this).hide();
                        } else {
                            $(this).show();
                        } //else fade in
                    }); // end of for each tr in table
                }); // end of on click pagination list
                limitPagging();
            })
            .val(5)
            .change();

        // end of on select change

        // END OF PAGINATION
    }

    function limitPagging() {
        // alert($('.pagination li').length)

        if ($('.pagination li').length > 7) {
            if ($('.pagination li.active').attr('data-page') <= 3) {
                $('.pagination li:gt(5)').hide();
                $('.pagination li:lt(5)').show();
                $('.pagination [data-page="next"]').show();
            } if ($('.pagination li.active').attr('data-page') > 3) {
                $('.pagination li:gt(0)').hide();
                $('.pagination [data-page="next"]').show();
                for (let i = (parseInt($('.pagination li.active').attr('data-page')) - 2); i <= (parseInt($('.pagination li.active').attr('data-page')) + 2); i++) {
                    $('.pagination [data-page="' + i + '"]').show();

                }

            }
        }
    }

    $(function () {
        // Just to append id number for each row
        $('table tr:eq(0)').prepend('<th> S.No </th>');

        var id = 0;

        $('table tr:gt(0)').each(function () {
            id++;
            $(this).prepend('<td>' + id + '</td>');
        });
    });

</script>

</html>
<?php }else{
    header("Location: login_page.php");
} ?>