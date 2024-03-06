CREATE TABLE  IF NOT EXISTS item(
	item_id 										INT,
    brand_code 								VARCHAR(15) NOT NULL,
    barcode 										VARCHAR(15) NOT NULL,
    item_description							VARCHAR(1000) NOT NULL,
    final_price				 					DOUBLE,
	item_price 									DOUBLE,
    target_price 								DOUBLE,
    original_final_price  					DOUBLE,
    original_meta_brite_barcode 		VARCHAR(25),
    partner_item_id INT
);

ALTER TABLE item 
	ADD  CONSTRAINT pk_item_id PRIMARY KEY(item_id);

ALTER TABLE item 
	ADD  CONSTRAINT uk_barcode UNIQUE KEY(barcode);

ALTER TABLE item
		ADD CONSTRAINT fk_brandcode FOREIGN KEY (brand_code)
			REFERENCES brand(brand_code);


INSERT INTO item (item_id, brand_code, barcode, 										
								item_description, final_price, item_price,
                                target_price, original_final_price, original_meta_brite_barcode,
                                partner_item_id
)VALUES (
							2212	,"75706191031",	"14781919", 
                            "Bottled Starbucks Capachino", 10.12, 	10.12,	
                            10.12,	10.12,	"123123123123",	
                            2
);

INSERT INTO item (item_id, brand_code, barcode, 										
								item_description, final_price, item_price,
                                target_price, original_final_price, original_meta_brite_barcode,
                                partner_item_id
)VALUES (
							2213	,"75706191031",	"32781919",
                            "Bottled Starbucks Strawberry"	,32.0,	32.0,	
                            32.0,	32.0,	"456123123123",	
							2
);

INSERT INTO item (item_id, brand_code, barcode, 										
								item_description, final_price, item_price,
                                target_price, original_final_price, original_meta_brite_barcode,
                                partner_item_id
)VALUES (
							2214	,"75706191032"	, "15781919" , 
                            "Chicken"	, 10.13,	10.13,	
                            10.13	,10.13	, "4561231239090",	
                            3
);

INSERT INTO item (item_id, brand_code, barcode, 										
								item_description, final_price, item_price,
                                target_price, original_final_price, original_meta_brite_barcode,
                                partner_item_id
)VALUES (
							2215,	"75706191033"	, "22781919",	
                            "Flour" ,11.12	,11.12,	
                            11.12	,11.12,"4561231231809",	
                            4
);

INSERT INTO item (item_id, brand_code, barcode, 										
								item_description, final_price, item_price,
                                target_price, original_final_price, original_meta_brite_barcode,
                                partner_item_id
)VALUES (
							2216	,"75706191034", 	"34781919",	
                            "Pen", 	1.09	, 1.09,	
                            1.09	,1.09,	"2167123123123	",
                            5
);

INSERT INTO item (item_id, brand_code, barcode, 										
								item_description, final_price, item_price,
                                target_price, original_final_price, original_meta_brite_barcode,
                                partner_item_id
)VALUES (
							2217	, "75706191035"	,"90781919",	
                            "Chair", 78, 78,
                            78,	78, "318908657",
                            6
);

COMMIT;