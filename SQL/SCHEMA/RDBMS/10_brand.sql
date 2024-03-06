CREATE  TABLE IF NOT EXISTS brand(
	brand_id 						INT NOT NULL,
    brand_code 				VARCHAR(15) NOT NULL,
    brand_name 				VARCHAR(25) NOT NULL,
    category 						VARCHAR(100) NOT NULL,
    category_code 			VARCHAR(100),
    top_brand 					BOOLEAN DEFAULT FALSE
);

ALTER TABLE brand 
	ADD  CONSTRAINT pk_brand_id PRIMARY KEY(brand_id);
    
ALTER TABLE brand 
	ADD  CONSTRAINT uk_brand_code UNIQUE KEY(brand_code);

ALTER TABLE brand 
	ADD  CONSTRAINT uk_brand_name UNIQUE KEY(brand_name);

INSERT INTO brand (brand_id , brand_code, brand_name,
                                  category, category_code, top_brand 
) VALUES (1024	,"75706191031",  "Starbucks",
                  "Drinks"	,"Drinks",	FALSE);

INSERT INTO brand (brand_id , brand_code, brand_name,
                                  category, category_code, top_brand 
) VALUES (1025	, "75706191032", "Walmart", 
                  "Food"	,"Food",	FALSE);

INSERT INTO brand (brand_id , brand_code, brand_name,
                                  category, category_code, top_brand 
) VALUES (1026	,"75706191033", "KMart", 
                  "Baking"	,"Baking",	FALSE);

INSERT INTO brand (brand_id , brand_code, brand_name,
                                  category, category_code, top_brand 
) VALUES (1027, "75706191034",  "Target", 
                  "Stationary", 	"Stationary",	FALSE);

INSERT INTO brand (brand_id , brand_code, brand_name,
                                  category, category_code, top_brand 
) VALUES (1028,  "75706191035", "Staples",
                 "Furniture",	"Furniture",	FALSE);
COMMIT;