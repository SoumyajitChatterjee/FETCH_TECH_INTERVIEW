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
-- When considering average spend from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?
WITH avg_receipt_spend AS (
	SELECT receipt_reward_status_str, 
		AVG(total_spent) avg_spent,
        RANK() OVER( ORDER BY receipt_reward_status_str DESC) as avg_rank
		FROM item_scan_view
        GROUP BY receipt_reward_status_str
)
SELECT receipt_reward_status_str,  avg_spent
	FROM avg_receipt_spend
WHERE  avg_rank = 1;