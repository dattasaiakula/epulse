<?php
session_start();
    include "../../connect.php";
    include "sidepanel.php";
?>
<?php
     $sql1 = "SELECT * FROM ".$_GET['customer_name']."_success_plan_templates";
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
        <p style="text-align:center;">You have selected <?="$count"?> of <?="$total"?>(<?=$percent?>%)are selected for NXT UPGRADE!!!</p>

<?php
    if(isset($_POST['subBut']))
{
    $sql1 = "SELECT * FROM ".$_GET['customer_name']."_success_plan_templates";
    $res = mysqli_query($conn, $sql1);
    while($rows=mysqli_fetch_assoc($res)) 
    {
        $nam=$rows['name'];
        $nam = str_replace(" ","_",$nam);
        $comm=$_POST[$nam];
        if(!(in_array($rows['name'], $_POST['Required']))){
                $sql="UPDATE ".$_GET['customer_name']."_success_plan_templates SET Is_Required = 'No',comments='".$comm."' WHERE name = '".$rows['name']."'";
            }
        else{
                $sql="UPDATE ".$_GET['customer_name']."_success_plan_templates SET Is_Required = 'Yes',comments='".$comm."' WHERE name = '".$rows['name']."'";
            }
        $res1=$conn->query($sql);
    }
}
?>

<!DOCTYPE html> 

<html> 
	<head> 
		<title> Fetch Data From Database </title> 
        <link rel="stylesheet" type="text/css"  href="../css/toggle_button.css">
        <link rel="stylesheet" href="../css/table.css">
        
    </head> 
	<body> 
        <form method="post" action="#">
            <table id = "db_table" align="center" border="1px" style="width:600px; line-height:40px;"> 
                <tr> 
                    <th colspan="10" style = "text-align:center;"><h2> SUCCESS PLAN TEMPLATES </h2></th> 
                </tr> 
                <tr>
                    <th> Name </th>
                   
                    <th> Select </th>
                    <th> Comments </th>
					<th> Add Comments</th>     
                </tr>
                <?php
                    $sql1 = "SELECT * FROM ".$_GET['customer_name']."_success_plan_templates";
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
                            echo "<td>".$rows['name']."</td>";
                            
                            $str = $rows['name'];
                            $str = str_replace(" ","_",$str);
                            
                            echo "<td><label class='switch'><input type='checkbox' name = 'Required[]' value = '".$rows['name']."' $flg/><span class='slider round'></span>
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