<?php
session_start();
include "../../../connect.php";
//$customer_name = "DELOITTE";
if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   
    $userId = $_SESSION['id'];
    $query1 = "SELECT * FROM id18088723_users.usersdata WHERE id = '$userId'";
    $res = mysqli_query($conn, $query1);
    $row1 = mysqli_fetch_assoc($res);
    $userid = $row1['id'];
    $customer_name = $_GET['customer_name'];
    //echo $customer_name;
?>
<html lang="en">
<style>
    body {
        margin-left: 0px;
        margin-top: 0px;
        margin-bottom: 0px;
        margin-right: 0px;
    }

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

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="../../css/sidepanel_css.css">
    <title>Side Panel</title>

    <!-- Top Navigation Bar -->
    <div class="topnav">
        <a class="btn "onclick="history.back()">Back</a>
        <a style="margin-left:900px;">
            <i class='bx bxs-user-pin'>
                <?=$_SESSION['name']?>
            </i>
        </a>
        <a href=" ../../../index.php" class="btn">Logout</a>
    </div>

</head>

<body>
    <div class="topbar">
        <div class="sticky-wrap">
            <div class="sticky-content">
                <div class="ui blue inverted stackable menu" style="font-weight: bold;">
                    <!-- <a href="index.php" class="item"><i class="home icon"></i> Welcome to Rjeys</a> -->
                </div>
                <div id="mySidepanel" class="sidepanel">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                    <?php
                            $sql1 = "SELECT * FROM ".$customer_name."_mda_objects";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="mda_objects.php?customer_name='.$customer_name.'">Mda Objects</a>';
                                }
                            
                            $sql1 = "SELECT * FROM ".$customer_name."_reports";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="reports.php?customer_name='.$customer_name.'">Reports</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_rules";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="rules.php?customer_name='.$customer_name.'">Rules</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_ingest_jobs";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="ingest_jobs.php?customer_name='.$customer_name.'">Ingest Jobs</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_scorecards";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="scorecards.php?customer_name='.$customer_name.'">Scorecards</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_journey_orchestrator";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="journey_orchestrator.php?customer_name='.$customer_name.'">Journey Orchestrator</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_data_designer";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="data_designer.php?customer_name='.$customer_name.'">Data Desginer</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_playbooks";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="playbooks.php?customer_name='.$customer_name.'">Playbooks</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_milestones";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="milestones.php?customer_name='.$customer_name.'">Milestones</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_success_plan_templates";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="success_plan_templates.php?customer_name='.$customer_name.'">Success Plan Templates</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_survey";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="survey.php?customer_name='.$customer_name.'">Survey</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_schedule";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="schedule.php?customer_name='.$customer_name.'">Schedule</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_dashboards";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="dashboards.php?customer_name='.$customer_name.'">Dashboards</a>';
                                }
                            $sql1 = "SELECT * FROM ".$customer_name."_email_templates";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="email_templates.php?customer_name='.$customer_name.'">Email Templates</a>';
                                }
                        ?>
                </div>
            </div>
            <button class="openbtn" onclick="openNav()">&#9776; Menu</button>
        </div>
    </div>
    <script>
        function openNav() {
            document.getElementById("mySidepanel").style.width = "250px";
        }
        /* Set the width of the sidebar to 0 (hide it) */
        function closeNav() {
            document.getElementById("mySidepanel").style.width = "0";
        }
    </script>
</body>

</html>
<?php }else{
    header("Location: ../../../login_page.php");
} ?>