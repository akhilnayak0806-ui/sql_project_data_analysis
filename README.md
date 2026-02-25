# Introduction
📊 Dive into the data job market! Focusing on data analyst role, this project explores 💸 top-paying jobs, 🔥 in-demand skills, and 📈 where high demand meets high salary in data analytics.
💡
🔍 SQL queries? Check them out here: [project_sql_folder](/project_SQL/)

# Background
📖 Background

Driven by a quest to understand the data analyst job market more effectively, this project was born from a desire to pinpoint top-paid and in-demand skills. The goal is to explore real-world job trends and gain insights that can help professionals and students make better career decisions.

From identifying high-paying roles to understanding which skills are most valued by employers, this analysis provides a structured and data-driven approach to career growth in the field of data analytics.

# Tools I Used


For this project, I used the following tools and technologies:

- SQL – For data extraction, cleaning, transformation, and advanced querying.
- PostgreSQL – As the primary database system for storing and managing large datasets.
- VS Code – For writing and executing SQL queries efficiently.
- Git & GitHub – For version control, collaboration, and portfolio development.
- Excel / CSV files – For initial data exploration and dataset management.

These tools helped ensure accuracy, scalability, and efficiency throughout the analysis process.


# The Analysis 
Each query for this project aimed at investigating specific aspects of data analyst job market.
Here is how I approached each question
## 1. Top paying Data Analyst Jobs
```sql
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
```
Here is the breakdown of the top Data Analyst jobs in 2025:


 - **Wide Salary Range:** Top 10 paying data analysty roles span from $184,000 to $650,000,indicating significant salary potential in the field 

- **Diverse Employeers:** Companies like Smart asset,Meta,and AT&T are among those offering high salaries showing a broad intrest across different industries.

- **Job Titlt Variety:** There is a high diversity in job titles, from data analyst to director of Analytics, reflecting varied roles and specalization within data analytics.

# What I Learned

Throughout this adventure, I've turbocharged my SQL toolkit with some serious firepower:

- **Complex Query Crafting:** Mastered the art of advanced  SQL,merging tables like a pro  and wielding with clauses for ninja-level temp table maneuvers.

- **Data Aggregation:** Got cozy with group by and turned aggregate functions like count() and AVG () into my data summarizing sidekicks.

- **💡Analytical Wizardry:** Leveled up my real-world puzzle solving skills,turning questions into actionable, insightful SQL queries.

# Conclusion

### insights
📊 Insights

- Top-Paying Data Analyst Jobs
This analysis identifies the highest-paying Data Analyst roles and explores the wide salary range across different job positions. It highlights opportunities for professionals aiming to maximize earning potential in the data analytics field.

- Skills for High-Paying Jobs
The results show that advanced proficiency in SQL is a critical requirement for top-paying Data Analyst roles. This indicates that mastering SQL is essential for candidates targeting high-salary positions in data analytics.

- Most In-Demand Skills
The study reveals the most frequently required skills across job postings. SQL stands out as a core competency, making it a foundational skill for aspiring data analysts to focus on.

- Higher Salaries with Specialized Skills
Specialized technical skills such as Python, SQL, and cloud technologies are strongly associated with higher average salaries. These skills increase employability and provide a competitive advantage in the job market.

- Optimal Skills for Job Market Value
The best strategy for career growth is to develop skills that balance high demand and strong salary potential. This data-driven approach helps professionals maximize their market value and long-term career opportunities.

### Closing Thoughts
This project enhanced my SQL skills provided valuable insights into the data analyst job market. The findings from the analysis serve as a guide to priortize skill devolpment and job search efforts. Aspiring data analysts can better position themselves in a competitive job market by focusing on high demand, high-salary skills. This exploration highlights the importance of continous learning and adaptation to emerging trends in the field of data analyst.



