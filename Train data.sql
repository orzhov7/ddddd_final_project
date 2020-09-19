CREATE SCHEMA final_project_schema;

USE final_project_schema;

CREATE TABLE l_stop (

  Map_ID INT NOT NULL,

  Station_Name VARCHAR(50) NOT NULL,

  Latitude decimal(50) NOT NULL,

  Longitude decimal(50) NOT NULL,
  
  PRIMARY KEY (Map_ID)

) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE zip_codes (

  Zip INT NOT NULL,

  City VARCHAR(7) NOT NULL,
  
  State VARCHAR(10) NOT NULL,
  
  Latitude decimal(50) NOT NULL,

  Longitude decimal(50) NOT NULL,
  
  PRIMARY KEY (Zip)

) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE chicago_population (

  Zip INT NOT NULL,

  Population INT NOT NULL,
  
  PRIMARY KEY (Zip)

) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE daily_entries (

  Map_ID INT NOT NULL,

  Ride_Date INT NOT NULL,

  Rides_Taken INT NOT NULL,

  PRIMARY KEY (Map_ID)

) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE line_group (

  Map_ID INT NOT NULL,

  Line_Name VARCHAR(50) NOT NULL,
  
  PRIMARY KEY (Map_ID, Line_Name)

) ENGINE=INNODB DEFAULT CHARSET=LATIN1;