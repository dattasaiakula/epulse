<?php 
   session_start();
   include "connect.php";
   if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   
    $userid = $_SESSION['id'];
    $query = "SELECT * FROM users.usersdata WHERE id = $userid";
     $result = mysqli_query($conn, $query);
     $row=mysqli_fetch_assoc($result);
     $currentlogin_username = $row['name'];?>

<?php

    include 'connect.php';
    $userId = $_GET['userId'];
    $sql = "SELECT * FROM users.usersdata WHERE id=$userId";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
        $userfullname = $row['name'];
        $username = $row['username'];
        $userrole = $row['role'];
        $usercompany = $row['company'];
        $usernumber = $row['number'];
        



    if(isset($_POST['save'])){
        $userfullname = $_POST['name'];
        $username = $_POST['username'];
        $userrole = $_POST['role'];
        $usercompany = $_POST['company'];
        $usernumber = $_POST['number'];
        



        $sql = "UPDATE users.usersdata 
                SET name='$userfullname',username='$username',role='$userrole',
                company='$usercompany',number='$usernumber',updatedby='$currentlogin_username',updateddate=Now() WHERE id=$userId";
        
        $result = mysqli_query($conn, $sql);
        if($result){
            //echo "Updated Successfully";
            header('location: userlist.php');
        }else{
            die(mysqli_error($conn));
        }
       
    }
    
?>



<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <title>Issue Tracker</title>
</head>

<body>
    <div class="container" style="text-align: end; font-size:30px">
        <i class='bx bxs-user-pin'>
            <?=$_SESSION['name']?>
        </i>
        <a href=" /loginpage/logout.php" class="btn btn-secondary btn-sm" style="margin-left: 10px;">Logout</a>
    </div>

    <div class="container my-2">
        <form method="post">
            <div class="col" style="margin-left: 530px;">
                <button type="submit" class="btn btn-primary my-3" name="save">Save</button>

                <input style="margin-left: 50px;" type="button" class="btn btn-primary my-3" name="cancel"
                    value="Cancel" onclick="history.back();">
                </input>

            </div>


            <div class="row">
                <div class="col">
                    <lable><b>Name</b></lable>
                    <input type="text" class="form-control"  name="name" autocomplete="off"
                        value=<?php echo $userfullname; ?>>
                </div>
                <div class="col">
                    <lable><b>User Name</b></lable>
                    <input type="text" class="form-control"  name="username" autocomplete="off"
                        value=<?php echo $username; ?>>
                </div>
                
            </div>
            <div class="row">
                <div class="col">
                    <lable><b>Role</b></lable>
                    <input type="text" class="form-control"  name="role" autocomplete="off"
                        value=<?php echo $userrole; ?>>
                </div>
                <div class="col">
                    <lable><b>Company</b></lable>
                    <input type="text" class="form-control"  name="company" autocomplete="off"
                        value=<?php echo $usercompany; ?>>
                </div>
                
            </div><div class="row">
                <div class="col">
                    <lable><b>Number</b></lable>
                    <input type="text" class="form-control"  name="number" autocomplete="off"
                        value=<?php echo $usernumber; ?>>
                </div>
                <div class="col">
                    <lable hidden><b></b></lable>
                    <input type="text" hidden class="form-control">
                </div>
                
            </div>
        </form>
    </div>
    
</body>
<script>
    <!-- Duplicate Values are not allows -->
    var optionValues = [];
    $('#selectId option').each(function () {
        if ($.inArray(this.value, optionValues) > -1) {
            $(this).remove()
        } else {
            optionValues.push(this.value);
        }
    });
</script>

</html>
<?php }else{
	header("Location: login_page.php");
} ?>