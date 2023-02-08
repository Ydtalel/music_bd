--количество исполнителей в каждом жанре;

/*select res.genre_name, count(*) from (SELECT genre_id, genre_name, singer_id FROM genre g LEFT JOIN genre_singer gs ON g.id = gs.genre_id) res
group by  res.genre_name
order by count(*) desc;                        вариант до доработки*/

select genre_name, count(genre_name) from genre g
join genre_singer gs on gs.genre_id  = g.id 
join singer s  on s.id = gs.singer_id 
group by genre_name  
order by count(genre_name) desc;

--количество треков, вошедших в альбомы 2019-2020 годов;

/* SELECT COUNT(track_name) from 
(SELECT track_name FROM track t JOIN album a  ON t.album_id  = a.id where a.release_date > '2018-12-31' and a.release_date < '2021-01-01') res
                                               вариант до доработки*/

select COUNT(track_name) from track t 
join album a on a.id = t.album_id 
where a.release_date > '2018-12-31' and a.release_date < '2021-01-01'
order by count;

--средняя продолжительность треков по каждому альбому;

/*SELECT album_name, AVG(track_duration) FROM (
select track_duration,album_name   from track t JOIN album a  ON t.album_id  = a.id) res
GROUP BY album_name;
                                                вариант до доработки*/

SELECT album_name, AVG(track_duration) from track t 
join album a on a.id = t.album_id
GROUP BY a.album_name;

--все исполнители, которые не выпустили альбомы в 2020 году;

/*SELECT singer_name,album_name,release_date FROM album a  
JOIN singer_album sa  ON a.id = sa.album_id  
JOIN singer s  ON s.id = sa.singer_id
where a.release_date < '2020-01-01' or a.release_date > '2020-12-31'
                                                 вариант до доработки*/
select singer_name from singer EXCEPT  (
SELECT singer_name FROM album a  
JOIN singer_album sa  ON a.id = sa.album_id  
JOIN singer s  ON s.id = sa.singer_id
where a.release_date > '2019-12-31' and a.release_date < '2021-01-01'); 

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);

select collection_name,singer_name from collection c 
join track_collection tc on c.id =tc.id 
join track t on t.id = tc.track_id
join album a on a.id = t.album_id
join singer_album sa on sa.album_id  = a.id
join singer s on s.id = sa.singer_id
where s.singer_name = 'Lana Del Rey';

--название альбомов, в которых присутствуют исполнители более 1 жанра;
select a.album_name, count(genre_name) from album a 
join singer_album sa on sa.album_id = a.id 
join singer s on s.id = sa.singer_id 
join genre_singer gs on gs.singer_id = s.id 
join genre g on g.id = gs.genre_id
group by a.album_name
HAVING count(genre_name) > 1;

--наименование треков, которые не входят в сборники;
INSERT INTO track  
VALUES 
	(999,'just_track',3,8)

select track_name from track t 
left join track_collection tc on tc.track_id = t.id 
left join collection c on c.id = tc.collection_id 
where collection_name IS null;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

/*select singer_name , min(track_duration) from  track t 
join album a on a.id = t.album_id 
join singer_album sa on sa.album_id =a.id 
join singer s on s.id  = sa.singer_id
GROUP BY singer_name
ORDER BY min(track_duration)
limit 1;
                                            вариант до доработки*/

INSERT INTO track  
VALUES 
	(1000,'another_track',2.59,8)

select track_name , track_duration from track 
where track_duration =
	(select  min(track_duration)  from (
	select  track_name, singer_name, track_duration from track t 
	join album a on a.id = t.album_id 
	join singer_album sa on sa.album_id =a.id 
	join singer s on s.id  = sa.singer_id) res);

--название альбомов, содержащих наименьшее количество треков.

/*select album_name,count(album_name) from track t 
join album a on a.id = t.album_id 
GROUP BY album_id, album_name
ORDER BY count(album_name)
											вариант до доработки*/


select album_name  from track t 
join album a on a.id = t.album_id 
group by album_name 
HAVING count(album_name) =
	(select count(album_name) from track t 
	join album a on a.id = t.album_id 
	GROUP BY album_name
	ORDER BY count(album_name)
	limit 1);






