-- +goose Up
-- +goose StatementBegin
SELECT 'up SQL query';
-- +goose StatementEnd
CREATE TABLE IF NOT EXISTS users
(
    id           serial primary key,
    name         text,
    username     text not null unique,
    email        text not null unique,
    pasword      text not null,
    country      text,
    city         text,
    phone_number varchar(21) unique,
    age          int check ( age > 0 ),
    avatar_url   text,
    created_at   TIMESTAMP DEFAULT NOW(),
    updated_at   TIMESTAMP DEFAULT NOW()
);

-- +goose Down
-- +goose StatementBegin
SELECT 'down SQL query';
DROP TABLE IF EXISTS users;
-- +goose StatementEnd
