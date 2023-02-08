INSERT INTO genre
VALUES
    (8,'поп'),
    (10,'электропоп'),
    (14,'инди-поп'),
    (16,'альтернативный R&B'),
    (17,'софт-рок'),
    (18,'фолк'),
    (19,'данс-поп'),
    (20,'R&B'),
    (21,'дарк-поп'),
    (22,'соул'),
    (23,'инди-рок'),
    (24,'психоделический рок'),
    (25,'сэдкор');
    
INSERT INTO singer 
VALUES
    (2,'Billie Eilish'),
    (3,'The Weeknd'),
    (4,'Ed Sheeran'),
    (5,'Selena Gomez'),
    (6,'Dua Lipa'),
    (7,'Sam Smith'),
    (8,'Adele'),
    (9,'Lana Del Rey');
   
INSERT INTO genre_singer 
VALUES
    (13,8,2),
    (14,10,2),
    (15,14,2),
    (16,16,3),
    (17,8,3),
    (18,8,4),
    (19,17,4),
    (20,18,4),
    (22,8,5),
    (24,19,5),
    (25,10,5),
    (26,8,6),
    (27,14,6),
    (28,21,6),
    (29, 8,7),
    (30,22,7),
    (31,20,7),
    (32,8,8),
    (33,20,8),
    (34,22,8),
    (35,23,9),
    (36,24,9),
    (37,25,9),
    (38,14,9); 
    
  
INSERT INTO album 
VALUES   
	(1,'When We All Fall Asleep, Where Do We Go?','2019-03-29'),
	(2,'After Hours','2020-02-13'),
	(3,'Collaborations Project','2019-07-12'),
	(4,'Rare','2020-01-10'),
	(5,'Future Nostalgia', '2020-03-27'),
	(6,'Love Goes','2020-10-30'),
	(7,'30','2021-11-19'),
	(8,'Lust for Life','2018-07-21'); 






INSERT INTO track  
VALUES 
	(1,'You Should See Me in a Crown',3,1),
	(2,'Bad Guy',3.14,1),
	(3,'Save Your Tears',3.35,2),
	(4,'In Your Eyes',3.57,2),
	(5,'Beautiful People',3.26,3),
	(6,'Rare',3.40,4),
	(7,'Break My Heart',3.41,5),
	(8,'Hallucinate',3.28,5),
	(9,'My Oasis',2.59,6),
	(10,'Love Goes',4.44,6),
	(11,'Fire on Fire',4.06,6),
	(12,'Easy on Me',3.44,7),
	(13,'Oh My God',3.45,7),
	(14,'Love',4.39,8),
	(15,'Lust for Life',4.24,8),
	(16,'Summer Bummer',4.20,8); 

INSERT INTO singer_album 
VALUES 
	(3,1,2),
	(4,2,3),
	(5,3,4),
	(6,4,5),
	(7,5,6),
	(8,6,7),
	(9,7,8),
	(10,8,9); 


INSERT INTO collection  
VALUES
	(1,'collection-1','2018-11-15'),
	(2,'collection-2','2019-11-15'),
	(3,'collection-3','2020-11-15'),
	(4,'collection-4','2017-11-15'),
	(5,'collection-5','2018-01-10'),
	(6,'collection-6','2017-11-10'),
	(7,'collection-7','2022-11-07'),
	(8,'collection-8','2019-07-02'); 

INSERT INTO track_collection  
VALUES
    (1,1,1),
    (2,16,1),
    (3, 2,2),
    (4,15,2),
    (5, 3,3),
    (6,14,3),
    (7, 4,4),
    (8,13,4),
    (9, 5,5),
    (10,12,5),
    (11, 6,6),
    (12,11,6),
    (13, 7,7),
    (14,10,7),
    (15, 8,8),
    (16, 9,8); 
