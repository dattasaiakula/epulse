<?php
    include "../../connect.php";
    $name = $_POST['name'];
    $username = $_POST['username'];
	$pwd = $_POST['password'];
	$number = $_POST['number'];

	$login = explode("@", $username);
	$name1 = explode(".",$login[1]);
	$domain = strtoupper($name1[0]);
	// echo $name;
	// echo $username;
	// echo $domain;


    $password = md5($pwd);

?>

<?php
    include "../../../connect.php";
    if(isset($_POST['subBut']))
        {
            $customer_name = $domain;
            //  echo $customer_name;
            //  echo $name;
            //  echo $username;
            //  echo $number;
            $sql = "INSERT INTO id18088723_users.usersdata(name, company, username, password, number, role) 
             VALUES('$name', '$domain','$username', '$password', $number, 'Admin')";
            //echo $sql;
            $res = mysqli_query($conn, $sql);
            //  echo $res;
            // $res = $con->query($sql1);
            //print_r($_POST['selected']);
            foreach($_POST['selected'] as $feature)
            {   
                // $com = $domain;
                // echo $com;
                echo $feature;
                switch($feature)
                    {
                        case "mda_objects":
                            //echo "vachindi part-2";
                            $sql1 = "CREATE TABLE $customer_name".'_'.$feature." 
                                            (name varchar(255),
                                            description_type varchar(255),
                                            fieldsCount varchar(255),
                                            recordsCount varchar(255),
                                            actualRecords varchar(255),
                                            liveRowsCount varchar(255),
                                            volume varchar(255),
                                            updateKeysCount varchar(255),
                                            updateKeys varchar(255),
                                            duplicateRecordsCount varchar(255),
                                            formulaFieldsCount varchar(255),
                                            formulaFields varchar(255),
                                            requiredFieldsCount varchar(255),
                                            hasLookupButNotRequiredCount varchar(255),
                                            hasLookupButNotRequired varchar(255),
                                            hasUpdateKeys varchar(255),
                                            createdDate varchar(255),
                                            modifiedDate varchar(255),
                                            createdBy varchar(255),
                                            modifiedBy varchar(255),
                                            collecitonId varchar(255),
                                            Is_Required varchar(50),
                                            comments varchar(500)
                                                )";
                            //echo $sql1;
                            $res=$conn->query($sql1);
                            //echo mysqli_error($conn);
                            // $str .="$feature";
                            // echo "Ok";
                            // echo $res;
                            break;
                            case "reports":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                        (asset_name varchar(255),
                                        asset_description varchar(255),
                                        asset_type varchar(255),
                                        asset_source varchar(255),
                                        folder_detail varchar(255),
                                        graphtype varchar(255),
                                        sourceobjectname varchar(255),
                                        linkedobjects varchar(255),
                                        visualizationtype varchar(255),
                                        reportcount varchar(255),
                                        externalviewid varchar(255),
                                        reference_id varchar(255),
                                        is_used_in_dashboard varchar(255),
                                        dashboard_names varchar(255),
                                        is_used_in_360 varchar(255),
                                        layout_section_name varchar(255),
                                        is_used_in_R360 varchar(255),
                                        rel_layout_section_name varchar(255),
                                        is_used_in_jo varchar(255),
                                        jo_names varchar(255),
                                        created_by varchar(255),
                                        modified_by varchar(255),
                                        created_date varchar(255),
                                        modified_date varchar(255),
                                        Is_Required varchar(50),
                                        comments varchar(500)
                                            )";
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                        case "rules":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                        (name varchar(255),
                                            description_type varchar(255),
                                            scheduled varchar(255),
                                            noOfDays varchar(255),
                                            active varchar(255),
                                            ruleFor varchar(255),
                                            taskCount varchar(255),
                                            actionCount varchar(255),
                                            sourceInfo varchar(255),
                                            actionInfo varchar(255),
                                            createdByName varchar(255),
                                            modifiedByName varchar(255),
                                            ruleChains varchar(255),
                                            optimizedRuleLogs varchar(255),
                                            compareStats varchar(255),
                                            corrupted varchar(255),
                                            duration varchar(255),
                                            typeName varchar(255),
                                            createdDate date,
                                            modifiedDate date,
                                            lastRunDate date,
                                            objectInfo varchar(255),
                                            folderDetail varchar(255),
                                            id varchar(255),
                                            actionIds varchar(255),
                                            Is_Required varchar(50),
                                            comments varchar(500)
                                        )";
                            $res=$conn->query($sql1);
                            // $str = ".$str." + ".$feature.";
                            break;
                        case "ingest_jobs":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                            (name varchar(255),
                                            id varchar(255),
                                            type varchar(255),
                                            typeName varchar(255),
                                            connectorId varchar(255),
                                            connectorName varchar(255),
                                            source varchar(255),
                                            target varchar(255),
                                            extraFields varchar(255),
                                            ignoredFields varchar(255),
                                            objectInfos varchar(255),
                                            compareExecutionMap varchar(255),
                                            schedule varchar(255),
                                            scheduled varchar(255),
                                            lastExecutionDetail varchar(255),
                                            createdDate date,
                                            modifiedDate date,
                                            createdByName varchar(255),
                                            modifiedByName varchar(255),
                                            scheduleType varchar(255),
                                            lastRunDate date,
                                            accountDetail varchar(255),
                                            jobInfo varchar(255),
                                            syncInfo varchar(255),
                                            dataLoadDTO varchar(255),
                                            duration varchar(255),
                                            Is_Required varchar(50),
                                            comments varchar(500)
                                                    )";
                            //echo $sql1;
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                        case "scorecards":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                        (id  varchar(255),
                                        name varchar(255),
                                        description varchar(255),
                                        entityType varchar(255),
                                        exceptions varchar(255),
                                        filters varchar(255),
                                        schemeName varchar(255),
                                        groupRollup varchar(255),
                                        measureCount varchar(255),
                                        measureGroupCount varchar(255),
                                        filtersEnabled varchar(255),
                                        exceptionConfigured varchar(255),
                                        measureList varchar(255),
                                        rules varchar(255),
                                        factId varchar(255),
                                        createdDate date,
                                        createdBy varchar(255),
                                        modifiedDate date,
                                        modifiedBy varchar(255),
                                        factSize varchar(255),
                                        accountScorecard varchar(255),
                                        Is_Required varchar(50),
                                        comments varchar(500)                                        
                                        )";
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                            case "journey_orchestrator":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                        (Name varchar(255),
                                            code varchar(255),
                                            type varchar(255),
                                            id varchar(255),
                                            status varchar(255),
                                            Model_Name varchar(255),
                                            Model_Type varchar(255),
                                            Survey_Name varchar(255),
                                            created_date DATETIME,
                                            modified_date DATETIME,
                                            Relationship_Type_Name varchar(255),
                                            folder_detail varchar(255),
                                            lastUsedDate DATETIME,
                                            noOfDays SMALLINT(50),
                                            AO_Participant_Source varchar(255),
                                            Report_Ids varchar(255),
                                            Report_Names varchar(255),
                                            Is_Required varchar(50),
                                            comments varchar(500)
                                                    )";
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                            case "data_designer":
                                $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                                (Design_Name varchar(255),
                                                Design_Description varchar(255),
                                                Tasks varchar(255),
                                                Objects_in_fetch_task varchar(255),
                                                Transform_Tasks varchar(255),
                                                Merge_Tasks  varchar(255),
                                                Formula_Prep varchar(255),
                                                Created_Date DATETIME,
                                                Design_ID varchar(255),
                                                Is_Required varchar(50),
                                                comments varchar(500)
                                                    )";
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                        case "playbooks":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                            (entity_type varchar(255),
                                            is_active varchar(255),
                                            cta_type varchar(255),
                                            name varchar(255),
                                            description varchar(255),
                                            id varchar(255),
                                            task_count FLOAT(1),
                                            Is_Required varchar(50),
                                            comments varchar(500)
                                                    )";
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                        case "milestones":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                            (
                                                label varchar(255),
                                                entity_type varchar(255),
                                                active varchar(10),
                                                createdBy varchar(255),
                                                lastModifiedBy varchar(255),
                                                created_date DATETIME,
                                                modified_date DATETIME,
                                                Is_Required varchar(50),
                                                comments varchar(500)
                                                )";
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                        case "success_plan_templates":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                            (
                                                name varchar(255),
                                                entity_type varchar(255),
                                                relationshipType varchar(255),
                                                createdBy varchar(255),
                                                modifiedBy varchar(255),
                                                Is_Required varchar(50),
                                                comments varchar(500)
                                            )";
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                        case "survey":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                            (
                                                name varchar(255),
                                                description varchar(255),
                                                externalTitle varchar(255),
                                                entityType varchar(255),
                                                relationshipType varchar(255),
                                                status varchar(255),
                                                publishedURL varchar(255),
                                                title varchar(255),
                                                usersSentCount varchar(255),
                                                userResponseCount varchar(255),
                                                startDate DATETIME,
                                                publishDate DATETIME,
                                                endDate DATETIME,
                                                version VARCHAR(10),
                                                Is_Required varchar(50),
                                                comments varchar(500)
                                            )";
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                        case "schedule":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                            (entityName varchar(255),
                                            entityType varchar(255),
                                            startTimeStr DATETIME,
                                            endTimeStr DATETIME,
                                            lastSuccessTimeStr DATETIME,
                                            lastFailureTimeStr DATETIME,
                                            failingSinceStr DATETIME,
                                            nextRunTimeStr DATETIME,
                                            timeZoneName varchar(255),
                                            cronText varchar(255),
                                            cronExpression varchar(255),
                                            jobIdentifier varchar(255),
                                            scheduleId varchar(255),
                                            tenantId varchar(255),
                                            emailIdList varchar(255),
                                            emailIdListSuccess varchar(255),
                                            Is_Required varchar(50),
                                            comments varchar(500)
                                                )";
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                        case "dashboards":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                            (
                                                asset_name varchar(255),
                                                asset_source varchar(255),
                                                reportCount SMALLINT,
                                                reference_id varchar(255),
                                                asset_gsid varchar(255),
                                                asset_id varchar(255),
                                                has_global_filters varchar(255),
                                                created_by varchar(255),
                                                modified_by varchar(255),
                                                created_date DATETIME,
                                                modified_date DATETIME,
                                                Is_Required varchar(50),
                                                comments varchar(500)
                                            )";
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                        case "email_templates":
                            $sql1 = "CREATE TABLE $domain".'_'.$feature." 
                                        (title varchar(255),
                                        isPublished varchar(255),
                                        builderVersion varchar(255),
                                        tokens varchar(255),
                                        tokensCount varchar(255),
                                        active varchar(255),
                                        variantCount varchar(255),
                                        variantNames varchar(255),
                                        fileName varchar(255),
                                        images varchar(255),
                                        folder_detail varchar(255),
                                        createdDate DATETIME,
                                        modifiedDate DATETIME,
                                        createdByName varchar(255),
                                        modifiedByName varchar(255),
                                        maxUsageDate varchar(255),
                                        templateId varchar(255),
                                        Is_Required varchar(50),
                                        comments varchar(500)
                                        )";
                            $res=$conn->query($sql1);
                            // $str .="$feature";
                            break;
                    }
            }
            header('location:../../../index.php');
        }

