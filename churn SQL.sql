CREATE DATABASE customer_churn;
USE customer_churn;

SHOW TABLES;
SELECT *
FROM cleaned_churn_data
LIMIT 10;

SELECT COUNT(*) AS total_customers
FROM cleaned_churn_data;

DESCRIBE cleaned_churn_data;

SELECT Churn,
       COUNT(*) AS customers
FROM cleaned_churn_data
GROUP BY Churn;

SELECT Churn,
       ROUND(
           COUNT(*) * 100.0 /
           (SELECT COUNT(*) FROM cleaned_churn_data),
           2
       ) AS churn_percentage
FROM cleaned_churn_data
GROUP BY Churn;

SELECT Contract,
       Churn,
       COUNT(*) AS customers
FROM cleaned_churn_data
GROUP BY Contract, Churn;


SELECT Churn,
       ROUND(AVG(MonthlyCharges), 2)
       AS avg_monthly_charges
FROM cleaned_churn_data
GROUP BY Churn;


SELECT Churn,
       ROUND(AVG(tenure), 2)
       AS avg_tenure
FROM cleaned_churn_data
GROUP BY Churn;


SELECT PaymentMethod,
       Churn,
       COUNT(*) AS customers
FROM cleaned_churn_data
GROUP BY PaymentMethod, Churn
ORDER BY customers DESC;


SELECT SeniorCitizen,
       Churn,
       COUNT(*) AS customers
FROM cleaned_churn_data
GROUP BY SeniorCitizen, Churn;

