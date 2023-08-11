create table PlayerStats (
	Player VARCHAR(50),
	Age INT,
	PTS Decimal(4,1),
	FG Decimal(4,2),
	ThreeP Decimal(4,2),
	FT Decimal(4,1),
	TRB Decimal(4,1),
	AST Decimal(4,1),
	STL Decimal(3,1),
	BLK Decimal(3,1)
);

CREATE TABLE TeamRecords (
    Season VARCHAR(10),
    Team VARCHAR(50),
    W INT,
    L INT,
    W_L_percent DECIMAL(5, 3)
);