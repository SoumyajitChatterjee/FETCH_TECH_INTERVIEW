-- What are the top 5 brands by receipts scanned for most recent month?

WITH recent_year_month AS (
SELECT MAX(dd.date) as `date`,MAX(dd.year) as `year`, MAX(dd.month) as `month`
FROM receipt_fact rf
JOIN date_dim dd
	ON rf.purchase_date_key = dd.date_key
),
recent_year_month_brands AS (
SELECT  bd.brand_name, COUNT(bd.brand_name) total_receipts_scanned
FROM receipt_fact rf
JOIN date_dim dd
	ON rf.purchase_date_key = dd.date_key
 JOIN recent_year_month rym
	ON dd.year = rym.`year` AND dd.month = rym.`month`
JOIN brand_dim bd
	ON bd.brand_key = rf.brand_key
GROUP BY bd.brand_name
),
recent_year_month_brands_rank AS(
	SELECT brand_name, ROW_NUMBER() OVER(ORDER BY total_receipts_scanned DESC ) total_receipts_scanned_rank
    FROM  recent_year_month_brands
) 
SELECT brand_name, total_receipts_scanned_rank
FROM recent_year_month_brands_rank
WHERE total_receipts_scanned_rank <= 5;