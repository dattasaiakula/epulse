<?php 
   //session_start();
   //include "../../../connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {
    $userId = $_SESSION['id'];
    //echo $userId;
   ?>

<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en">
<style>
    /* Google Font Link */
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

    /*this is side bar and body header margins*/
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
    }

    /* Here  body details related purpose.  */
    .home-section {
        position: absolute;
        min-height: 100vh;
        top: 70;
        width: 100%;
        /*width: 100%;*/
        transition: all 0.5s ease;
        z-index: 2;
    }

    .sidebar.open~.home-section {
        left: 250px;
        width: calc(100% - 250px);
    }

    .home-section .text {
        display: inline-block;
        color: #11101d;
        font-size: 25px;
        font-weight: 500;
        margin: 18px
    }


    main {
        width: 75%;
        margin: 50px auto;
        border: 0px solid grey;
        display: grid;
        grid-template-rows: 60px 100px 200px 60px;
        grid-template-columns: repeat(4, 100px) 100px;
        grid-gap: 40px;
    }

    .div1 {
        grid-column: 1/-2;
        width: 400px;
        height: 180px;
        grid-gap: 40px;
        font-size: 32px;

    }

    .div2 {
        grid-column: 1/ span;
        width: 400px;
        font-size: 32px;
        height: 180px;
        text-align: center;
    }

    .div3 {
        grid-column: 1/-2;
        width: 400px;
        height: 180px;
        font-size: 32px;
        margin-top: 120px;
    }

    .div4 {
        width: 400px;
        height: 180px;
        font-size: 32px;
        margin-top: 120px;

    }

    .topnav {
        overflow: hidden;
        width: 1459px;
        background-color: rgb(3, 231, 136);
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
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


    <div class="topnav">
        <a class="btn active" href="homepage.php">Home</a>
        <?php
            $sql1 = "SELECT role FROM id18088723_users.usersdata WHERE id = $userId";
            //echo $sql1;
            $res1 = $conn->query($sql1);
            $rows = mysqli_fetch_assoc($res1);
            //echo $rows['role'];
            if($rows['role'] == "Admin"){
                echo '<a href="issue_tracker/Customers/customer_userlist.php" class="btn" type="button">Users</a>';
            }
        ?>
       
        <a style="margin-left:950px;">
            <i class='bx bxs-user-pin'>
                <?=$_SESSION['name']?>
            </i>
        </a>
        <a href=" ../../index.php" class="btn" style="margin-left: 10px;">Logout</a>
    </div>
</head>

<body style="background-image: url(https://miro.medium.com/max/1014/1*pEljTfPb3IpXTGPmnV6NBA.jpeg);">

    <div class="home-section">
        <main>
            <a class="btn btn-primary div2" href="issue_tracker/Customers/customer_issues.php"
                style="margin-top:150px;margin-left:50px; margin-bottom:20px; padding-top: 70px; font-size:30px; background-color: rgb(189, 107, 182);">Issue
                Tracker</a>
            <a class="btn btn-primary div2" href="pre-upgrade/users/index.php"
                style="margin-top:150px;padding-top: 70px;font-size:30px;background-color: rgb(23, 204, 195);margin-bottom: 20px;margin-left: 50px;">Pre-Upgrade</a>
        </main>
    </div>


</body>

</html>
<?php }else{
	header("Location: login_page.php");
} ?>