?>
<!Doctype html>
<html>

<head>
    <title>Customer Feature Selection</title>
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
    <link rel="stylesheet" href="setup_css.css">
</head>

<body>
    <div class="ui form">
        <div class="fields">
            <div class="field">
                <h1>Please select features that you want to upgrade</h1>
                <form action="" method="post">
                    <!-- <label>Customer Name
                    <input type="text" name="customer_name">
                    </label>     -->
                    <br>
                    <br>
                    <script>
                        function devude_dikku(source) {
                            checkboxes = document.getElementsByName('selected[]');
                            for (var i = 0, n = checkboxes.length; i < n; i++) {
                                checkboxes[i].checked = source.checked;
                            }
                        }
                    </script>
                    <label class="container">Select All
                        <input type="checkbox" name="selectall" class="ui primary button"
                            onClick="devude_dikku(this)" />
                        <span class="checkmark"></span>
                    </label><br>
                    <label class="container">MDA Objects
                        <input type="checkbox" name="selected[]" value="mda_objects">
                        <span class="checkmark"></span>
                    </label>
                    <br>
                    <label class="container">Rules
                        <input type="checkbox" name="selected[]" value="rules">
                        <span class="checkmark"></span>
                    </label>
                    <br>
                    <label class="container">Ingest Jobs
                        <input type="checkbox" name="selected[]" value="ingest_jobs">
                        <span class="checkmark"></span>
                    </label>
                    <br>
                    <label class="container">Reports
                        <input type="checkbox" name="selected[]" value="reports">
                        <span class="checkmark"></span>
                    </label>
                    <br>
                    <label class="container">Data Designer
                        <input type="checkbox" name="selected[]" value="data_designer">
                        <span class="checkmark"></span>
                    </label>
                    <br>
                    <label class="container">Scorecards 2.0
                        <input type="checkbox" name="selected[]" value="scorecards">
                        <span class="checkmark"></span>
                    </label><br>
                    <label class="container">Schedule
                        <input type="checkbox" name="selected[]" value="schedule">
                        <span class="checkmark"></span>
                    </label> <br>
                    <label class="container">Journey Orchestrator
                        <input type="checkbox" name="selected[]" value="journey_orchestrator">
                        <span class="checkmark"></span>
                    </label> <br>
                    <label class="container">Playbooks
                        <input type="checkbox" name="selected[]" value="playbooks">
                        <span class="checkmark"></span>
                    </label><br>
                    <label class="container">Milestones
                        <input type="checkbox" name="selected[]" value="milestones">
                        <span class="checkmark"></span>
                    </label><br>
                    <label class="container">Success Plan Templates
                        <input type="checkbox" name="selected[]" value="success_plan_templates">
                        <span class="checkmark"></span>
                    </label><br>
                    <label class="container">Survey
                        <input type="checkbox" name="selected[]" value="survey">
                        <span class="checkmark"></span>
                    </label><br>
                    <label class="container">Dashboards
                        <input type="checkbox" name="selected[]" value="dashboards">
                        <span class="checkmark"></span>
                    </label><br>
                    <label class="container">Email Templates
                        <input type="checkbox" name="selected[]" value="email_templates">
                        <span class="checkmark"></span>
                    </label>
                    <input type='hidden' name='name' value='<?php echo $name; ?>'>
                    <input type='hidden' name='username' value='<?php echo $username; ?>'>
                    <input type='hidden' name='password' value='<?php echo $pwd; ?>'>
                    <input type='hidden' name='number' value='<?php echo $number; ?>'>
                    <button type="submit" name="subBut">Submit</button>
                </form>
            </div>
        </div>
    </div>
</body>

</html>