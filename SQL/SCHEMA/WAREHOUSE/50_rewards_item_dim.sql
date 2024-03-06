CREATE TABLE IF NOT EXISTS rewards_item_dim(
	id 				 						INT NOT NULL,
    rewards_key    					        INT NOT NULL,
    rewards_group					        VARCHAR(100) NOT NULL,
    rewards_points 					        INT,
    status									VARCHAR(1) NOT NULL,
    deactivate_date 					    DATE		
);

ALTER TABLE rewards_item_dim
	ADD CONSTRAINT pk_rewards_item_dim_id PRIMARY KEY(id);
    
ALTER TABLE rewards_item_dim
	ADD CONSTRAINT uk_rewards_item_dim_id UNIQUE(rewards_group);


INSERT INTO rewards_item_dim(
id,rewards_key,rewards_group,rewards_points,status,deactivate_date
)VALUES(
1,5001,"reward_group_1",20,"A",NULL
);

INSERT INTO rewards_item_dim(
id,rewards_key,rewards_group,rewards_points,status,deactivate_date
)VALUES(
2,5002,"reward_group_2",30,"A",NULL
);

INSERT INTO rewards_item_dim(
id,rewards_key,rewards_group,rewards_points,status,deactivate_date
)VALUES(
3,5003,"reward_group_3",40,"R","2023-3-10"
);

INSERT INTO rewards_item_dim(
id,rewards_key,rewards_group,rewards_points,status,deactivate_date
)VALUES(
4,5004,"reward_group_4",40,"A",NULL
);

COMMIT;