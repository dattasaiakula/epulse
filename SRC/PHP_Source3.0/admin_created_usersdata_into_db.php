<?php
if (isset($_POST['name'])  &&  isset($_POST['username']) && isset($_POST['password']) && isset($_POST['number']) ) {
	include "connect.php";
	
	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$name = validate($_POST['name']);
    $username = validate($_POST['username']);
	$pwd = validate($_POST['password']);
	$number = validate($_POST['number']);

	$login = explode("@", $username);
	$name1 = explode(".",$login[1]);
	$domain = strtoupper($name1[0]);
	echo $domain;

    $password = md5($pwd);

	if (empty($name) || empty($password) || empty($username)) {
		header("Location: login_page.php");
	}else {

		$sql = "INSERT INTO users.usersdata(name, company, username, password, number, role) 
		VALUES('$name', '$domain','$username', '$password', $number, 'User')";
		$res = mysqli_query($conn, $sql);

		if ($res) {
			header("Location: homepage.php");
			exit();
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}$conn->close();
		
            
	}

}else {
	header("Location: logout.php");
}
?>