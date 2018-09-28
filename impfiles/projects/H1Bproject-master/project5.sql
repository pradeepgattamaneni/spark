--CREATE TABLE h1b_applications(s_no int,case_status string, employer_name string, soc_name string, job_title string, full_time_position string,prevailing_wage int,year string, worksite string, longitute double, latitute double )
--ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = "\"")STORED AS TEXTFILE;
 select job_title,count(case_status) as temp,year from h1b_applications where year='2011' group by job_title,year order by temp desc limit 10;
 select job_title,count(case_status) as temp,year from h1b_applications where year='2012' group by job_title,year order by temp desc limit 10;
 select job_title,count(case_status) as temp,year from h1b_applications where year='2013' group by job_title,year order by temp desc limit 10;
 select job_title,count(case_status) as temp,year from h1b_applications where year='2014' group by job_title,year order by temp desc limit 10;
 select job_title,count(case_status) as temp,year from h1b_applications where year='2015' group by job_title,year order by temp desc limit 10;
 select job_title,count(case_status) as temp,year from h1b_applications where year='2016' group by job_title,year order by temp desc limit 10;







--Kill Command = /usr/local/hadoop/bin/hadoop job  -kill job_1492693298138_0003

