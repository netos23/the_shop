CREATE TABLE IF NOT EXISTS order_payment
(
    order_id BIGINT,
    payment_id BIGINT,
    PRIMARY KEY (order_id, payment_id),
    FOREIGN KEY (payment_id) REFERENCES payment (payment_id) ON DELETE CASCADE,
    FOREIGN KEY (order_id) REFERENCES my_order (order_id) ON DELETE CASCADE
    );