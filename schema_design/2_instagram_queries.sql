use ig_clone;
show tables;
SELECT *FROM users;
SELECT *FROM photos;
SELECT *FROM comments;
SELECT *From likes;
SELECT *From follows;
SELECT *FROM tags;
SELECT *FROM photo_tags;

-- TO find 5 oldest users
SELECT username,created_at from users ORDER BY users.created_at DESC LIMIT 5;
-- To get the days on which most users registered
SELECT DAYNAME(users.created_at) AS day,count(*) AS total from users GROUP BY day ORDER BY total DESC;
SELECT DAYNAME(users.created_at) AS day,count(*) AS total from users GROUP BY day ORDER BY total DESC LIMIT 2;

-- INACTIVE USER
SELECT username from users
left JOIN photos on users.id=photos.user_id where photos.id IS NULL;

-- popular photo and USER
SELECT username,photos.id,photos.image_url,count(*) AS most_likes from photos
INNER JOIN likes ON likes.photo_id=photos.id
INNER JOIN users ON photos.user_id=users.id
GROUP BY photos.id ORDER BY most_likes DESC LIMIT 1;

-- avg number of photos per users
SELECT(SELECT COUNT(*) FROM photos)/(SELECT COUNT(*) FROM users) AS avg_posts;

SELECT tag_name,count(*) AS total from tags
INNER join photo_tags on photo_tags.tag_id=tags.id GROUP BY tag_name ORDER BY total DESC LIMIT 5;

