CREATE TABLE IF NOT EXISTS item_dim(
	id 				 		INT NOT NULL,
    item_key    			INT NOT NULL,
    item_name			    VARCHAR(100) NOT NULL,
    orig_price			    DOUBLE NOT NULL,
    discount_price 	        DOUBLE NOT NULL,
	final_price 			DOUBLE NOT NULL,
    status					VARCHAR(1) NOT NULL,
    deactivate_date 	    DATE
);


ALTER TABLE item_dim
	ADD CONSTRAINT pk_item_dim PRIMARY KEY(id);
    
INSERT INTO item_dim(
id,item_key,item_name,orig_price,discount_price,final_price,status,deactivate_date
)VALUES(
1,3001,"item1",12.0,1.0,11.0,"A",NULL
);
INSERT INTO item_dim(
id,item_key,item_name,orig_price,discount_price,final_price,status,deactivate_date
)VALUES(
2,3002,"item2",12.0,2.0,10.0,"R","2023-01-12"
);
INSERT INTO item_dim(
id,item_key,item_name,orig_price,discount_price,final_price,status,deactivate_date
)VALUES(
3,3003,"item3",2.5,1.0,1.5,"A",NULL
);
INSERT INTO item_dim(
id,item_key,item_name,orig_price,discount_price,final_price,status,deactivate_date
)VALUES(
5,3004,"item4",21.35,0.0,21.35,"A",NULL
);
INSERT INTO item_dim(
id,item_key,item_name,orig_price,discount_price,final_price,status,deactivate_date
)VALUES(
4,3005,"item5",21.35,0.0,21.35,"A",NULL
);