<?php 
   session_start();
   include "connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   ?>

<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            margin: 0;
        }

        .navbar {
            overflow: hidden;
            background-color: rgb(12, 149, 190);
            position: fixed;
            top: 0;
            width: 100%;
        }

        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .navbar a:hover {
            background: #ddd;
            color: black;
        }

        .main {
            padding: 16px;
            margin-top: 30px;
            height: 1500px;
            /* Used in this example to enable scrolling */
        }
    </style>
    <div class="navbar">
        <a href="#home" class="btn">Home</a>
        <a>
            <?=$_SESSION['name']?>
        </a>
        <a href=" /loginpage/logout.php" class="btn" style="margin-left: 10px;">Logout</a>

    </div>
</head>

</html>

<?php }else{
    header("Location: login_page.php");
} ?>