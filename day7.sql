use instagram1;
select * from posts;
select * from users;
-- get user posts user details
select postid,users.userid,username from  users
inner join posts
on users.userid=posts.userid;

-- get all users post ids
select u.userid,u.username,p.postid from users  u
left join posts p 
on u.userid=p.userid;

-- get all users post ids
select u.userid,u.username,p.postid from users  u
right join user p 
on u.userid=p.userid;

-- get all posts and user details
(select u.userid,u.username,p.postid ,p.description from users  u
left join posts p 
on u.userid=p.userid)
union
(select u.userid,u.username,p.postid ,p.description from users  u
right join user p 
on u.userid=p.userid);
-- natural join
select postid,users.userid,username from users
natural join posts;

-- equie join
select postid,
users.userid,username from users,posts
where users.userid=posts.userid;
