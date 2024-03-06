-- temp  view
CREATE OR REPLACE VIEW item_scan_view AS
(
		SELECT b.brand_name  brand_name, i.barcode item_code, 
			   r.date_scanned receipt_scanned_date, month(r.date_scanned) receipt_scanned_month, 
			   year(r.date_scanned) receipt_scanned_year, r.rewards_receipt_status as reward_status_int, 
			   IF(r.rewards_receipt_status = 1, 'Accepted', 'Rejected') as receipt_reward_status_str,
			   i.final_price as item_final_price, r.app_user_id as user_id, u.create_date as user_create_date, r.total_spent as total_spent
		FROM  receipt r
			JOIN receipts_assoc ra 
				ON r.rewards_receipt_item_code = ra.rewards_receipt_item_code
			JOIN item i
				ON ra.barcode = i.barcode
			JOIN brand b
				ON b.brand_code = i.brand_code
			JOIN user u 
				ON r.app_user_id = u.app_user_id
); 
-- What are the top 5 brands by receipts scanned for most recent month?-- 

WITH scanned_by_year_and_month AS(
SELECT  MAX(receipt_scanned_year) `year`,  MAX(receipt_scanned_month)  `month`
	FROM item_scan_view
),
scanned_by_year_and_month_tot_scanned_receipt AS (
    SELECT brand_name,  COUNT(*) tot_scanned_receipt
	FROM scanned_by_year_and_month sbyam
    JOIN item_scan_view isv
		ON isv.receipt_scanned_year = sbyam.`year` and isv.receipt_scanned_month = sbyam.`month`
	GROUP BY brand_name
),
scanned_by_year_and_month_tot_scanned_receipt_rank AS(
SELECT brand_name, ROW_NUMBER() OVER(ORDER BY tot_scanned_receipt DESC) tot_scanned_receipt_rank
FROM scanned_by_year_and_month_tot_scanned_receipt
)
SELECT brand_name, tot_scanned_receipt_rank
FROM scanned_by_year_and_month_tot_scanned_receipt_rank
WHERE tot_scanned_receipt_rank <= 5;
