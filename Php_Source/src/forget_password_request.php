<?php  
session_start();
include "connect.php";

if (isset($_POST['username'])) {

	function test_input($data) {
	  $data = trim($data);
	  $data = stripslashes($data);
	  $data = htmlspecialchars($data);
	  return $data;
	}

	$username = test_input($_POST['username']);
	//$id = $_GET["SELECT id FROM users.usersdata WHERE username='$username' "];

	if (empty($username)) {
		header("Location:forget_password.php?error=User Name is Required");
	}else {
        $sql = "SELECT * FROM users.usersdata WHERE username='$username'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) === 1) {
        	// the user name must be unique
        	$row = mysqli_fetch_assoc($result);
        	if ($row['username'] === $username ) {
        		$_SESSION['username'] = $row['username'];
				$id = $row['id'];
        		header("Location:password_change.php?id=$id");
                //echo $row['id'];

        	}else {
        		header("Location:forget_password.php?error=");
        	}
        }else {
        	header("Location: forget_password.php?error=");
        }

	}
	
}else {
	header("Location: forget_password.php");
}
