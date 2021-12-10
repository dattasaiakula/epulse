<?php
    include "../../connect.php";
    include "sidepanel.php";
?>
<?php
    if(isset($_POST['subBut']))
{
    $sql1 = "SELECT * FROM ".$_GET['customer_name']."_data_designer";
    $res = mysqli_query($conn, $sql1);
    while($rows=mysqli_fetch_assoc($res)) 
    {
        $nam=$rows['Design_ID'];
        $nam = str_replace("-","_",$nam);
        $comm=$_POST[$nam];
        if(!(in_array($rows['Design_ID'], $_POST['Required']))){
                $sql="UPDATE ".$_GET['customer_name']."_data_designer SET Is_Required = 'No',comments='".$comm."' WHERE Design_ID = '".$rows['Design_ID']."'";
            }
        else{
                $sql="UPDATE ".$_GET['customer_name']."_data_designer SET Is_Required = 'Yes',comments='".$comm."' WHERE Design_ID = '".$rows['Design_ID']."'";
            }
        $res1=$conn->query($sql);
    }
}
?>
<?php
        $sql1 = "SELECT * FROM ".$_GET['customer_name']."_data_designer";
        $res = $conn->query($sql1);
        //echo $sql1;
        $count = 0;
        $total = 0;
       
            while($rows = mysqli_fetch_assoc($res))
            {
                if($rows['Is_Required'] == "Yes")
                    {
                        $count++;
                    }
                $total++;
                
            }
            $percent = ($count/$total)*100;
            $percent = round($percent, 2);
    ?>
<p style="text-align:center;">You have selected
    <?="$count"?> of
    <?="$total"?>(
    <?=$percent?>%)are selected for NXT UPGRADE!!!
</p>



<!DOCTYPE html>
<html>

<head>
    <title> Fetch Data From Database </title>
    <link rel="stylesheet" type="text/css" href="../css/toggle_button.css">
    <link rel="stylesheet" href="../css/table.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
    body {
        background-color: #ddd;
    }
</style>

<body>
    <form method="post" action="#">
        <table id="db_table" align="center" border="1px" style="width:600px; line-height:40px;">
            <tr>
                <th colspan="10" style="text-align:center;">
                    <h2> DATA DESIGNER RECORDS </h2>
                </th>
            </tr>
            <tr>
                <th> Name </th>
                <th> Select </th>
                <th> Comments </th>
                <th> Add Comments</th>
            </tr>
            <?php
                    $sql1 = "SELECT * FROM ".$_GET['customer_name']."_data_designer";
                    //echo $sql1;
                    $res = mysqli_query($conn, $sql1);
                    while($rows=mysqli_fetch_assoc($res)) 
                    { 
                        $flg='';
                        if($rows['Is_Required']=='Yes')
                        {

                            $flg="checked";
                            echo "<tr class = 'green'>";
                        }
                        else
                        {
                            echo "<tr>";
                        }
                            echo "<td>".$rows['Design_Name']."</td>";
                            $str = $rows['Design_ID'];
                            $str = str_replace("-","_",$str);
                            // echo $str;
                           
                            echo "<td><label class='switch'><input type='checkbox' name = 'Required[]' value = '".$rows['Design_ID']."' $flg/><span class='slider round'></span>
                                    </label></td>";
                            echo "<td>".$rows['comments']."</td>";
                            echo "<td><input type='text' name = '".$str."' value='".$rows['comments']."'></td>";
                            echo "</tr>";
                            
                    }
                ?>
        </table>
        <?php
                echo '<button type = "submit" name="subBut" value="subBut" class=" btn-success"> Submit</button>'
            ?>
    </form>
</body>

</html>