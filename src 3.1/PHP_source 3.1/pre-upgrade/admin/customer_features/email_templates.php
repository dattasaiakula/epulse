<?php
   session_start();
include "../../../connect.php";
include "sidepanel.php";
//$customer_name = "DELOITTE";
if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   
    $userId = $_SESSION['id'];
    $query1 = "SELECT * FROM id18088723_users.usersdata WHERE id = '$userId'";
    $res = mysqli_query($conn, $query1);
    $row1 = mysqli_fetch_assoc($res);
    $userid = $row1['id'];
    $customer_name = $_GET['customer_name'];
    
?>
<?php
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
            $percent = ($count/$total)*100;?>
            <p style="text-align:center;"><?=$customer_name?> has selected <?=$count?> of <?=$total?>(<?=$percent?>)are selected for NXT UPGRADE!!!</p>
            
            
<!DOCTYPE html> 

<html> 
	<head> 
		<title> Fetch Data From Database </title> 
        <link rel="stylesheet" type="text/css"  href="../css/toggle_button.css">
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="../../css/sidepanel_css.css">
        <link rel="stylesheet" href="../../css/table.css">
        
       
    </head> 
    
	<body style="margin-left:0px;"> 
         <form method="post" action="#">
            <table id = "db_table" align="center" border="1px" style="width:600px; line-height:40px;"> 
                <tr> 
                    <th colspan="10" style = "text-align:center;"><h2>Testing Records</h2></th> 
                </tr> 
                <tr>
                    <th> Template Title </th>
                    <th> Is Required? </th> 
                    <th> Comments </th>  
                </tr>
                <?php
                    $sql1 = "SELECT * FROM ".$_GET['customer_name']."_email_templates";
                    //echo $sql1;
                    $res = mysqli_query($conn, $sql1);
                    while($rows=mysqli_fetch_assoc($res)) 
                    { 
                        echo "<tr>";
                            echo "<td>".$rows['title']."</td>";
                            echo "<td>".$rows['Is_Required']."</td>";
                            echo "<td>".$rows['comments']."</td>";
                            echo "</tr>";
                    }
            ?>
            </table>
	</body> 
</html>
<?php }else{
    header("Location: ../../../login_page.php");
} ?>