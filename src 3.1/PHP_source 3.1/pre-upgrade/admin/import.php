<?php
    session_start();
    include "../../connect.php";
    $sql = 'SELECT * FROM id18088723_users.pre_upgrade_customersData';
    $result = mysqli_query($conn, $sql);
?>

<!Doctype html>
<style>
    .topnav {
        overflow: hidden;
        width: 1459px;
        background-color: rgb(63, 180, 180);
    }

    .topnav a {
        float: left;
        color: #ad2c2c;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }

    .topnav a:hover {
       
        color: black;
    }

    .topnav a.active {
        background-color: #418f99a2;
        color: white;
    }
</style>
<html>
    <head>
        <title>Home for Admins</title>
        <link rel="stylesheet" href="./admin_home_css.css">
		<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<link rel="stylesheet" type="text/css" href="./css/semantic.min.css" media="screen">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/components/icon.min.css">


	<div class="topnav">
        <a class="btn active" href="../../homepage.php">Home</a>
        <a style="margin-left:850px;">
            <i class='bx bxs-user-pin'>
                <?=$_SESSION['name']?>
            </i>
        </a>
        <a href=" ../../index.php" class="btn" style="margin-left: 10px;">Logout</a>
    </div>
    </head>

    <body>

		
        <div class="ui top attached tabular menu">
            <a class="item" href="index.php">
                View details
            </a>
            <a class="item" href="create_customer.php">
                Create Customer
            </a>
            <a class="active item" href="import.php">
                Import Customer Details
            </a>
            </div>
        </div>
        <div class="ui bottom attached segment">
        <form method="post" action="#" enctype="multipart/form-data" class="ui stacked raised segment header form" style="width: 100%">
	File <label style="font-size: 15px;color: red"></label>
	<input  type="file" name="file1" class="ui field" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" required> 
	<div class="field">
		<header>Customer Name</header>
		<select class="ui search dropdown" name="customer_name" required>
			<option disabled>----choose---------</option>
			<?php
				$sql = 'SELECT * FROM id18088723_users.pre_upgrade_customersData';
				$res = mysqli_query($conn,$sql);
				while($rows = mysqli_fetch_assoc($res))
				{
					echo "<option value='".$rows["customer_name"]."'>".$rows["customer_name"]."</option>";
				}
            ?>
		</select>
	</div>
    <div class="item"><button type="submit" class="ui green button" name="sub"> Submit </button></div>
</form>
        </div>
		<script src='https://semantic-ui.com/javascript/library/jquery.min.js'></script>
<script src='https://semantic-ui.com/dist/semantic.min.js'></script>
<script src='https://semantic-ui.com/dist/components/form.js'></script>
<script src='https://semantic-ui.com/javascript/validate-form.js'></script>
<script src='https://semantic-ui.com/dist/components/popup.js'></script>

		<script type="text/javascript">
	$('.ui.dropdown').dropdown();
	
</script>
    </body>


</html>

<?php

include '../SimpleXLSX.php';

if(isset($_FILES['file1']) && isset($_POST['customer_name']))
    {
        $file_path=$_FILES['file1']['tmp_name'];
        $c=0;
        $e=0;
		$customer_name=$_POST['customer_name'];
        if ( $xlsx = SimpleXLSX::parse($file_path) ) 
            {
                $loop_count = count($xlsx->sheetNames());
                for($i=0; $i<$loop_count; $i++)
                    {
                        $selected_name = $xlsx->sheetName($i);
                        $selected_sheet = $xlsx->rows($i);
                        updating_to_database($selected_name,$selected_sheet,$conn,$customer_name);
                    }
            }
		echo "<script> alert ('All tables are updated')</script>";
    }
?>
<?php
	function updating_to_database($selected_name,$selected_sheet,$conn,$customer_name)
	{
		$fields_str = implode(', ', array_shift($selected_sheet));
		$values = array();
		$fields = explode(", ",$fields_str);
		$len = count($fields);
		for($i=0; $i<$len; $i++)
			{
				$fields[$i] = str_replace(" ", "_", $fields[$i]);
			}
		$fields = implode(",",$fields);
		switch($selected_name)
			{
				case "MDA Objects":
					$sql1 = "SELECT * FROM ".$customer_name."_mda_objects";
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";
								$query = 'INSERT INTO '.$customer_name.'_mda_objects ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
				case "Reports":
					$sql1 = "SELECT * FROM ".$customer_name."_reports";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_reports ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
					case "Rules":
					$sql1 = "SELECT * FROM ".$customer_name."_rules";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_rules ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
					case "Ingest Jobs":
					$sql1 = "SELECT * FROM ".$customer_name."_ingest_jobs";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_ingest_jobs ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);								
							}
						}
					break;
					case "Scorecards 2.0":
					$sql1 = "SELECT * FROM ".$customer_name."_scorecards";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_scorecards ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
					case "Journey Orchestrator":
					$sql1 = "SELECT * FROM ".$customer_name."_journey_orchestrator";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_journey_orchestrator ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;					
					case "Data Designer":
						$fields = explode(",",$fields);
						$len = count($fields);
						for($i=0; $i<$len; $i++)
							{
								$fields[$i] = str_replace("#_", "", $fields[$i]);
							}
						$fields = implode(",",$fields);
					$sql1 = "SELECT * FROM ".$customer_name."_data_designer";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_data_designer ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
					case "Playbooks":
					$sql1 = "SELECT * FROM ".$customer_name."_playbooks";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_playbooks ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
					case "Milestones":
					$sql1 = "SELECT * FROM ".$customer_name."_milestones";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_milestones ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
					case "Success Plans Templates":
					$sql1 = "SELECT * FROM ".$customer_name."_success_plan_templates";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_success_plan_templates ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
					case "Survey":
					$sql1 = "SELECT * FROM ".$customer_name."_survey";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_survey ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
					case "Schedules":
					$sql1 = "SELECT * FROM ".$customer_name."_schedule";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_schedule ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
					case "Dashboards":
					$sql1 = "SELECT * FROM ".$customer_name."_dashboards";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_dashboards ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
					case "Email Templates":
					$sql1 = "SELECT * FROM ".$customer_name."_email_templates";					
					$flg = "False";
					try
						{
							$res = $conn->query($sql1);
							$flg = "True";
						}
						catch (exception $e)
							{
								break;
							}
					if($flg)
						{
						foreach ($selected_sheet as $rowValues) 
							{
								$arr =array();
								foreach ($rowValues as $key => $rowValue) {
									$va=mysqli_real_escape_string($conn,$rowValue);
									array_push($arr,"'".$va."'");
								}
								$values[] = "(" . implode(', ', $arr) . ")";								
								$query = 'INSERT INTO '.$customer_name.'_email_templates ('.$fields.') VALUES (' . implode (", ", $arr) . ')';
								$res=$conn->query($query);
							}
						}
					break;
                                    }
								}
?>
