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

 -- Which brand has the most spend among users who were created within the past 6 months?
WITH most_spent_brand AS(
SELECT brand_name, SUM(total_spent) tot_spent_by_brand
		FROM item_scan_view
        WHERE user_create_date >= DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH)), INTERVAL 1 DAY)
        GROUP BY brand_name
        ORDER BY tot_spent_by_brand
), most_spent_brand_by_rank AS(
SELECT brand_name, tot_spent_by_brand, RANK() OVER(ORDER BY tot_spent_by_brand DESC ) rank_spent
		FROM most_spent_brand
)
SELECT * 
		FROM most_spent_brand_by_rank
	WHERE rank_spent = 1;