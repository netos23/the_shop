ALTER TABLE delivery
DROP COLUMN delivery_status;

ALTER TABLE delivery
ADD delivery_picture VARCHAR(300) NOT NULL;

ALTER TABLE delivery
ADD delivery_price DECIMAL(5, 3);

ALTER TABLE my_order
ADD payment_status VARCHAR(35) NOT NULL;

ALTER TABLE my_order
ADD delivery_status VARCHAR(35) NOT NULL;