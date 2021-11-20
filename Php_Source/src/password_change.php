<?php

include 'connect.php';

$id = $_GET['id'];
$sql = "SELECT * FROM users.usersdata WHERE id=$id";
$result = mysqli_query($conn, $sql);

$row = mysqli_fetch_assoc($result);
    $pass1 = $row['password'];
    $password = md5($pass1);
if(isset($_POST['save'])){

    $pass1 = $_POST['password'];
    $password1 = md5($pass1);

    $sql = "UPDATE users.usersdata 
            SET password = '$password1' WHERE id=$id ";

    $result = mysqli_query($conn, $sql);
    if($result){
        //echo "Updated Successfully";
        header('location: login_page.php');
    }else{
        die(mysqli_error($conn));
    }
}
?>




<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title>Changing Password</title>
</head>

<body>
    <div class="container d-flex justify-content-center align-items-center " style="min-height: 100vh">
        <form class="border shadow p-3 rounded" action="" method="POST"
            style="width: 450px;box-shadow: 10px 10px 5px rgb(8, 202, 228)!important;">
            <h4 class="text-center p-2">Change Password</h4>
            <div class="input-group mb-3">
                <label for="password" class="form-label">New Password</label>
                <input type="password" name="password" class="form-control pwd" id="password">
                <span class="input-group-btn">
                    <button class="btn btn-default reveal" type="button" style="margin-top: 25px;"><i
                            class="glyphicon glyphicon-eye-open"></i></button>
                </span>
            </div>
            <div class="input-group mb-3">
                <label for="password" class="form-label">Re-Enter New Password</label>
                <input type="password" name="repassword" class="form-control pwd" id="repassword">
                <span class="input-group-btn">
                    <button class="btn btn-default reveal" type="button" style="margin-top: 25px;"><i
                            class="glyphicon glyphicon-eye-open"></i></button>
                </span>
            </div>
            <button id="savebtn" type="submit" class="btn btn-primary d-grid gap-2 col-6 mx-auto my-2"
                style="width: 166px;" name="save" onclick="savebtn()">Save</button>
        </form>
    </div>
</body>
<script>

    $(".reveal").on('click', function () {
        var $pwd = $(".pwd");
        if ($pwd.attr('type') === 'password') {
            $pwd.attr('type', 'text');
        } else {
            $pwd.attr('type', 'password');
        }
    });

    $(".reveal").on('click', function () {
        var $pwd2 = $(".pwd2");
        if ($pwd2.attr('type') === 'repassword') {
            $pwd2.attr('type', 'text');
        } else {
            $pwd2.attr('type', 'repassword');
        }
    });


</script>

</html>