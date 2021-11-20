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
    <title>Registration Page</title>
</head>

<body>
    <div class="container d-flex justify-content-center align-items-center " style="min-height: 100vh">
        <form class="border shadow p-3 rounded" action="register_page_data_inserting_into_db.php" method="post"
            style="width: 450px;box-shadow: 10px 10px 5px rgba(252, 8, 8, 0.15)!important;">
            <h1 class="text-center p-2">LOGIN</h1>
            <?php if (isset($_GET['error'])) { ?>
            <div class="alert alert-danger" role="alert">
                <?=$_GET['error']?>
            </div>
            <?php } ?>
            <div class="mb-2">
                <label for="name" class="form-label">Full Name</label>
                <input type="text" class="form-control" name="name" id="name">
            </div>
            <div class="mb-2">
                <label for="company" class="form-label">Company</label>
                <input type="text" class="form-control" name="company" id="company">
            </div>
            <div class="mb-2">
                <label for="username" class="form-label">User Name</label>
                <input type="text" class="form-control" name="username" id="username">
            </div>
            <div class="input-group mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" name="password" class="form-control pwd" id="password">
                <span class="input-group-btn">
                    <button class="btn btn-default reveal" type="button" style="margin-top: 25px;"><i
                            class="glyphicon glyphicon-eye-open"></i></button>
                </span>
            </div>
            <div class="mb-2">
                <label for="number" class="form-label">Contact Number</label>
                <input type="text" class="form-control" name="number" id="number">
            </div>
            <div class="mb-1">
                <label class="form-label">Select User Type:</label>
            </div>
            <select class="form-select mb-1" name="role" aria-label="Default select example" style="font-size: 14px;">
                <option selected value="User">User</option>
                <option value="Admin">Admin</option>
            </select>
            <button type="submit" class="btn btn-primary d-grid gap- col-6 mx-auto my-3" style="width: 166px;"
                name="submit">Submit</button>

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