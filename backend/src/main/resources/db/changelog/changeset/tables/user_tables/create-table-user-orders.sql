CREATE TABLE IF NOT EXISTS user_order
(
    user_id BIGINT,
    order_id BIGINT,
    PRIMARY KEY (user_id, order_id)
    );

ALTER TABLE user_order ADD FOREIGN KEY (order_id) REFERENCES my_order (order_id) ON DELETE CASCADE;
ALTER TABLE user_order ADD FOREIGN KEY (user_id) REFERENCES my_user (user_id) ON DELETE CASCADE;