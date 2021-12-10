<?php
    include 'connect.php';
    if(isset($_POST['request'])){
        $request = $_POST['request'];
        $query = "SELECT * FROM users.issue_tracker_tb WHERE user_company = '$request' ";
        $result = mysqli_query($conn, $query);
        $count = mysqli_num_rows($result);
?>
<table id="myTable" class="table table-striped " style="margin-left: 10px;">
    <?php
            if($count){
                ?>
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
        <?php
            }else{
                echo "
        <p style='text-align:center;margin-top:200px;font-size:26px;'>Currently You Don't have Issues....&#128512;</p>
        <?php";
            }
        ?>
    </thead>
    <tbody>
        <?php
                while($row = mysqli_fetch_assoc($result)){
            ?>
        <tr>
            <td scope="row"> <a href="issueId_View.php?edit_record_id=<?php echo $row['IssueId'] ?>">
                    <?php echo $row['IssueId'] ?>
                </a> </td>
            <td scope="row"> <a href="issueId_View.php?edit_record_id=<?php echo $row['IssueId'] ?>">
                    <?php echo $row['IssueName'] ?>
                </a> </td>
            <td>
                <?php echo $row['IssueType'] ?>
            </td>
            <td>
                <?php echo $row['IssueDescription'] ?>
            </td>
            <td>
                <?php echo $row['ProductTeam'] ?>
            </td>
            <td>
                <?php echo $row['Area'] ?>
            </td>
            <td>
                <?php echo $row['Priority'] ?>
            </td>
            <td>
                <?php echo $row['Owner'] ?>
            </td>
            <td>
                <?php echo $row['Status'] ?>
            </td>
            <td>
                <?php echo $row['CreatedDate'] ?>
            </td>
            <td>
                <?php echo $row['ReportedBy'] ?>
            </td>
            <td>
                <?php echo $row['ModifiedDate'] ?>
            </td>
            <td style="width: 120px;">
                <button>
                    <a class=" col glyphicon glyphicon-pencil" value="Edit"
                        href="update.php?updatedid/editind_recordId=<?php echo $row['IssueId'] ?>"></a>
                </button>
                <button>
                    <a class=" col glyphicon glyphicon-list-alt"
                        href="comments_page.php?commenting_recordId=<?php echo $row['IssueId'] ?>"></a>
                </button>
            </td>
        </tr>
        <?php
    }
    ?>
    </tbody>
</table>
<script>
    $(document).ready(function () {
        $("#myTable").DataTable();
    });
</script>
<?php
    }
    ?>