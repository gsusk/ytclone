-- +goose Up
-- +goose StatementBegin
SELECT 'up SQL query';
CREATE TABLE channel
(
    id               serial primary key,
    user_id          int  not null references users (id) on delete cascade unique,
    name             text not null,
    handle           text not null unique, -- @mrbeast
    description      text,
    avatar_url       text,
    banner_url       text,
    subscriber_count int       DEFAULT 0 CHECK (subscriber_count >= 0),
    video_count      int       DEFAULT 0 CHECK (video_count >= 0),
    created_at       TIMESTAMP DEFAULT NOW(),
    updated_at       TIMESTAMP 
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
SELECT 'down SQL query';
DROP IF EXISTS channel;
-- +goose StatementEnd
