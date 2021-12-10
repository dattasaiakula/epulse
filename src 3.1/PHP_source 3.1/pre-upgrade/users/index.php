<?php
   include "../../connect.php";
   // $customer_name = "datta";
    include "sidepanel.php";
?>

<!DOCTYPE html>
<style>
    h1 {
        text-align: center;
        color: rgb(165, 177, 74);
    }

    .center {
        display: block;
        margin-top: 3rem;
        margin-left: auto;
        margin-right: auto;
        width: 25%;
    }
</style>
<html>

<head>
    <title> Fetch Data From Database </title>
    <link rel="stylesheet" type="text/css" href="../css/toggle_button.css">
    <link rel="stylesheet" href="../css/table.css">
</head>

<body>
    <!-- <form method="post" action="#">
            <table id = "db_table" align="center" border="1px" style="width:600px; line-height:40px;"> 
                <tr> 
                    <th colspan="10" style = "text-align:center;"><h2>Ingest Jobs records</h2></th> 
                </tr> 
                <tr>
                    <th> name </th>
                    <th> Is Required? </th> 
                    <th> Select </th>
                    <th> Comments </th>
					<th> Add Comments</th>     
                </tr>
                <?php
                    // $sql1 = "SELECT * FROM ".$customer_name."_ingest_jobs";
                    // //echo $sql1;
                    // $res = mysqli_query($con, $sql1);
                    // while($rows=mysqli_fetch_assoc($res)) 
                    // { 
                    //     echo "<tr>";
                    //         echo "<td>".$rows['name']."</td>";
                    //         echo "<td>".$rows['Is_Required']."</td>";
							
                    //         echo
                    //         $flg='';
                    //         if($rows['Is_Required']=='Yes')
                    //             {
                    //                 $flg="checked";
                    //             }
                    //         echo "<td><label class='switch'><input type='checkbox' name = 'Required[]' value = '".$rows['id']."' $flg/><span class='slider round'></span>
                    //                 </label></td>";
                    //         echo "<td>".$rows['comments']."</td>";
                    //         echo "<td><input type='text' name = '".$rows['id']."' value='".$rows['comments']."'</td>";
                    //         echo "</tr>";
                    // }
            ?>
            </table>
            <?php
                // echo '<button type = "submit" name="subBut"> Submit</button>'
            ?>
        </form> -->
    <h1> Welcome to Pre-Upgrade Poratal</h1>
    <img class="center" src="https://www.vippng.com/png/detail/443-4432578_happy-face-green-smile-icon-png.png">
</body>

</html>