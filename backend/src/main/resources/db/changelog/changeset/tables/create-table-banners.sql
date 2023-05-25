CREATE TABLE image_banner_attachment
(
    image_banner_id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY
);

CREATE TABLE image_banner_attachment_images
(
    image_banner_id BIGINT NOT NULL,
    image    VARCHAR(300)
);

ALTER TABLE image_banner_attachment_images ADD FOREIGN KEY (image_banner_id)
    REFERENCES image_banner_attachment (image_banner_id) ON DELETE CASCADE;

CREATE TABLE markdown_banner_attachment
(
    markdown_banner_id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    markdown VARCHAR(4000)
);

CREATE TABLE products_banner_attachment
(
    products_banner_id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY
);

CREATE TABLE products_banner_attachment_products
(
    products_banner_attachment_id BIGINT NOT NULL,
    products_id                   BIGINT NOT NULL,
    PRIMARY KEY (products_banner_attachment_id, products_id)
);

ALTER TABLE products_banner_attachment_products
    ADD FOREIGN KEY (products_id) REFERENCES product (product_id);

ALTER TABLE products_banner_attachment_products
    ADD FOREIGN KEY (products_banner_attachment_id) REFERENCES products_banner_attachment (products_banner_id);

CREATE TABLE text_banner_attachment
(
    text_banner_id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    title          VARCHAR(100)
);