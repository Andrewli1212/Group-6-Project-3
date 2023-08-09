drop table players;
drop table team;

CREATE TABLE players (
    Rk int PRIMARY KEY,
    Player varchar(30) NOT NULL,
    Age int NOT NULL,
    TRB decimal NOT NULL,
	AST decimal NOT NULL,
	STL decimal NOT NULL,
	BLK decimal NOT NULL,
	PTS decimal NOT NULL
);

CREATE TABLE team (
	Season varchar(10) PRIMARY KEY,
	Lg varchar(3) NOT NULL,
	Team varchar(30) NOT NULL,
	W int NOT NULL,
	L int NOT NULL,
	WinLosePercentage decimal NOT NULL
);