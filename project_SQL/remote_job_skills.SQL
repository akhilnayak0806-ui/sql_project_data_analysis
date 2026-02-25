with remote_job_skills as (
SELECT
      skill_id,
      count(*) as skill_count
      from skills_job_dim INNER JOIN job_postings_fact ON skills_job_dim.job_id = job_postings_fact.job_id
      where job_postings_fact.job_title_short='Data Analyst'and
      job_postings_fact.job_work_from_home=TRUE
      GROUP BY skill_id)
      SELECT
      remote_job_skills.skill_id,
      skills_dim.skills as skill_name
      FROM remote_job_skills INNER JOIN skills_dim ON remote_job_skills.skill_id = skills_dim.skill_id
       ORDER BY skill_count DESC
       LIMIT 10;
SELECT skills,
count(skills_job_dim.job_id)as skill_count
from job_postings_fact INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_postings_fact.job_title_short='Data Analyst' and job_work_from_home =TRUE
GROUP BY skills
ORDER BY skill_count DESC
LIMIT 5;