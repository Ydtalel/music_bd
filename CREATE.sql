create table if not exists Genre (
	 id serial primary key,
	 genre_name varchar(80) not null
);


create table if not exists Singer (
	 id serial primary key,
	 singer_name varchar(100) not null
	 --genre_id integer not null

);


create table if not exists genre_singer (
	 id serial primary key,	
	 genre_id integer not null references Genre(id),
	 singer_id integer not null references Singer(id)
);

----------

create table if not exists Album (
	 id serial primary key,
	 album_name varchar(80) not null,
	 release_date date not null
	 --singer_id integer not null
);


create table if not exists singer_album (
	 id serial primary key,	
	 album_id integer not null references Album(id),
	 singer_id integer not null references Singer(id)
);

-----------------

create table if not exists Track (
	 id serial primary key,
	 track_name varchar(128) not null,
	 track_duration numeric CHECK (track_duration > 0),
	 album_id integer not null references Album(id) 
);
	 
create table if not exists Collection (
	 id serial primary key,
	 collection_name varchar(100) not null,
	 release_date date not null
	 --track_id integer not null
);


create table if not exists track_collection (
	 id serial primary key,	
	 track_id integer not null references Track(id),
	 collection_id integer not null references Collection(id)
);