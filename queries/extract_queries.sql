

-- enrollment ------------------------------
-- amount of courses each student has taken
SELECT username, COUNT(*) as cnt 
FROM enrollment_train 
GROUP BY username 
ORDER BY cnt;

-- amount of enrolled students per course
SELECT course_id, COUNT(*) as cnt 
FROM enrollment_train 
GROUP BY course_id 
ORDER BY cnt;


-- log -------------------------------------
-- number of times each particular event was logged for every enrollment_id
SELECT enrollment_id, logged_event, COUNT(*) AS event_count
FROM log_train
GROUP BY enrollment_id, logged_event;

-- average timestamp for each event for each enrollment_id
SELECT enrollment_id, logged_event, FROM_UNIXTIME(AVG(UNIX_TIMESTAMP(tstamp))) AS avg_timestamp
FROM log_train
GROUP BY enrollment_id, logged_event;

-- min and max timestamps for each event for each enrollment_id
SELECT enrollment_id, logged_event, MIN(tstamp) AS min_timestamp, MAX(tstamp) AS max_timestamp
FROM log_train
GROUP BY enrollment_id, logged_event;

-- total time elapsed from the first to the last instance of each event of each enrollment_id
SELECT enrollment_id, logged_event, 
       TIMESTAMPDIFF(SECOND, MIN(tstamp), MAX(tstamp)) AS total_time_elapsed
FROM log_train
GROUP BY enrollment_id, logged_event;

-- overall average timestamp for each enrollment_id
SELECT enrollment_id, FROM_UNIXTIME(AVG(UNIX_TIMESTAMP(tstamp))) AS overall_avg_timestamp
FROM log_train
GROUP BY enrollment_id;


-- object ---------------------------------
-- number of components for each course_id
SELECT course_id, COUNT(*) AS component_count
FROM object
GROUP BY course_id;



