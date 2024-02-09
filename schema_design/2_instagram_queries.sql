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

-- User Engagement Analysis:
-- Calculate Average Likes and Comments per User
SELECT
    user_id,
    AVG((SELECT COUNT(*) FROM Likes WHERE Likes.user_id = Photos.user_id)) AS avg_likes,
    AVG((SELECT COUNT(*) FROM Comments WHERE Comments.user_id = Photos.user_id)) AS avg_comments
FROM
    Photos
GROUP BY
    user_id;

-- User Activity Tracking:
--Retrieve Comprehensive User Activity
-- 
SELECT
    Photos.*,
    Likes.created_at AS like_date,
    Comments.comment_text,
    Comments.created_at AS comment_date
FROM
    Users
LEFT JOIN
    Photos ON Users.id = Photos.user_id
LEFT JOIN
    Likes ON Users.id = Likes.user_id
LEFT JOIN
    Comments ON Users.id = Comments.user_id
WHERE
    Users.id = 1  -- Replace with the actual user ID
ORDER BY
    COALESCE(Photos.created_at, Likes.created_at, Comments.created_at) DESC;


-- Inactive User Identification:
-- Identify Users Inactive for the Last 30 Days

-- Hashtag tracking and trend analysis
SELECT
    tag_name,
    COUNT(photo_id) AS tag_count
FROM
    tags
LEFT JOIN
    photo_tags ON tags.id = photo_tags.tag_id
GROUP BY
    tag_name
ORDER BY
    tag_count DESC
LIMIT 10;

-- Explore Page Optimization:
SELECT
    *
FROM
    Photos
ORDER BY
    RAND()
LIMIT 20;





