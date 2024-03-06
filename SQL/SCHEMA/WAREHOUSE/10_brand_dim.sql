CREATE TABLE IF NOT EXISTS brand_dim(
	id 				 		INT NOT NULL,
    brand_key    		    INT NOT NULL,
    brand_name		        VARCHAR(100) NOT NULL,
    status					VARCHAR(1) NOT NULL,
    deactivate_date 	    DATE
);

ALTER TABLE brand_dim
	ADD CONSTRAINT pk_brand_dim_id PRIMARY KEY(id);

ALTER TABLE brand_dim
	ADD CONSTRAINT uk_brand_dim_brand_name UNIQUE(brand_name);
    
INSERT INTO brand_dim(
	id,brand_key,brand_name,status,deactivate_date
) VALUES(1, 1001,"WALMART","A",NULL);
INSERT INTO brand_dim(
	id,brand_key,brand_name,status,deactivate_date
) VALUES(2, 1002,"STARBUCKS","A",NULL);
INSERT INTO brand_dim(
	id,brand_key,brand_name,status,deactivate_date
) VALUES(3, 1003,"KMART","R","2024-01-29");
INSERT INTO brand_dim(
	id,brand_key,brand_name,status,deactivate_date
) VALUES(4, 1004,"KMARTv2","A",NULL);
INSERT INTO brand_dim(
	id,brand_key,brand_name,status,deactivate_date
) VALUES(5, 1005,"TARGET","A",NULL);
INSERT INTO brand_dim(
	id,brand_key,brand_name,status,deactivate_date
) VALUES(6, 1006,"STAPLES","A",NULL);

COMMIT;