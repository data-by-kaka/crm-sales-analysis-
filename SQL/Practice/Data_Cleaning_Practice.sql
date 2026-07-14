Use CRM_db;

SELECT * FROM dbo.sales_pipeline;

SELECT * FROM sales_pipeline;
SELECT * FROM products;
SELECT * FROM accounts;
SELECT * FROM sales_teams;

UPDATE sales_pipeline
SET Account = 'No Information'
WHERE Account IS NULL;

UPDATE book
SET Manager_ID = 4
WHERE Employee_ID = 10;

UPDATE sales_pipeline
SET Close_Value = 0
WHERE Close_Value IS NULL;

SELECT * FROM sales_pipeline 
WHERE deal_stage IN ('Prospecting', 'Engaging');

SELECT deal_stage,
	FORMAT(COUNT(*), 'N0') AS Total 
FROM sales_pipeline 
GROUP BY deal_stage
ORDER BY COUNT(*) DESC;

SELECT deal_stage,
	COUNT(*) AS Total 
FROM sales_pipeline 
GROUP BY deal_stage
ORDER BY COUNT(*) DESC;

/* Account*/
SELECT * FROM sales_teams
WHERE sales_agent IS NULL
OR manager IS NULL
OR regional_office IS NULL;

