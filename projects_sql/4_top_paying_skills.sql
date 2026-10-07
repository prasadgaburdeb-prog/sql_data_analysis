/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
– Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and
helps identify the most financially rewarding skills to acquire or improve
*/

select skills,
       round(avg(salary_year_avg), 0) as avg_salary
from job_postings_fact
inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_title ilike 'Data analyst' and salary_year_avg is not null
group by skills
order by avg_salary desc
limit 25;

/*
TOP-PAYING JOB SKILL TRENDS

The highest average salary in this list is associated with
Golang ($145,000). Redis is next at $128,500, followed by Elasticsearch ($118,000) and DynamoDB ($115,000).

Key trends:
• The top of the list includes programming and infrastructure skills such as 
  Golang, Redis, Elasticsearch, and DynamoDB.
• Machine-learning tools also appear among the higher-paid skills: PyTorch and TensorFlow 
  average $112,500, and scikit-learn averages $111,229.
• Data engineering and platform tools—including Kafka, Airflow, SSIS, and IBM Cloud—cluster around $104,000.
• Most skills in the lower portion of the list average between $100,000 and $105,606.

Overall, the list suggests that specialized programming, database, cloud, and machine-learning skills are associated with 
higher average salaries than many of the listed analytics and data-platform tools. 
Golang’s average is $44,750 higher than the lowest listed average of $100,000.

[
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "redis",
    "avg_salary": "128500"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "118000"
  },
  {
    "skills": "dynamodb",
    "avg_salary": "115000"
  },
  {
    "skills": "pytorch",
    "avg_salary": "112500"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "112500"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "111229"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "111175"
  },
  {
    "skills": "npm",
    "avg_salary": "111175"
  },
  {
    "skills": "unify",
    "avg_salary": "111175"
  },
  {
    "skills": "jupyter",
    "avg_salary": "105606"
  },
  {
    "skills": "mongo",
    "avg_salary": "104625"
  },
  {
    "skills": "kafka",
    "avg_salary": "104529"
  },
  {
    "skills": "airflow",
    "avg_salary": "104342"
  },
  {
    "skills": "ssis",
    "avg_salary": "104322"
  },
  {
    "skills": "ibm cloud",
    "avg_salary": "104083"
  },
  {
    "skills": "cassandra",
    "avg_salary": "101250"
  },
  {
    "skills": "qlik",
    "avg_salary": "100960"
  },
  {
    "skills": "nosql",
    "avg_salary": "100750"
  },
  {
    "skills": "chef",
    "avg_salary": "100500"
  },
  {
    "skills": "swift",
    "avg_salary": "100250"
  },
  {
    "skills": "keras",
    "avg_salary": "100000"
  },
  {
    "skills": "mxnet",
    "avg_salary": "100000"
  },
  {
    "skills": "chainer",
    "avg_salary": "100000"
  },
  {
    "skills": "puppet",
    "avg_salary": "100000"
  }
]
*/