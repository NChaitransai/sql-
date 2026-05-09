use instagram1;

-- select users,comments,posts table data
select * from users;
select * from  posts;
select * from comments;

-- find each user total comments along username

select u.username,count(u.username) from  users  u
inner join comments c
on u.userid=c.userid
group by u.userid;

-- return non commented user details
select u.userid,u.username,c.commentid from users u
left join comments c
on c.userid = u.userid
where commentid is null;


-- find each posts total comments --
SELECT P.POSTID,COUNT(*) FROM POSTS P
INNER JOIN COMMENTS C
ON P.POSTID = C.POSTID
GROUP BY C.POSTID;
-- find each post atleast morethan 2 comments
SELECT P.POSTSID,COUNT(*) FROM COMMENTS C
INNER JOIN POSTS P
ON P.POSTID = C.POSTSID
GROUP  BY POSTSID
HAVING COUNT(*)>1;

--
SELECT U.USERID,U.USERNAME,POSTSID,C.COMMENTID,C.COMMENT,C.USERID FROM USERS U
INNER JOIN  POSTS P
ON USERID=P.USERID
INNER JOIN COMMENTS C
ON C.POSTSID=P.POSTSID;

