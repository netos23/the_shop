CREATE TABLE IF NOT EXISTS order_delivery
(
    order_id BIGINT,
    delivery_id BIGINT,
    PRIMARY KEY (order_id, delivery_id),
    FOREIGN KEY (delivery_id) REFERENCES delivery (delivery_id) ON DELETE CASCADE,
    FOREIGN KEY (order_id) REFERENCES my_order (order_id) ON DELETE CASCADE
    );