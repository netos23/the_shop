CREATE TABLE IF NOT EXISTS product_category
(
    product_id BIGINT,
    category_id BIGINT,
    PRIMARY KEY (product_id, category_id)
);

ALTER TABLE product_category ADD FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE;
ALTER TABLE product_category ADD FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE CASCADE;