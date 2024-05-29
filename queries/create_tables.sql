
-- no primary key
CREATE TABLE object (
    course_id VARCHAR(50) NOT NULL,
    module_id VARCHAR(50) NOT NULL,
    category VARCHAR(50),
    children VARCHAR(100),
    tstart DATETIME
);


-- enrollment tables
CREATE TABLE enrollment_train (
    enrollment_id INTEGER NOT NULL,
    username VARCHAR(50),
    course_id VARCHAR(50),
    PRIMARY KEY (enrollment_id)
);


CREATE TABLE enrollment_valid (
    enrollment_id INTEGER NOT NULL,
    username VARCHAR(50),
    course_id VARCHAR(50),
    PRIMARY KEY (enrollment_id)
);


CREATE TABLE enrollment_test (
    enrollment_id INTEGER NOT NULL,
    username VARCHAR(50),
    course_id VARCHAR(50),
    PRIMARY KEY (enrollment_id)
);


-- log tables
CREATE TABLE log_train (
    enrollment_id INTEGER NOT NULL,
    tstamp TIMESTAMP,
    source VARCHAR(50),
    logged_event VARCHAR(50),
    object VARCHAR(50),
    FOREIGN KEY (enrollment_id) REFERENCES enrollment_train(enrollment_id)
);

CREATE TABLE log_valid (
    enrollment_id INTEGER NOT NULL,
    tstamp TIMESTAMP,
    source VARCHAR(50),
    logged_event VARCHAR(50),
    object VARCHAR(50),
    FOREIGN KEY (enrollment_id) REFERENCES enrollment_valid(enrollment_id)
);

CREATE TABLE log_test (
    enrollment_id INTEGER NOT NULL,
    tstamp TIMESTAMP,
    source VARCHAR(50),
    logged_event VARCHAR(50),
    object VARCHAR(50),
    FOREIGN KEY (enrollment_id) REFERENCES enrollment_test(enrollment_id)
);


-- truth tables
CREATE TABLE truth_train (
    enrollment_id INTEGER NOT NULL,
    dropped_out BOOLEAN,
    FOREIGN KEY (enrollment_id) REFERENCES enrollment_train(enrollment_id)
);

CREATE TABLE truth_valid (
    enrollment_id INTEGER NOT NULL,
    dropped_out BOOLEAN,
    FOREIGN KEY (enrollment_id) REFERENCES enrollment_valid(enrollment_id)
);

CREATE TABLE truth_test (
    enrollment_id INTEGER NOT NULL,
    dropped_out BOOLEAN,
    FOREIGN KEY (enrollment_id) REFERENCES enrollment_test(enrollment_id)
);