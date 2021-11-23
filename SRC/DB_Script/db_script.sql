-- activity_log_history	
CREATE TABLE `activity_log_history` (
 `id` int(20) NOT NULL AUTO_INCREMENT,
 `username` varchar(250) NOT NULL,
 `action` varchar(250) NOT NULL,
 `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

-- Area	
CREATE TABLE `Area` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `area` varchar(120) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8

-- comments	
CREATE TABLE `comments` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `comment` varchar(250) NOT NULL,
 `username` varchar(250) DEFAULT NULL,
 `userId` int(11) NOT NULL,
 `posteddate` datetime DEFAULT NULL,
 `issue_id` int(11) NOT NULL,
 `issue_name` varchar(250) NOT NULL,
 PRIMARY KEY (`id`),
 KEY `userId` (`userId`),
 KEY `issue_id` (`issue_id`),
 CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `usersdata` (`id`),
 CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`issue_id`) REFERENCES `issue_tracker_tb` (`IssueId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8

-- Company	
CREATE TABLE `Company` (
 `Id` int(11) NOT NULL AUTO_INCREMENT,
 `Name` varchar(250) DEFAULT NULL,
 `PrimaryContact` bigint(120) DEFAULT NULL,
 `Active` enum('Yes','No') DEFAULT 'Yes',
 PRIMARY KEY (`Id`),
 UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8

-- Issue_Priority
	CREATE TABLE `Issue_Priority` (
 `Id` int(11) NOT NULL AUTO_INCREMENT,
 `priority` varchar(120) NOT NULL,
 PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8

-- issue_tracker_tb
	CREATE TABLE `issue_tracker_tb` (
 `IssueId` int(11) NOT NULL AUTO_INCREMENT,
 `IssueName` varchar(128) DEFAULT NULL,
 `IssueDescription` varchar(250) DEFAULT NULL,
 `IssueType` enum('Product Bug','Enhancement','Data Request') NOT NULL,
 `ProductTeam` enum('Team A','Team B','Team C') NOT NULL,
 `Area` enum('Data Management','Reports','Dashboards','Data Designer','Journey Orchestrator','Rules Engine','cockpit','C360','Scorecard','Connectors') NOT NULL,
 `Priority` enum('Low','Medium','High') NOT NULL,
 `Owner` varchar(45) DEFAULT NULL,
 `Status` enum('New','In-Progress','Re-Open','Close') NOT NULL DEFAULT 'New',
 `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
 `ReportedBy` varchar(128) DEFAULT NULL,
 `ModifiedDate` datetime DEFAULT NULL,
 `Attachements` text,
 `UpdatedBy` varchar(250) DEFAULT NULL,
 `user_id` int(11) DEFAULT NULL,
 `user_company` varchar(250) DEFAULT NULL,
 PRIMARY KEY (`IssueId`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8

-- Issue_Type
	CREATE TABLE `Issue_Type` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `type` varchar(120) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8

-- Product_Team
	CREATE TABLE `Product_Team` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `product_team` varchar(120) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8

-- Status
	CREATE TABLE `Status` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `status` varchar(120) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8

-- usersdata
	CREATE TABLE `usersdata` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `role` enum('User','Admin') NOT NULL,
 `username` varchar(250) NOT NULL,
 `password` varchar(250) NOT NULL,
 `name` varchar(250) NOT NULL,
 `number` bigint(120) NOT NULL,
 `company` varchar(250) NOT NULL,
 `CreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `updatedby` varchar(250) NOT NULL,
 `updateddate` datetime DEFAULT NULL,
 PRIMARY KEY (`id`),
 UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8