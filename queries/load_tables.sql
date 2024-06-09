-- object
-- LOAD DATA LOCAL INFILE 'C:\\Users\\Jorda\\KDDCup 2015\\data\\ObjectData\\object.csv'
-- INTO TABLE object
-- FIELDS TERMINATED BY ','
-- IGNORE 1 ROWS;


-- enrollment
LOAD DATA LOCAL INFILE 'C:\\Users\\Jorda\\KDDCup 2015\\data\\train\\enrollment_train.csv'
INTO TABLE enrollment
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\Jorda\\KDDCup 2015\\data\\validation\\enrollment_train.csv'
INTO TABLE enrollment
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\Jorda\\KDDCup 2015\\data\\test\\enrollment_train.csv'
INTO TABLE enrollment
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;


-- log
LOAD DATA LOCAL INFILE 'C:\\Users\\Jorda\\KDDCup 2015\\data\\train\\log_train.csv'
INTO TABLE log
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\Jorda\\KDDCup 2015\\data\\validation\\log_train.csv'
INTO TABLE log
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\Jorda\\KDDCup 2015\\data\\test\\log_train.csv'
INTO TABLE log
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;


-- truth
LOAD DATA LOCAL INFILE 'C:\\Users\\Jorda\\KDDCup 2015\\data\\train\\truth_train.csv'
INTO TABLE truth
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\Jorda\\KDDCup 2015\\data\\validation\\truth_train.csv'
INTO TABLE truth
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\Jorda\\KDDCup 2015\\data\\test\\truth_train.csv'
INTO TABLE truth
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;