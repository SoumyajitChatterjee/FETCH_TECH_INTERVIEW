CREATE TABLE IF NOT EXISTS reward_item	(
	reward_items_id 							INT,
	barcode 										VARCHAR(15) NOT NULL,
	rewards_group 							VARCHAR(100),
	points_earned 							DOUBLE,
	rewards_product_partnerId 		VARCHAR(25)
);

ALTER TABLE reward_item 
	ADD  CONSTRAINT pk_reward_items_id PRIMARY KEY(reward_items_id);

ALTER TABLE reward_item 
	ADD  CONSTRAINT uk_barcode UNIQUE KEY(barcode);

ALTER TABLE reward_item
		ADD CONSTRAINT fk_reward_item_bar_code FOREIGN KEY (barcode)
			REFERENCES item(barcode);



INSERT INTO reward_item
(					reward_items_id, barcode, rewards_group,
					points_earned, rewards_product_partnerId
) VALUES (
				1222,	"14781919", 	"Starbucks", 	
                20	,"559c2234e4b06aca36af13c6"	
);

INSERT INTO reward_item
(					reward_items_id, barcode, rewards_group,
					points_earned, rewards_product_partnerId
) VALUES (
					1223,	"32781919"	,"Starbucks",
                    10	,"600c2234e4b06aca36af13c6"
);

     
INSERT INTO reward_item 
(					reward_items_id, barcode, rewards_group,
					points_earned, rewards_product_partnerId
) VALUES (
				1224	,"15781919", "Walmart",	
                10,	"600c2234e4b06aca36af456"
);
 
INSERT INTO reward_item 
(					reward_items_id, barcode, rewards_group,
					points_earned, rewards_product_partnerId
) VALUES (
					1226,	"34781919"	, "Target",	
                    10	,"900c2234e4b06aca36af459"
);

INSERT INTO reward_item 
(					reward_items_id, barcode, rewards_group,
					points_earned, rewards_product_partnerId
) VALUES (
					1227,	"90781919"	,"Staples"	,
                    10	,"600c2234e4b06aca36af4510"
);

INSERT INTO reward_item 
(					reward_items_id, barcode, rewards_group,
					points_earned, rewards_product_partnerId
) VALUES (
					1225	,"22781919"	,"KMART"	,10	,"800c2234e4b06aca36af"
);

COMMIT;