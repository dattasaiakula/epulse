<?php
    include '../../connect.php';
    if(isset($_POST['request'])){
        $request = $_POST['request'];
        $query = "SELECT * FROM id18088723_users.issue_tracker_tb WHERE user_company = '$request' ";
        $result = mysqli_query($conn, $query);
        $count = mysqli_num_rows($result);
?>
<table id="myTable" class="table table-striped " style="margin-left: 10px;">
    <?php
            if($count){
                ?>
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
        <?php
            }else{
                echo "
        <p style='text-align:center;margin-top:200px;font-size:26px;'>Currently You Don't have any Issues....&#128512;</p>
        <?php";
            }
        ?>
    </thead>
    <tbody>
        <?php
                 $i = 0;
                while($row = mysqli_fetch_assoc($result)){
                    $i ++;
            ?>
        <tr>
            <td scope="row">
                <?php echo $i ?>
            </td>
            <td scope="row"> <a href="gainsight_issueId_View.php?edit_record_id=<?php echo $row['IssueId'] ?>">
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
            <td value="<?php echo $row['Status'] ?>" id="status">
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
            <td style="width: 120px;text-align:center;">
                <button
                    style="padding-left: 0px;padding-right: 0px;padding-bottom: 0px;padding-top: 0px;border-top-width: 0px;border-right-width: 0px;border-bottom-width: 0px;border-left-width: 0px;width: 40px;">
                    <a class="btn btn-primary glyphicon glyphicon-pencil" value="Edit"
                        href="gainsight_admin_issue_update.php?updatedid/editind_recordId=<?php echo $row['IssueId'] ?>"></a>
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
        $("#myTable").DataTable({
            info: false,
            footer: true,
        });
    });


</script>
<?php
    }
    ?>