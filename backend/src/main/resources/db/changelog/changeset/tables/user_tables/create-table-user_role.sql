CREATE TABLE IF NOT EXISTS user_role
(
    user_id BIGINT,
    role_id INT,
    PRIMARY KEY (user_id, role_id)
);

ALTER TABLE user_role ADD FOREIGN KEY (user_id) REFERENCES my_user (user_id) ON DELETE CASCADE;
ALTER TABLE user_role ADD FOREIGN KEY (role_id) REFERENCES my_role (role_id) ON DELETE CASCADE;