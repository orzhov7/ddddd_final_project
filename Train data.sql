CREATE TABLE `l_stop` (

  `Map_ID` INT(20) NOT NULL,

  `Station_Name` VARCHAR(50) NOT NULL,

  `Latitude` decimal(50) NOT NULL,

  `Longitude` decimal(50) NOT NULL,
  
  PRIMARY KEY (`Map_ID`)

) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE `zip_codes` (

  `Zip` INT(5) NOT NULL,

  `City` VARCHAR(7) NOT NULL,
  
   `State` VARCHAR(10) NOT NULL,
  
  `Latitude` decimal(50) NOT NULL,

  `Longitude` decimal(50) NOT NULL,
  
  PRIMARY KEY (`Zip`)

) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE `chicago_population` (

  `Zip` INT(5) NOT NULL,

  `Population` INT(20) NOT NULL,
  
  PRIMARY KEY (`Zip`)

) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE `daily_entries` (

  `Map_ID` INT(20) NOT NULL,

  `Ride_Date` INT(50) NOT NULL,

  `Rides_Taken` INT(50) NOT NULL,

  PRIMARY KEY (`Map_ID`)

) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE `line_group` (

  `Map_ID` INT(20) NOT NULL,

  `Line_Name` VARCHAR(50) NOT NULL,
  
  PRIMARY KEY (`Map_ID`, `Line_Name`)

) ENGINE=INNODB DEFAULT CHARSET=LATIN1;




