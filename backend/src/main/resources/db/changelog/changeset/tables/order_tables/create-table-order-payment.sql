CREATE TABLE IF NOT EXISTS order_payment
(
    order_id BIGINT,
    payment_id BIGINT,
    PRIMARY KEY (order_id, payment_id)
);

ALTER TABLE order_payment ADD FOREIGN KEY (payment_id) REFERENCES payment (payment_id) ON DELETE CASCADE;
ALTER TABLE order_payment ADD FOREIGN KEY (order_id) REFERENCES my_order (order_id) ON DELETE CASCADE;