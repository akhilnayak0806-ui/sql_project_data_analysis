WITH Skills_demand as (
SELECT skills,skills_job_dim.skill_id,

count(skills_job_dim.job_id)as skill_count
from job_postings_fact INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_postings_fact.job_title_short='Data Analyst' and job_work_from_home =TRUE and salary_year_avg is NOT NULL
GROUP BY skills_job_dim.skill_id,skills
ORDER BY skill_count DESC
),


 average_salary as (
SELECT skills,skills_job_dim.skill_id,
round(AVG(salary_year_avg),0) as avg_salary
from job_postings_fact INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_postings_fact.job_title_short='Data Analyst' and job_postings_fact.salary_year_avg is NOT NULL
GROUP BY skills_job_dim.skill_id,skills
ORDER BY avg_salary DESC
)
select skills_demand.skill_id,Skills_demand.skills, skill_count, avg_salary
from Skills_demand INNER JOIN average_salary ON Skills_demand.skill_id = average_salary.skill_id
WHERE skill_count > 10
ORDER BY 
avg_salary DESC,skill_count DESC