CREATE TABLE IF NOT EXISTS receipt_fact(
	id 				 								INT NOT NULL,
    receipt_item_code    					        INT NOT NULL,
    brand_key									    INT NOT NULL,
    item_key										INT  NOT NULL,
    rewards_key								        INT  NOT NULL,
    user_key										INT NOT NULL,
    create_date_key							        INT  NOT NULL,
    modify_date_key							        INT  NOT NULL,
    purchase_date_key						        INT NOT NULL,
    rewards_receipt_status_key		                INT NOT NULL,
    purchase_item_count					            INT NOT NULL,
    total_spent									    DOUBLE NOT NULL,
    rewards_points_earned				            DOUBLE NOT NULL
);

ALTER TABLE receipt_fact
	ADD CONSTRAINT pk_receipt_fact_id PRIMARY KEY(id);

    
INSERT INTO receipt_fact(
	id, receipt_item_code, brand_key, item_key,
	rewards_key,user_key,create_date_key,
	modify_date_key,purchase_date_key,rewards_receipt_status_key,
	purchase_item_count,total_spent,rewards_points_earned
)VALUES(
	1,7001,1001,3001,
	5001,2001,4004,
	4004,4004,6001,
	2,20,110
);


INSERT INTO receipt_fact(
id, receipt_item_code, brand_key, item_key,
rewards_key,user_key,create_date_key,
modify_date_key,purchase_date_key,rewards_receipt_status_key,
purchase_item_count,total_spent,rewards_points_earned
)VALUES(
2,7002,1001,3002,
	5001,2001,4004,
	4001,4004,6001,
	2,20,110
);

INSERT INTO receipt_fact(
	id, receipt_item_code, brand_key, item_key,
	rewards_key,user_key,create_date_key,
	modify_date_key,purchase_date_key,rewards_receipt_status_key,
	purchase_item_count,total_spent,rewards_points_earned
)VALUES(
	3,7003,1002,3003,
	5001,2001,4001,
	4001,4001,6001,
	2,20,3
);

INSERT INTO receipt_fact(
	id, receipt_item_code, brand_key, item_key,
	rewards_key,user_key,create_date_key,
	modify_date_key,purchase_date_key,rewards_receipt_status_key,
	purchase_item_count,total_spent,rewards_points_earned
)VALUES(
	4,7004,1003,3002,
	5001,2001,4002,
	4001,4001,6001,
	2,20,3
);

INSERT INTO receipt_fact(
	id, receipt_item_code, brand_key, item_key,
	rewards_key,user_key,create_date_key,
	modify_date_key,purchase_date_key,rewards_receipt_status_key,
	purchase_item_count,total_spent,rewards_points_earned
)VALUES(
	5,7005,1004,3002,
	5001,2001,4002,
	4001,4001,6001,
	2,20,3
);

INSERT INTO receipt_fact(
	id, receipt_item_code, brand_key, item_key,
	rewards_key,user_key,create_date_key,
	modify_date_key,purchase_date_key,rewards_receipt_status_key,
	purchase_item_count,total_spent,rewards_points_earned
)VALUES(
	6,7006,1004,3001,
	5001,2001,4001,
	4001,4001,6001,
	2,20,3
);

INSERT INTO receipt_fact(
id, receipt_item_code, brand_key, item_key,
rewards_key,user_key,create_date_key,
modify_date_key,purchase_date_key,rewards_receipt_status_key,
purchase_item_count,total_spent,rewards_points_earned
)VALUES(
	7,7007,1001,3001,
	5001,2001,4003,
	4001,4001,6001,
	2,20,3
);

COMMIT;