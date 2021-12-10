<?php 
   session_start();
   include "/storage/ssd4/723/18088723/public_html/connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {  
    $userid = $_SESSION['id'];
    $query = "SELECT * FROM id18088723_users.usersdata WHERE id = $userid";
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
    <div class="container" style="min-height: 100vh;margin-left: 0px;margin-right: 0px;padding-left: 0px;">
        <?php 
        if($usercompany === "RJEYS"){
            include '/storage/ssd4/723/18088723/public_html/issue_tracker/Rjeys/dashboard_page_Rjeys.php';
        }elseif($usercompany === "GAINSIGHT"){
            include '/storage/ssd4/723/18088723/public_html/issue_tracker/Gainsight/dashboard_page_Gainsight.php';
        }else{
            include '/storage/ssd4/723/18088723/public_html/issue_tracker/Customers/dashboard_page_Customers.php';
        }
        ?>
    </div>
</body>

</html>
<?php }else{
	header("Location: /storage/ssd4/723/18088723/public_html/login_page.php");
} ?>