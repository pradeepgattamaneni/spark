select job_title,TJob,year from(select rank() over(partition by year order by TJob desc)as rank_1,TJob,job_title,year from(select AVG(prevailing_wage)as TJob,job_title,year from h1b_final where full_time_position ='Y' and prevailing_wage is not null group by job_title,year)a)b;

select job_title,TJob,year from(select rank() over(partition by year order by TJob desc)as rank_1,TJob,job_title,year from(select AVG(prevailing_wage)as TJob,job_title,year from h1b_final where full_time_position ='N' and prevailing_wage is not null group by job_title,year)a)b;




