<?php
    include "../../connect.php";
    //echo $_GET['customer_name'];
    
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <?php
        echo "<title>".$_GET['customer_name']."</title>"
    ?>
    <link rel="stylesheet" href="pre-upgrade/css/sidepanel_css.css">
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
    <link rel="stylesheet" type="text/css" href="./css/Semantic-UI-Alert.css">
</head>
    <body>
    <div class="topbar">
        <div class="sticky-wrap">
            <div class="sticky-content">
                <div >
                    
                    <div id="mySidepanel" class="sidepanel">
                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                        <?php
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_mda_objects";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/mda_objects.php?customer_name='.$_GET["customer_name"].'">Mda Objects</a>';
                                }
                            
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_reports";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/reports.php?customer_name='.$_GET["customer_name"].'">Reports</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_rules";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/rules.php?customer_name='.$_GET["customer_name"].'">Rules</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_ingest_jobs";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/ingest_jobs.php?customer_name='.$_GET["customer_name"].'">Ingest Jobs</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_scorecards";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/scorecards.php?customer_name='.$_GET["customer_name"].'">Scorecards</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_journey_orchestrator";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/journey_orchestrator.php?customer_name='.$_GET["customer_name"].'">Journey Orchestrator</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_data_designer";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/data_designer.php?customer_name='.$_GET["customer_name"].'">Data Desginer</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_playbooks";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/playbooks.php?customer_name='.$_GET["customer_name"].'">Playbooks</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_milestones";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/milestones.php?customer_name='.$_GET["customer_name"].'">Milestones</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_success_plan_templates";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/success_plan_tempaltes.php?customer_name='.$_GET["customer_name"].'">Success Plan Templates</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_survey";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/survey.php?customer_name='.$_GET["customer_name"].'">Survey</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."schedule";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/schedule.php?customer_name='.$_GET["customer_name"].'">Schedule</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_dashboards";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/dashboards.php?customer_name='.$_GET["customer_name"].'">Dashboards</a>';
                                }
                            $sql1 = "SELECT * FROM ".$_GET['customer_name']."_email_templates";
                            //echo $sql1;
                            $res = $conn->query($sql1);
                            if($res)
                                {
                                    echo '<a href="customer_features/email_templates.php?customer_name='.$_GET["customer_name"].'">Email Templates</a>';
                                }
                        ?>
                    </div>
                </div>
                <button class="openbtn" onclick="openNav()">&#9776; Menu</button>
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