-- name: CreateVideo :one
INSERT INTO video (channel_id, title, description, video_url, thumbnail_url)
VALUES ($1, $2, $3, $4, $5) RETURNING *;