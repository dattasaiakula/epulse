<?php
  $db_host = 'localhost';
  $db_user = 'root';
  $db_password = 'root';
  $db_db = 'users';
  $db_port = 3306;

  $mysqli = new mysqli(
    $db_host,
    $db_user,
    $db_password,
    $db_db,
	$db_port
  );
  $conn = mysqli_connect($db_host, $db_user, $db_password, $db_db,$db_port);

  if (!$conn) {
	  echo "Connection failed!";
	  exit();
  }

  if ($mysqli->connect_error) {
    echo 'Errno: '.$mysqli->connect_errno;
    echo '<br>';
    echo 'Error: '.$mysqli->connect_error;
    exit();
  }

  //$mysqli->close();

  $mysqli->close();
?>