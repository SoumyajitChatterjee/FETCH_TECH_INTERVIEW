CREATE TABLE IF NOT EXISTS rewards_receipt_status_dim(
	id 				 								INT NOT NULL,
    rewards_receipt_status_key    	                INT NOT NULL,
    rewards_receipt_status				            VARCHAR(100),
    status											VARCHAR(1),
    deactivate_date							        DATE
);

ALTER TABLE rewards_receipt_status_dim
	ADD CONSTRAINT pk_rewards_receipt_status_dim_id PRIMARY KEY(id);
    
INSERT INTO rewards_receipt_status_dim(
id,rewards_receipt_status_key,rewards_receipt_status,status,deactivate_date
)VALUES(
1,6001,"Accepted","A",NULL
);

INSERT INTO rewards_receipt_status_dim(
id,rewards_receipt_status_key,rewards_receipt_status,status,deactivate_date
)VALUES(
2,6002,"Accepted","A",NULL
);

INSERT INTO rewards_receipt_status_dim(
id,rewards_receipt_status_key,rewards_receipt_status,status,deactivate_date
)VALUES(
3,6003,"Accepted","R","2023-02-12"
);
COMMIT;