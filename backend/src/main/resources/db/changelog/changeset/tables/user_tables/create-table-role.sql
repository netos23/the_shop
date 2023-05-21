CREATE TABLE IF NOT EXISTS my_role
(
    role_id INT PRIMARY KEY,
    role_name VARCHAR(63) NOT NULL
    );

INSERT INTO my_role (role_id, role_name) VALUES
                                          (1, 'ADMIN'),
                                          (2, 'AUTHORIZED_USER');