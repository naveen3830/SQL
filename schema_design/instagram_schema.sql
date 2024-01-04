use ig;
create table users(
id int auto_increment primary key,
name varchar(255) unique not null,
created_at timestamp default now()
);

CREATE TABLE photos (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE Table comments (
    id int AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255),
    photo_id int NOT NULL,
    user_id int NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    Foreign Key (photo_id) REFERENCES photos(id),
    Foreign Key (user_id) REFERENCES users(id)
);

CREATE TABLE likes(
    user_id int NOT NULL,
    photo_id int NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN key (user_id) REFERENCES users(id),
    Foreign Key (photo_id) REFERENCES photos(id),
    PRIMARY KEY(user_id,photo_id) -- restrict likes of person 
); 

CREATE TABLE follows(
    follower_id int NOT NULL,
    followee_id int NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower_id) REFERENCES users(id),
    Foreign Key (followee_id) REFERENCES users(id),
    PRIMARY KEY (follower_id,followee_id) -- to RESTRICT duplicate entry
);

CREATE Table tags(
    id int AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE Table photo_tags(
    photo_id INT NOT NULL,
    tag_id INT NOT NULL,
    Foreign Key (photo_id) REFERENCES photos(id),
    Foreign Key (tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id,tag_id)
);