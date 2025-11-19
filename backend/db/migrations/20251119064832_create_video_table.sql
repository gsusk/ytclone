-- +goose Up
-- +goose StatementBegin
SELECT 'up SQL query';
CREATE TABLE video
(
    id            text primary key,
    channel_id    int references channel (id) on delete cascade,
    title         text      not null,
    description   text,
    likes         int       default 0 check ( likes >= 0 ),
    views         int       default 0 check ( likes >= 0 ),
    video_url     text      not null unique,
    thumbnail_url text,
    created_at    TIMESTAMP DEFAULT NOW(),
    updated_at    TIMESTAMP null,
    deleted_at    TIMESTAMP null
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
SELECT 'down SQL query';
DROP TABLE IF EXISTS video;
-- +goose StatementEnd
