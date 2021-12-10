<?php
  $db_host = 'localhost';
  $db_user = 'id18088723_root';
  $db_password = 'Root@1234$#@';
  $db_db = 'id18088723_users';
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
  else {
      echo "connected To DB";
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