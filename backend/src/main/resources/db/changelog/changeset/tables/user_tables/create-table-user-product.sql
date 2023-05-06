CREATE TABLE IF NOT EXISTS user_basket
(
    user_id BIGINT,
    product_id BIGINT,
    PRIMARY KEY (user_id, product_id)
);

ALTER TABLE user_basket ADD FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE;
ALTER TABLE user_basket ADD FOREIGN KEY (user_id) REFERENCES my_user (user_id) ON DELETE CASCADE;