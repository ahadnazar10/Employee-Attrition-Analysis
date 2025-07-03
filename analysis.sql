---1. Total Number of Employees
SELECT COUNT(*) AS total_employees
FROM emp_data;

---2. Overall Attrition Rate
SELECT 
    ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM emp_data;

---3. Attrition by Department
SELECT 
    ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM emp_data;

---4. Attrition by Job Role
SELECT job_role,
       COUNT(*) AS total_employees,
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
       ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM emp_data
GROUP BY job_role
ORDER BY attrition_rate_percent DESC;

---5. Attrition by Age Band
SELECT age_band,
       COUNT(*) AS total_employees,
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
       ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM emp_data
GROUP BY age_band
ORDER BY age_band;

---6. Job Satisfaction by Department
SELECT department, 
       ROUND(AVG(job_satisfaction), 2) AS avg_job_satisfaction
FROM emp_data
GROUP BY department
ORDER BY avg_job_satisfaction DESC;

---7. Gender and Attrition
SELECT gender,
       COUNT(*) AS total_employees,
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
       ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM emp_data
GROUP BY gender;

---8. Marital Status and Attrition
SELECT marital_status,
       COUNT(*) AS total_employees,
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
       ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM emp_data
GROUP BY marital_status;

---9. Education Level and Attrition
SELECT education,
       COUNT(*) AS total_employees,
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
       ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM emp_data
GROUP BY education;

---10. Business Travel Frequency and Attrition
SELECT business_travel,
       COUNT(*) AS total_employees,
       SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
       ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM emp_data
GROUP BY business_travel;

