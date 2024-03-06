CREATE TABLE receipt(
			receipt_id 									INT NOT NULL,
			bonus_points_earned		 			DOUBLE NOT NULL,
			create_date 								DATE NOT NULL,
			date_scanned 							DATE NOT NULL,
			finished_date 								DATE NOT NULL, 
			modify_date 								DATE NOT NULL,
			points_awarded_date 					DATE NOT NULL,
			points_earned 							DOUBLE,
			purchase_date 							DATE NOT NULL,
			purchased_item_count				INT ,
			rewards_receipt_item_code 		VARCHAR(100) NOT NULL,
			rewards_receipt_status 				BOOLEAN NOT NULL,
			total_spent 									DOUBLE NOT NULL,
			app_user_id 								VARCHAR(100)
);

ALTER TABLE receipt ADD CONSTRAINT pk_receipt_receipts_id PRIMARY KEY(receipt_id);

ALTER TABLE receipt ADD  CONSTRAINT fk_receipt_user_id FOREIGN KEY (app_user_id)  REFERENCES user(app_user_id);


INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1315, 100, '2024-02-29', 
			'2024-02-29', '2024-02-29', '2024-02-29', 
            '2024-02-29', 120, '2024-02-29', 
            1, '120', TRUE, 
            10.12, '1716'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1316, 100, '2024-02-29',
            '2024-02-29', '2024-02-29', '2024-02-29', 
            '2024-02-29', 110, '2024-02-29', 
            1, '121', TRUE, 
            32, '1716'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1317	,100,	'2024-02-29',	
            '2024-02-29',	'2024-02-29',	'2024-02-29',	
            '2024-02-29',	110	,'2024-02-29',
            1,122, TRUE,
            10.13,'1716'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1318	,100,	'2024-02-29',	
            '2024-02-29',  '2024-02-29' ,'2024-02-29',
            '2024-02-29',	110,	'2024-02-29',
            1	,123	,TRUE	,
            11.12,	'1716'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1319	,200,	'2024-02-29',	
            '2024-02-29',	'2024-02-29',	'2024-02-29',	
            '2024-02-29',	210, '2024-02-29',
            10,124	,TRUE,
            21	,'1712'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1320	,100,	'2024-02-29',	
            '2024-02-29',	'2024-02-29',	'2024-02-29',	
            '2024-02-29', 110,'2024-02-29', 
            22	,125	,TRUE	,
            42	,'1712'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1321	,200,	'2024-02-29',	
            '2024-02-29',	'2024-02-29',	'2024-02-29',	
            '2024-02-29',	210	,'2024-02-29',
            1	,125	,TRUE	,
            35	,'1712'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1322	,100,	'2024-02-29',	
            '2024-02-29',	'2024-02-29',	'2024-02-29',	
            '2024-02-29',	110	,'2024-02-29'	,
            25	,125	,TRUE	,
            85	,'1712'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1323, 100, '2024-01-29', 
            '2024-01-29', '2024-01-29', '2024-01-29',
            '2024-01-29', 110, '2024-01-29', 
            1, 123, TRUE, 
            11.12, '1716'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1324, 200, '2024-01-29', 
            '2024-01-29','2024-01-29', '2024-01-29', 
            '2024-01-29', 210,'2024-01-29', 
            10, 124, TRUE, 
            1.09, '1712'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1325, 100, '2024-01-29',
            '2024-01-29', '2024-01-29', '2024-01-29', 
            '2024-01-29', 110, '2024-01-29', 
            22, 125, TRUE, 
            213, '1721'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1326, 200, '2024-01-29', 
            '2024-01-29', '2024-01-29', '2024-01-29', 
            '2024-01-29', 210, '2024-01-29', 
            1, 125, TRUE, 
            224, '1721'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1327, 100, '2024-01-29', 
            '2024-01-29', '2024-01-29', '2024-01-29', 
            '2024-01-29', 110, '2024-01-29',
            25, 125, TRUE, 
            215, '1721'
);

INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
		1328, 100, '2024-01-29', 
        '2024-01-29', '2024-01-29', '2024-01-29',
        '2024-01-29', 110, '2024-01-29', 
        1, 123, FALSE, 
        1721, '1716'
);
INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1329, 200, '2024-01-29', 
            '2024-01-29', '2024-01-29', '2024-01-29',
            '2024-01-29', 210, '2024-01-29', 
            10, 124, FALSE, 
            12, '1712'
);
INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1330, 100, '2024-01-29', 
            '2024-01-29', '2024-01-29', '2024-01-29',
            '2024-01-29', 110, '2024-01-29', 
            22, 125, FALSE, 
            11, '1712'
);
INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1331, 200, '2024-01-29',
            '2024-01-29', '2024-01-29', '2024-01-29', 
            '2024-01-29', 210, '2024-01-29', 
            1, 125, FALSE, 
            21, '1712'
);
INSERT INTO receipt
(
			receipt_id, bonus_points_earned,create_date,
            date_scanned, finished_date, modify_date,
            points_awarded_date, points_earned , purchase_date,
            purchased_item_count, rewards_receipt_item_code, rewards_receipt_status,
            total_spent, app_user_id
) VALUES (
			1332, 100, '2024-01-29', 
            '2024-01-29', '2024-01-29', '2024-01-29', 
            '2024-01-29', 110, '2024-01-29', 
            25, 125, FALSE, 
            30, '1712'
);

COMMIT;
