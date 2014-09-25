create database sinatracker;
create table tasks (
	id integer primary key not null,
	task varchar(255) not null,
	detail text,
	priority integer,
	created date
);