<?php 
   session_start();
   if (!isset($_SESSION['username']) && !isset($_SESSION['id'])) {   ?>

<!DOCTYPE html>
<html>

<style>
    body {
        background-image: url(images/form-bg.webp);
    }
</style>
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

    <title>Login | Page</title>
</head>

<body>
    <div class="container d-flex justify-content-center align-items-center " style="min-height: 100vh">
        <form class="border shadow p-3 rounded" action="checking_login_details.php" method="post"
            style="width: 450px;box-shadow: 10px 10px 5px rgb(241, 244, 245)!important;">
            <h1 class="text-center p-1" style="color:rgb(27, 160, 221);">LOGIN</h1>
            <?php if (isset($_GET['error'])) { ?>
            <div class="alert alert-danger" role="alert" style="text-align: center;">
                <?=$_GET['error']?>
            </div>
            <?php } ?>
            <div class="mb-2">
                <label for="username" class="form-label" style="color:rgb(27, 160, 221);">User name</label>
                <input type="text" class="form-control" name="username" id="username">
            </div>
            <div class="input-group mb-3">
                <label for="password" class="form-label" style="color:rgb(27, 160, 221);">Password</label>
                <input type="password" name="password" class="form-control pwd" id="password">
                <span class="input-group-btn">
                    <button class="btn btn-default reveal" type="button" style="margin-top: 25px;"><i
                            class="glyphicon glyphicon-eye-open"></i></button>
                </span>
            </div>

            <p style="margin-bottom: px;color:rgb(27, 160, 221);"><input class="form-check-input" type="checkbox"
                    value="" id="flexCheckDefault" style="margin-left: 5px;margin-right: 5px;">Remember
                me</input>
            </p>
            <div style="margin-bottom:10px;">
                <a href="forget_password.php" style="margin-left: 20px; margin-right :20px;">Forget Password?</a>
                <a href="registration_page.php" style="margin-left:140px;">Register Here</a>
            </div>
            <button type="submit" class="btn btn-primary d-grid gap-2 col-6 mx-auto"
                style="width: 166px;">LOGIN</button>

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
</script>

</html>
<?php }else{
	header("Location: login_page.php");
} ?>