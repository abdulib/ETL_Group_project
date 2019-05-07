DROP DATABASE IF EXISTS congress_etl;

CREATE DATABASE congress_etl;

USE congress_etl;

CREATE TABLE congress_bills_data(
	id INT NOT NULL AUTO_INCREMENT,
    Date_Introduced DATE NOT NULL,
    Bill_number VARCHAR (10) NOT NULL,
    Bill_Name VARCHAR (500) NOT NULL,
    Senator_Details VARCHAR (10) NOT NULL,
    Last_Name VARCHAR (50) NOT NULL,
    First_Name VARCHAR (50) NOT NULL,
    Party VARCHAR (5) NOT NULL,
    state_po VARCHAR (5) NOT NULL,
    Number_of_Cosponsors INT
    PRIMARY KEY (id)
    );

LOAD DATA INFILE 'c:/ETL_Group_project/data/clean/congress_bills_on_debt_data.csv' 
INTO TABLE congress_bills_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

Create table election_data  (
     id INT NOT NULL AUTO_INCREMENT,
     year varchar(4),
     state varchar(25),
     state_po char(2),
     special boolean,
     candidate varchar(50),
     party varchar(50),
     writein boolean,
     candidatevotes  int(11),
     totalvotes  int(11),
     winner      char(1),
     percent     decimal,
     incumbent   varchar(50),
     is_incumbent  boolean, 
     duplicate     boolean,
     otherthanna   boolean
     PRIMARY KEY (id)
);


LOAD DATA INFILE 'c:/ETL_Group_project/data/clean/1976-2018-senate.csv' 
INTO TABLE election_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE debt (
    id INT NOT NULL AUTO_INCREMENT,
    state_po VARCHAR(2) NOT NULL,
    debt_auto INT,
    pct_auto_delinq DOUBLE,
    debt_cc INT,
    pct_cc_delinq DOUBLE,
	debt_mortg INT,
    pct_mortg_delinq DOUBLE,
    debt_stloan INT,
    pct_stloan_delinq DOUBLE,
    PRIMARY KEY (id)
);

LOAD DATA INFILE 'c:/ETL_Group_project/data/clean/debt.csv' 
INTO TABLE debt
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
    
    
