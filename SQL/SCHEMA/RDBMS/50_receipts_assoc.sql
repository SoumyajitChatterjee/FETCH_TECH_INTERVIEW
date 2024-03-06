CREATE TABLE receipts_assoc(
		receipts_assoc_id INT,
		rewards_receipt_item_code VARCHAR(100) NOT NULL,
		barcode VARCHAR(15) NOT NULL
);

ALTER TABLE receipts_assoc
	ADD CONSTRAINT pk_receipts_assoc_id PRIMARY KEY (receipts_assoc_id);
    
ALTER TABLE receipts_assoc
	ADD CONSTRAINT uk_receipts_assoc_barcode UNIQUE KEY (barcode);

ALTER TABLE receipts_assoc 
	ADD CONSTRAINT fk_barcode_receipts_assoc FOREIGN KEY (barcode) 
		REFERENCES item(barcode);

INSERT INTO receipts_assoc 
(
			receipts_assoc_id, rewards_receipt_item_code, barcode
) VALUES (
			123,	"120", "14781919"
);

INSERT INTO receipts_assoc 
(
			receipts_assoc_id, rewards_receipt_item_code, barcode
) VALUES (
			124,"121", "32781919"
);

INSERT INTO receipts_assoc 
(
			receipts_assoc_id, rewards_receipt_item_code, barcode
) VALUES (
			125, "122", "15781919"
                               	
);

INSERT INTO receipts_assoc 
(
			receipts_assoc_id, rewards_receipt_item_code, barcode
) VALUES (
			126,"123","22781919"
);

INSERT INTO receipts_assoc 
(
			receipts_assoc_id, rewards_receipt_item_code, barcode
) VALUES (
			127	,"124","34781919"
);


INSERT INTO receipts_assoc 
(
			receipts_assoc_id, rewards_receipt_item_code, barcode
) VALUES (
			128,"125","90781919"
);

COMMIT;