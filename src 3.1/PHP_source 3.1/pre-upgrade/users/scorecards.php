<?php
    include "../../connect.php";
    include "./sidepanel.php";
?>
<?php
        $sql3 = "SELECT * FROM ".$_GET['customer_name']."_scorecards";
        //echo $_GET['customer_name'];
        $res = $conn->query($sql3);
        $count = 0;
        $total = 0;
        if($res)
        {
             while($rows = mysqli_fetch_assoc($res))
            {
                if($rows['Is_Required'] == "Yes")
                    {
                        $count++;
                    }
                $total++;
                
            }
            $percent = ($count/$total)*100;
            echo '<p style="text-align:center;">You have selected '.$count.' of '.$total.'('.$percent.'% ) are selected for NXT UPGRADE!!!</p>';
        }
        else
        {
            echo " No records found! /n Please Contact Administrator for technical assistance";
        }
        
         
    ?>
<?php
    if(isset($_POST['subBut']))
    {
        $res2 = $conn->query($sql3);
        //echo "problem";
        while($rows1=mysqli_fetch_assoc($res2)) 
        {
            $nam=$rows1['id'];
            // echo "name";
            // echo $nam;
            $comm=$_POST[$nam];
            //echo $comm;
            if(!(in_array($rows1['id'], $_POST['Required']))){
                $sql="UPDATE ".$_GET['customer_name']."_scorecards SET Is_Required = 'No',comments='$comm' WHERE name = '".$rows1['name']."'";
            }else{
                $sql="UPDATE ".$_GET['customer_name']."_scorecards SET Is_Required = 'Yes',comments='$comm' WHERE name = '".$rows1['name']."'";
            }
            // echo $sql;
            $res3=$conn->query($sql);
        }
        // foreach($_sPOST['Comments'] as $comment)
        // {
        //     $sql = "UPDATE 'rules_engine' SET comments = '$comment' WHERE rule_id = $id->getElementById();
        // }
        // $sql = 'SELECT * FROM rules_engine';
        // $result = mysqli_query($con, $sql);

    }
?>

<!DOCTYPE html> 
<html> 
	<head> 
		<title> Fetch Data From Database </title> 
        <link rel="stylesheet" type="text/css"  href="../css/toggle_button.css">
        <link rel="stylesheet" href="../css/sidepanel_css.css">
        <link rel="stylesheet" href="../css/table.css">
    </head> 
	<body> 
        <form method="post" action="#">
            <table id = "db_table" align="center" border="1px" style="width:600px; line-height:40px;"> 
                <tr> 
                    <th colspan="10" style = "text-align:center;"><h2>SCORECARDS 2.0 </h2></th> 
                </tr> 
                <tr>
                    <th> name </th>
                    
                    <th> Select </th>
                    <th> Comments </th>
					<th> Add Comments</th>     
                </tr>
                <?php
                    $sql1 = "SELECT * FROM ".$_GET['customer_name']."_scorecards";
                    // echo $sql1;
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
                            
							
                            
                            echo "<td><label class='switch'><input type='checkbox' name = 'Required[]' value = '".$rows['id']."' $flg/><span class='slider round'></span>
                                    </label></td>";
                            echo "<td>".$rows['comments']."</td>";
                            echo "<td><input type='text' name = '".$rows['id']."' value='".$rows['comments']."'</td>";
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