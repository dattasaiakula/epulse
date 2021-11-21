<?php 
   session_start();
   include "connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   ?>

<!DOCTYPE html>
<html>

<head>
    <title>HOME</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
    <div class="container" style="min-height: 100vh">
        <?php if ($_SESSION['role'] == 'Admin') {?>
        <!-- For Admin -->
        <a href="userlist.php" class="btn btn-primary" type="button">Users</a>
        <?php
            include 'dashboard_page.html';
        ?>
        <?php }else { ?>
        <!-- FORE USERS -->
        <?php
                include 'dashboard_page.html';
                
            ?>
        <?php } ?>
    </div>
</body>

</html>
<?php }else{
	header("Location: login_page.php");
} ?>