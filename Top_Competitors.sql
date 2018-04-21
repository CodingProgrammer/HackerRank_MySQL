select H.hacker_id, H.name from Submissions S
inner join Hackers H on H.hacker_id = S.hacker_id
inner join Challenges C on C.challenge_id = S.challenge_id
inner join Difficulty D on D.difficulty_level = C.difficulty_level
where S.score = D.score 
group by H.hacker_id, name
having count(1) > 1
order by count(*) desc, H.hacker_id asc;
