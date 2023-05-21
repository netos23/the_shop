ALTER TABLE category
ADD parent_category_id BIGINT;

ALTER TABLE city
ADD city_code VARCHAR(100) NOT NULL;