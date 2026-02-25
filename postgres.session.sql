create table january_job_postings as
select *
from job_postings_fact

where extract(month from job_posted_date)=1;
create table february_job_postings as
select *
from job_postings_fact

where extract(month from job_posted_date)=2;
create table march_job_postings as
select *
from job_postings_fact

where extract(month from job_posted_date)=3;