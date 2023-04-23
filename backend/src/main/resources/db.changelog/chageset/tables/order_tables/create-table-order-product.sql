CREATE TABLE IF NOT EXISTS order_product
(
    order_id BIGINT,
    product_id BIGINT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE,
    FOREIGN KEY (order_id) REFERENCES my_order (order_id) ON DELETE CASCADE
    );