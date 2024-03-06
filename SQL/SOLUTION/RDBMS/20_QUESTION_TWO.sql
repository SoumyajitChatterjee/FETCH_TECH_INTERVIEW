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
-- When considering total number of items purchased from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?

WITH count_by_receipt_reward_status AS (
	SELECT receipt_reward_status_str, COUNT(*)  as receipt_counts, RANK() OVER( ORDER BY receipt_reward_status_str ) as count_rank
		FROM item_scan_view
	GROUP BY receipt_reward_status_str
        ORDER BY receipt_counts DESC
)
SELECT receipt_reward_status_str,  receipt_counts
	FROM count_by_receipt_reward_status
WHERE  count_rank = 1;