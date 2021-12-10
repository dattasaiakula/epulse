<?php
     include "../../connect.php";
     include "sidepanel.php";
?>
<?php
     $sql1 = "SELECT * FROM ".$_GET['customer_name']."_email_templates";
    $res = $conn->query($sql1);
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
            $percent = round($percent, 2);?>
<p style="text-align:center;">You have selected
    <?="$count"?> of
    <?="$total"?>(
    <?=$percent?>%)are selected for NXT UPGRADE!!!
</p>

<?php
    if(isset($_POST['subBut']))
{
    $sql1 = "SELECT * FROM ".$_GET['customer_name']."_email_templates";
    $res = mysqli_query($conn, $sql1);
    while($rows=mysqli_fetch_assoc($res)) 
    {
        $nam=$rows['templateId'];
        $nam = str_replace("-","_",$nam);
        $comm=$_POST[$nam];
        if(!(in_array($rows['templateId'], $_POST['Required']))){
                $sql="UPDATE ".$_GET['customer_name']."_email_templates SET Is_Required = 'No',comments='".$comm."' WHERE templateId = '".$rows['templateId']."'";
            }
        else{
                $sql="UPDATE ".$_GET['customer_name']."_email_templates SET Is_Required = 'Yes',comments='".$comm."' WHERE templateId = '".$rows['templateId']."'";
            }
        $res1=$conn->query($sql);
    }
}
?>

<!DOCTYPE html>
<html>
<style>
    body {
        background-color: rgb(130, 186, 231);
    }
</style>

<head>
    <title> Fetch Data From Database </title>
    <link rel="stylesheet" type="text/css" href="../css/toggle_button.css">
    <link rel="stylesheet" href="../css/table.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

</head>

<body>
    <form method="post" action="#">
        <table id="db_table" align="center" border="1px" style="width:600px; line-height:40px;">
            <tr>
                <th colspan="10" style="text-align:center;">
                    <h2> EMAIL TEMPLATES </h2>
                </th>
            </tr>
            <tr>
                <th> Name </th>

                <th> Select </th>
                <th> Comments </th>
                <th> Add Comments</th>
            </tr>
            <?php
                    $sql1 = "SELECT * FROM ".$_GET['customer_name']."_email_templates";
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
                            echo "<td>".$rows['title']."</td>";
                            
                            //$flg='';
                            $str = $rows['templateId'];
                            $str = str_replace("-","_",$str);
                            // echo $str;
                            echo "<td><label class='switch'><input type='checkbox' name = 'Required[]' value = '".$rows['templateId']."' $flg/><span class='slider round'></span>
                                    </label></td>";
                            echo "<td>".$rows['comments']."</td>";
                            echo "<td><input type='text' name = '".$str."' value='".$rows['comments']."'></td>";
                            echo "</tr>";
                            
                    }
                ?>
        </table>
        <?php
                echo '<button type = "submit" name="subBut" value="subBut"> Submit</button>'
            ?>
    </form>
</body>

</html>