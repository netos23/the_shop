CREATE TABLE IF NOT EXISTS payment
(
    payment_id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    payment_type VARCHAR(20) NOT NULL,
    payment_picture VARCHAR(300) NOT NULL
);