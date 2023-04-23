CREATE TABLE IF NOT EXISTS user_product
(
    user_id BIGINT,
    product_id BIGINT,
    PRIMARY KEY (user_id, product_id),
    FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES my_user (user_id) ON DELETE CASCADE
);