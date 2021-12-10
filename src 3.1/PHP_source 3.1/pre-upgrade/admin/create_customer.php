<?php 
   session_start();
   include "../../connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   
    $userId = $_SESSION['id'];
    $query1 = "SELECT * FROM id18088723_users.usersdata WHERE id = '$userId'";
    $res = mysqli_query($conn, $query1);
    $row1 = mysqli_fetch_assoc($res);
    $userid = $row1['id'];
    $usercompany = $row1['company'];
?>
<?php
    include '../../connect.php';
    if(isset($_POST['sub']) && isset($_FILES['photo'])){

        $customerName = strtoupper($_POST['customer_name']);
        $nickName = $_POST['nickname'];
        $domainName = $_POST['domain_id'];
        //echo "test";
    
            $img_name = $_FILES['photo']['name'];
            $tmp_name = $_FILES['photo']['tmp_name'];
            
            //echo $path;
            //move_uploaded_file($tmp_name,$path );

            $ind=count(explode('.',$_FILES['photo']['name']));
            $photo_ext=explode('.',$_FILES['photo']['name'])[$ind-1];
            $photo=$customerName.".".$photo_ext;
            $path = "images/".$photo;
            //print_r($photo);
            move_uploaded_file($tmp_name,$path);
            // //Uploading image file path to the database

        $sql = "INSERT INTO id18088723_users.pre_upgrade_customersData(customer_name,nickname,domain_id,file_path)
        VALUES('$customerName','$nickName','$domainName', '$path')";
        $result = mysqli_query($conn, $sql);
        echo $sql;
        if($result){
            //echo "Inserted Successfully";
            header('location: import.php');
        }else{
            die(mysqli_error($conn));
        }
    }
?>

<!Doctype html>
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
<html>
    <head>
        <title>Home for Admins</title>
        <link rel="stylesheet" type="text/css" href="./css/semantic.min.css" media="screen">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

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
            <a class="item" href="index.php">
                View details
            </a>
            <a class="active item" href="create_customer.php" >
                Create Customer
            </a>
            <a class="item" href="import.php">
                Import Customer Details
            </a>
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
            <div class="ui form">
                <form action="#" method = "post"  enctype="multipart/form-data">
                    <div class="fields">
                        <div class="field">
                            <label>Customer name</label>
                            <input type="text" placeholder="Customer name" name = "customer_name" required>
                        </div>
                        <div class="field">
                            <label>Nickname</label>
                            <input type="text" placeholder="Nickname" name = "nickname">
                        </div>
                        <div class="field">
                            <label>domain name</label>
                            <input type="text" placeholder="domain id" name="domain_id" required>
                        </div>
                    </div>
                    <div class="fields">
                        <div class="field">
                            <label>Logo</label>
                            <input type="file"  name = "photo" value="" required>
                        </div>
                    </div>
                    <div>
                        <button type="submit" name = "sub">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
<?php }else{
	header("Location: ../../login_page.php");
} ?>