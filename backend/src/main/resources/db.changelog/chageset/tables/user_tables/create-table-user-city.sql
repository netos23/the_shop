CREATE TABLE IF NOT EXISTS user_city
(
    user_id BIGINT,
    city_id BIGINT,
    PRIMARY KEY (user_id, city_id),
    FOREIGN KEY (city_id) REFERENCES city (city_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES my_user (user_id) ON DELETE CASCADE
);