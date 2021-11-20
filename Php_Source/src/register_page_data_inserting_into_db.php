<?php
if (isset($_POST['name']) && isset($_POST['company']) &&  isset($_POST['username']) && isset($_POST['password']) && isset($_POST['number']) && isset($_POST['role'])) {
	include 'connect.php';
	
	

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$name = validate($_POST['name']);
	$company = validate($_POST['company']);
    $username = validate($_POST['username']);
	$pwd = validate($_POST['password']);
	$number = validate($_POST['number']);
	$role = validate($_POST['role']);

	$login = explode("@", $username);
	$name1 = explode(".",$login[1]);
	$domain = strtoupper($name1[0]);
	echo $domain;

    $password = md5($pwd);

	if (empty($name) || empty($password) || empty($username)|| empty($role)) {
		header("Location: login_page.php");
	}else {

		$sql = "INSERT INTO users.usersdata(name, company, username, password, number, role) VALUES('$name', '$domain','$username', '$password', $number, '$role')";
		$res = mysqli_query($conn, $sql);

		$query = "INSERT INTO users.Company(Name, PrimaryContact) VALUES('$domain', $number)";
		$result = mysqli_query($conn, $query);
		if ($res) {
			if($result){
				header("Location: login_page.php");
				exit();
			} else {
				echo "Error: " . $sql . "<br>" . $conn->error;
			}$conn->close();
		}
            
	}

}else {
	header("Location: login_page.php");
}
?>