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
	id serial primary key, 
	TrackName varchar(80),
	TrackDuration integer,
	AlbumId integer not null references Albums
	
);

create table if not exists Genres (
	id serial primary key,
	GenreName varchar(60)
);

create table if not exists ArtistGenres (
		artist_id integer references Artists(id),
		genres_id integer references Genres(id),
		constraint pk primary key (genres_id, artist_id)
);