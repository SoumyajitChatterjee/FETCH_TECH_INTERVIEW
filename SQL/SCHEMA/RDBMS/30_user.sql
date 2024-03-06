CREATE TABLE IF NOT EXISTS user(
	user_id 							INT NOT NULL,
    app_user_id 					VARCHAR(100) UNIQUE NOT NULL,
    state 								VARCHAR(2),
    create_date  					DATE,
    user_role 						VARCHAR(10),
    user_status 					BOOLEAN
);

ALTER TABLE user 
	ADD  CONSTRAINT pk_user_id PRIMARY KEY(user_id);

ALTER TABLE user 
	ADD  CONSTRAINT uk_app_user_id UNIQUE KEY(app_user_id);

INSERT INTO user (  user_id, app_user_id,  state,
									create_date , user_role ,  user_status
) VALUES (
									2145, "1716", "WI", 
                                    "2024-02-28", "Consumer", TRUE
);

INSERT INTO user (  user_id, app_user_id,  state,
									create_date , user_role ,  user_status
) VALUES (
							2146,	"1712",	"MI",	
                            "2024-02-28"	, "Consumer",	TRUE
);

INSERT INTO user (  user_id, app_user_id,  state,
									create_date , user_role ,  user_status
) VALUES (
							2148,	"1721",	"MI",	
                            "2022-09-28"	, "Consumer",	TRUE
);

COMMIT;