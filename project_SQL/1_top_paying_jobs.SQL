/*
question: What are the top paying data analsyst jobs?
-identify the top paying data analyst jobs roles that are available remotely
-focus on job postings specified salaries (without null values)
*/
SELECT
    job_id,
    job_title,
    job_location,
    company_dim.name as company_name,
    job_schedule_type,
    salary_year_avg,
    job_posted_date :: date
FROM job_postings_fact LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short='Data Analyst'
AND salary_year_avg IS NOT NULL AND job_location='Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10;
