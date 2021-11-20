<?php 
   session_start();
   include "connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {  
    ?>

<!DOCTYPE html>
<html lang="en">
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

</head>

<body style="background: #E4E9F7;">
    <div class="container" style="text-align: end; font-size:30px">
        <i class='bx bxs-user-pin'>
            <?=$_SESSION['name']?>
        </i>
        <a href=" logout.php" class="btn btn-secondary btn-sm" style="margin-left: 10px;">Logout</a>
    </div>

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
                </tr>
            </thead>
            <tbody>
                <?php
                    $sql = "Select * from users.usersdata ";
                    $result = mysqli_query($conn, $sql);
                    if($result){
                            while($row=mysqli_fetch_assoc($result)){
                                $id = $row['id'];
                                $name = $row['name'];
                                $username = $row['username'];
                                $role = $row['role'];
                                $company = $row['company'];
                                $number = $row['number'];

    
    
                                echo '<tr>
                                    <th scope="row"> '.$id.' </th>
                                    <th scope="row"> '.$name.' </th>
                                    <th scope="row"> '.$username.' </th>
                                    <th scope="row"> '.$role.' </th>
                                    <th scope="row"> '.$company.' </th>
                                    <th scope="row"> '.$number.' </th>
                                </tr>';
                            }
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