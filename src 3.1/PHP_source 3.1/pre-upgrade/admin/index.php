<?php 
   session_start();
   include "../../connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   ?>
<?php
    // $sql1 = "SELECT * FROM customer";
    // $res = $con->query($sql1);
    // while($rows = mysqli_fetch_assoc($res))
    //     {
    //         $rows['filepath'];
    //     }
?>

<!Doctype html>
<html>
<style>
    .topnav {
        overflow: hidden;
        width: 1459px;
        background-color: rgb(63, 180, 180);
    }

    .topnav a {
        float: left;
        color: #ad2c2c;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }

    .topnav a:hover {
        
        color: black;
    }

    .topnav a.active {
        background-color: #418f99a2;
        color: white;
    }
</style>

<head>
    <title>Home for Admins</title>
    <!-- <link rel="stylesheet" href="./admin_home_css.css"> -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">

    <div class="topnav">
        <a class="btn active" href="../../homepage.php">Home</a>
        <a style="margin-left:850px;">
            <i class='bx bxs-user-pin'>
                <?=$_SESSION['name']?>
            </i>
        </a>
        <a href=" ../../index.php" class="btn" style="margin-left: 10px;">Logout</a>
    </div>
</head>

<body>
    <div class="ui top attached tabular menu">
        <a class="active item" href="index.php">
            View details
        </a>
        <a class="item" href="create_customer.php">
            Create Customer
        </a>
        <a class="item" href="import.php">
            Import Customer Details
        </a>
        <!-- <a class=" item" href="/loginpage/pre-upgrade/users/setup/setup.php">
            Customer Feature Selection
        </a> -->
        <div class="right menu">
            <div class="item">
                <div class="ui transparent icon input">
                    <input type="text" placeholder="Search customer">
                    <i class="search link icon"></i>
                </div>
            </div>
        </div>
    </div>
    <div class="ui bottom attached segment">
        <div class="item">
            <?php
                    $sql1 = "SELECT * FROM id18088723_users.pre_upgrade_customersData";
                    $res = $conn->query($sql1);
                    while($rows = mysqli_fetch_assoc($res))
                        {
                            
                            echo '<a href="customer_features/sidepanel.php?customer_name='.$rows["customer_name"].'"><img src="'.$rows["file_path"].'" alt="'.$rows["customer_name"].'" width = "150px" height = "150px" style="padding: 10px;"></a>';
                        }
                ?>
            <!-- <a href="http://"><img src="https://www.tcs.com/content/dam/tcs/images/discover-tcs/brand/png/tcs-color.png" alt="TCS" width = "200px" height = "150px"></a>
        <a href="http://"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Infosys_logo.svg/600px-Infosys_logo.svg.png" alt="Infosys" width = "200px" height = "100px"></a>
        <a href="http://"><img src="https://png2.cleanpng.com/sh/fc2ed613c2d02d5f9875a4c589e749a5/L0KzQYm3V8A2N5RokpH0aYP2gLBuTfNieJhqhdt3aT3vf7j2TfJ2e5pzfeV8LXnxg8b5hgRma5kye9H3bnXmhH7qhv8uepp4RadrM3WzQoTrUcUzbWI8RqM5M0OzQYO5UcU0OGgASKYBMUC7Rom1kP5o/kisspng-capgemini-logo-business-insuretech-connect-cfo-ris-5b3e023d152e17.1033012215307904610868.png" alt="Capgemini" width = "200px" height = "150px"></a> -->
        </div>
    </div>
</body>

</html>
<?php }else{
	header("Location: ../../homepage.php");
} ?>