<?php 
   session_start();
   include "connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {  
    $userid = $_SESSION['id'];
    $query = "SELECT * FROM users.usersdata WHERE id = $userid";
     $result = mysqli_query($conn, $query);
     $row=mysqli_fetch_assoc($result);
     $usercompany = $row['company'];?>

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
        <?php if ($usercompany != 'GAINSIGHT' && $usercompany != 'RJEYS') {?>
            <a href="userlist.php" class="btn btn-primary" type="button">Users</a>
        <!-- For Users -->
        <?php
            include 'dashboard_page_users.html';
        ?>
        <?php }else { ?>
        <!-- FOR Admin -->
        <a href="userlist.php" class="btn btn-primary" type="button">Users</a>
        <?php
                include 'dashboard_page_admin.html';
                
            ?>
        <?php } ?>
    </div>
</body>

</html>
<?php }else{
	header("Location: login_page.php");
} ?>