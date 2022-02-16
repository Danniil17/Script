create table if not exists Artists (
	id serial primary key,
	ArtistName varchar(60) not null
);

create table if not exists Albums (
	id serial primary key,
	AlbumName varchar(40) not null,
	ReleaseDate integer,
	ArtisId integer references Artists(id)
	
);
 
create table if not exists Tracks (
	id serial, 
	TrackName varchar(80),
	TrackDuration integer,
	AlbumId integer,
	ArtistId integer
);

create table if not exists Genres (
	id serial primary key,
	GenreName varchar(60)
);