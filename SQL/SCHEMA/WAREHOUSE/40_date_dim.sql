CREATE TABLE IF NOT EXISTS date_dim(
	id 				 		INT NOT NULL,
    date_key    			INT NOT NULL,
    date				    DATE NOT NULL,
    day 					INT,
    month					INT,
    year 					INT,
    status					VARCHAR(1) NOT NULL,
    deactivate_date 	    DATE		
);

ALTER TABLE date_dim
	ADD CONSTRAINT pk_date_dim_id PRIMARY KEY(id);
    
ALTER TABLE date_dim
	ADD CONSTRAINT uk_date_dim_id UNIQUE(date);


INSERT INTO date_dim (
id,date_key,date,
day,month,year,
status,deactivate_date
)VALUES(1,4001,"2024-02-23",23,2,2024,"A",NULL);


INSERT INTO date_dim (
id,date_key,date,
day,month,year,
status,deactivate_date
)VALUES(3,4002,"2024-02-19",19,2,2024,"A",NULL);

INSERT INTO date_dim (
id,date_key,date,
day,month,year,
status,deactivate_date
)VALUES(4,4003,"2023-02-19",19,2,2023,"A",NULL);

INSERT INTO date_dim (
id,date_key,date,
day,month,year,
status,deactivate_date
)VALUES(5,4004,"2024-01-19",19,1,2024,"A",NULL);

COMMIT;