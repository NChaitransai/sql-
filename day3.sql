create database instagram1;

use instagram1;

-- user table

CREATE TABLE USERS(
USERID INT auto_increment,
INSTAID VARCHAR(40) NOT NULL UNIQUE,
USERNAME VARCHAR(40) NOT NULL,
PASSWORDID VARCHAR(30) NOT NULL,
GENDER ENUM('FEMALE','MALE'),
AGE TINYINT unsigned CHECK (AGE>13),
MOBILE VARCHAR(10),
EMAIL VARCHAR(50) NOT NULL UNIQUE,
PRIMARY KEY(USERID)
);

-- POST TABLE

CREATE TABLE IF NOT EXISTS POSTS(
POSTID VARCHAR(10) NOT NULL,
USERID INT,
DESCRIPTION TEXT,
TAGS TINYTEXT,
VIEWS INT DEFAULT 0,
LIKES INT DEFAULT 0,
PRIMARY KEY(POSTID),
FOREIGN KEY (USERID) REFERENCES USERS(USERID)
); 

-- COMMENTS TABLE


CREATE TABLE IF NOT EXISTS COMMENTS(
COMMENTID VARCHAR(10) NOT NULL,
USERID INT,
POSTID VARCHAR(10),
COMMENT TINYTEXT NOT NULL,
LIKES INT DEFAULT 0,
PRIMARY KEY(COMMENTID),
FOREIGN KEY(USERID) REFERENCES USERS(USERID),
FOREIGN KEY(POSTID) REFERENCES POSTS(POSTID)
);

-- CHECK TABLES DESCRIPTION

DESC USERS;
DESC POSTS;
DESC COMMENTS;

-- inserting data into users table 

USE instagram1;

INSERT INTO users(userid, instaid, username, passwordid, gender, age, mobile, email)
VALUES
(101,'Kaushik','Kaushik@123','Kaushik(1608)','MALE',20,'9849757793','Kaushik@gmail.com'),
(102,'ram','ram_16','ram','MALE',24,'8075423456','ram@gmail.com'),
(103,'manoj','manoj87','manoj','MALE',26,'7856434567','manojanumula@gmail.com'),
(104,'nithin','salaar_78','slrntn','MALE',21,'9876834324','nithinreddy@gmail.com'),
(105,'sekhar','sekhar_98','sekhar','MALE',21,'9756438754','sekharbhai58@gmail.com');


INSERT INTO posts (postid, userid, description, tags, views, likes) VALUES
('101', 1, 'Enjoying coding journey', '#coding #python', 150, 25),
('102', 2, 'Gym time ', '#fitness #health', 200, 40),
('103', 3, 'Beautiful sunset ', '#nature #photography', 180, 35),
('104', 4, 'Weekend vibes', '#travel #fun', 220, 50);

INSERT INTO comments (commentid, userid, postid, comment, likes) VALUES
('C1', 2, 'P101', 'Nice post!', 10),
('C2', 3, 'P101', 'Keep going!', 5),
('C3', 1, 'P102', 'Great workout!', 8),
('C4', 4, 'P103', 'Amazing view!', 12),
('C5', 2, 'P104', 'Looks fun!', 6),
('C6', 1, 'P103', 'Beautiful capture!', 7);

-- Already created database and tables (users, posts, comments)

-- Create Stories table
CREATE TABLE  stories (
    storyid VARCHAR(20) NOT NULL,
    userid INT,
    content TEXT NOT NULL,
    views INT DEFAULT 0,
    likes INT DEFAULT 0,
    expiry DATETIME NOT NULL,   -- stories expire after 24 hours
    PRIMARY KEY (storyid),
    FOREIGN KEY (userid) REFERENCES users(userid)
);

-- Insert sample stories
INSERT INTO stories (storyid, userid, content, views, likes, expiry) VALUES
('101', 1, 'Late night coding grind 💻', 120, 15, DATE_ADD(NOW(), INTERVAL 24 HOUR)),
('102', 2, 'Post-workout protein shake 🥤', 140, 20, DATE_ADD(NOW(), INTERVAL 24 HOUR)),
('103', 3, 'Coffee + Sunset = Perfect combo ☕🌅', 160, 25, DATE_ADD(NOW(), INTERVAL 24 HOUR)),
('104', 4, 'Road trip sneak peek 🚗✨', 180, 30, DATE_ADD(NOW(), INTERVAL 24 HOUR));

select * from users;
select * from  posts;
select * from comments;
select * from stories;