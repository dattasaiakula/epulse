<?php 
   session_start();
   if (!isset($_SESSION['username']) && !isset($_SESSION['id'])) {   ?>

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
    <title>Login | Page</title>
</head>

<body>
    <div class="container d-flex justify-content-center align-items-center " style="min-height: 100vh">
        <form class="border shadow p-3 rounded" action="forget_password_request.php" method="post"
            style="width: 450px;box-shadow: 10px 10px 5px rgb(8, 202, 228)!important;">
            <h4 class="text-center p-2">Forget Your Password</h4>
            <?php if (isset($_GET['error'])) { ?>
            <div class="alert alert-danger" role="alert">
                <?=$_GET['error']?>
            </div>
            <?php } ?>
            <h5 style="font-weight:normal; font-size:16px">
                <p style="color: rgb(180, 180, 171);">
                    Having trouble logging in?
                    <br><br>
                    Usernames are in the form of an email address.
                    Passwords are case sensitive.
                    <br><br>
                    To reset your password, enter your Salesforce username.
                </p>
            </h5>
            <div class="mb-3" style="width: 386px;">
                <label for="username" class="form-label">User name</label>
                <input type="text" class="form-control" name="username" id="username">
            </div>
            <div class="container my-2">
                <input type="button" class="btn btn-outline-secondary" name="cancel" value="Cancel"
                    onclick="history.back()" style="width: 176px;"></input>
                <button type="submit" class="btn btn-primary" style="width: 176px;">Continue</button>
            </div>

        </form>
    </div>
</body>
<script>

</script>

</html>
<?php }else{
	header("Location: login_page.php");
} ?>