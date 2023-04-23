CREATE TABLE IF NOT EXISTS product_picture
(
    product_id BIGINT,
    picture_id BIGINT,
    PRIMARY KEY (product_id, picture_id),
    FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE,
    FOREIGN KEY (picture_id) REFERENCES picture (picture_id) ON DELETE CASCADE
);