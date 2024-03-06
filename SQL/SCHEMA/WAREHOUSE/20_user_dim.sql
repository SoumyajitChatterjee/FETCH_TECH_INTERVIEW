CREATE TABLE IF NOT EXISTS user_dim(
	id 				 		INT NOT NULL,
    user_key    			INT NOT NULL,
    user_name			    VARCHAR(100) NOT NULL,
    create_date 		    DATE NOT NULL,
    login_date			    DATE NOT NULL,
    status					VARCHAR(1) NOT NULL,
    deactivate_date 	    DATE		
);

ALTER TABLE user_dim
	ADD CONSTRAINT pk_user_dim_id PRIMARY KEY(id);
    
ALTER TABLE user_dim
	ADD CONSTRAINT uk_user_dim_id UNIQUE(user_name);

INSERT INTO user_dim(
id,user_key,user_name,create_date,login_date
,status,deactivate_date
)VALUES(1, 2001, "Carlos","2023-08-21","2023-08-25","A",NULL);
INSERT INTO user_dim(
id,user_key,user_name,create_date,login_date
,status,deactivate_date
)VALUES(2, 2002, "Tom","2024-02-21","2024-02-25","R",NULL);
INSERT INTO user_dim(
id,user_key,user_name,create_date,login_date
,status,deactivate_date
)VALUES(3, 2003, "Tomas","2024-02-21","2024-02-25","A",NULL);
INSERT INTO user_dim(
id,user_key,user_name,create_date,login_date
,status,deactivate_date
)VALUES(4,2004, "Walter","2024-01-19","2024-01-25","A",NULL);


COMMIT;