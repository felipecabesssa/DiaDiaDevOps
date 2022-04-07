CREATE TABLE users (
    id BIGSERIAL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(250) NOT NULL,

    CONSTRAINT pk_users PRIMARY KEY(id)
);
