<?php 
   session_start();
   include "../../connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) { 
    $userId = $_SESSION['id'];
    $query = "SELECT * FROM id18088723_users.usersdata WHERE id = $userId";
     $result = mysqli_query($conn, $query);
     $row=mysqli_fetch_assoc($result);
     $username = $row['company'];
    ?>

<!DOCTYPE html>
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
        background: #E4E9F7;
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
        background-color: #418f99a2;
        color: black;
    }

    .topnav a.active {
        background-color: #04AA6D;
        color: white;
    }
</style>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatile" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>users Data</title>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    <!-- Top Navigation Bar -->
    <div class="topnav" style="left: 60px;  width: 1459px;">
    <a class="btn " href="../../homepage.php">Home</a>
        <a href="customer_admin_creates_users.php" class="btn" type="button" >Add Users</a>
        <a style="margin-left:850px;">
            <i class='bx bxs-user-pin'>
                <?=$_SESSION['name']?>
            </i>
        </a>
        <a href=" ../../index.php" class="btn" style="margin-left: 10px;">Logout</a>
    </div>
</head>

<body style="background: #E4E9F7;">

    <div class="container" style="text-align: center;margin-left: 0px;margin-right: 0px;width:1530px;">

        <table id="myTable" class="table table-striped table-hover" style="width: 1500px;">
            <thead>
                <tr style="width: 1500px;">
                    <th scope="col">S.No</th>
                    <th scope="col">Name</th>
                    <th scope="col">User Name</th>
                    <th scope="col">Role</th>
                    <th scope="col">Company</th>
                    <th scope="col">Number</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    
                    $sql = "Select * from id18088723_users.usersdata WHERE company = '$username' ORDER BY role DESC ";
                    $result = mysqli_query($conn, $sql);
                    if($result){
                        $i = 0;
                            while($row=mysqli_fetch_assoc($result)){
                                $id = $row['id'];
                                $name = $row['name'];
                                $username = $row['username'];
                                $role = $row['role'];
                                $company = $row['company'];
                                $number = $row['number'];
                                $i++;?>


                <tr>
                    <td style="text-align:start;">
                        <?=$i?>
                    </td>
                    <td style="text-align:start;">
                        <?=$name?>
                    </td>
                    <td style="text-align:start;">
                        <?=$username?>
                    </td>
                    <td style="text-align:start;">
                        <?=$role?>
                    </td>
                    <td style="text-align:start;">
                        <?=$company?>
                    </td>
                    <td style="text-align:start;">
                        <?=$number?>
                    </td>
                    <td style="text-align:start;">
                        <a href="customer-admin_updating_userdata.php?userId=<?=$id?>" class="btn btn-primary btn-sm"
                            style="margin-left: 10px;">Edit</a>
                    </td>
                </tr>
                <?php }
                    }
                ?>
            </tbody>
        </table>
    </div>
</body>

</html>
<?php }else{
	header("Location: homepage.php");
} ?>