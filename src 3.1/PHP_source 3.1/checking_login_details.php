<?php  
session_start();
include "/storage/ssd4/723/18088723/public_html/connect.php";

if (isset($_POST['username']) && isset($_POST['password']) ) {

	function test_input($data) {
	  $data = trim($data);
	  $data = stripslashes($data);
	  $data = htmlspecialchars($data);
	  return $data;
	}

	$username = test_input($_POST['username']);
	$pwd = test_input($_POST['password']);
	$password = md5($pwd);


	if (empty($username)) {
		header("Location:/storage/ssd4/723/18088723/public_html/login_page.php?error=User Name is Required");
	}else if (empty($pwd)) {
		header("Location: /storage/ssd4/723/18088723/public_html/login_page.php?error=Password is Required");
	}else {
        $sql = "SELECT * FROM id18088723_users.usersdata WHERE username='$username' AND password='$password'";
        $result = mysqli_query($conn, $sql);
		
        if (mysqli_num_rows($result) === 1) {
        	// the user name must be unique
        	
        	$row = mysqli_fetch_assoc($result);
			 if ($row['password'] === $password ) {
        		$_SESSION['name'] = $row['name'];
        		$_SESSION['id'] = $row['id'];
        		$_SESSION['role'] = $row['role'];
        		$_SESSION['username'] = $row['username'];
        		header("Location:homepage.php");

        	}else {
        		header("Location:login_page.php?error= invalid");
        	}
        }else {
        	header("Location: login_page.php?error=Invalid Credentials.");
        }

	}
	
}else {
	header("Location: login_page.php");
}