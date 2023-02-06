-- название и год выхода альбомов, вышедших в 2018 году

SELECT album_name, release_date FROM album  
WHERE release_date >= '2018-01-01' and release_date < '2019-01-01';

--название и продолжительность самого длительного трека

SELECT track_name,track_duration from track 
ORDER BY track_duration desc 
LIMIT 1;

--название треков, продолжительность которых не менее 3,5 минуты

SELECT track_name,track_duration from track 
where track_duration >= 3.5;

--названия сборников, вышедших в период с 2018 по 2020 год включительно

select collection_name from collection
where release_date > '2017-12-31' and release_date < '2021-01-01';

--исполнители, чье имя состоит из 1 слова

select singer_name from singer
where singer_name not LIKE '% %';

--название треков, которые содержат слово "мой"/"my"

SELECT track_name from track 
where track_name LIKE '%My%' or track_name LIKE '%Мой%';