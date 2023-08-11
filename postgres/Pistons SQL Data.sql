CREATE TABLE Team_Records (
    Season VARCHAR(10),
    Lg VARCHAR(10),
    Team VARCHAR(50),
    W INT,
    L INT,
    W_L_PCT DECIMAL
);

INSERT INTO Team_Records (Season, Team, W, L, W_L_PCT)
VALUES
    ('2022-23', 'Detroit Pistons', 17, 65, 0.207),
    ('2021-22', 'Detroit Pistons', 23, 59, 0.28),
    ('2020-21', 'Detroit Pistons', 20, 52, 0.278),
    ('2019-20', 'Detroit Pistons', 20, 46, 0.303),
    ('2018-19', 'Detroit Pistons*', 41, 41, 0.5),
    ('2017-18', 'Detroit Pistons', 39, 43, 0.476),
    ('2016-17', 'Detroit Pistons', 37, 45, 0.451),
    ('2015-16', 'Detroit Pistons*', 44, 38, 0.537),
    ('2014-15', 'Detroit Pistons', 32, 50, 0.39),
    ('2013-14', 'Detroit Pistons', 29, 53, 0.354),
    ('2012-13', 'Detroit Pistons', 29, 53, 0.354),
    ('2011-12', 'Detroit Pistons', 25, 41, 0.379),
    ('2010-11', 'Detroit Pistons', 30, 52, 0.366),
    ('2009-10', 'Detroit Pistons', 27, 55, 0.329),
    ('2008-09', 'Detroit Pistons*', 39, 43, 0.476),
    ('2007-08', 'Detroit Pistons*', 59, 23, 0.72),
    ('2006-07', 'Detroit Pistons*', 53, 29, 0.646),
    ('2005-06', 'Detroit Pistons*', 64, 18, 0.78),
    ('2004-05', 'Detroit Pistons*', 54, 28, 0.659),
    ('2003-04', 'Detroit Pistons*', 54, 28, 0.659),
    ('2002-03', 'Detroit Pistons*', 50, 32, 0.61),
    ('2001-02', 'Detroit Pistons*', 50, 32, 0.61),
    ('2000-01', 'Detroit Pistons', 32, 50, 0.39),
    ('1999-00', 'Detroit Pistons*', 42, 40, 0.512),
    ('1998-99', 'Detroit Pistons*', 29, 21, 0.58),
    ('1997-98', 'Detroit Pistons', 37, 45, 0.451),
    ('1996-97', 'Detroit Pistons*', 54, 28, 0.659),
    ('1995-96', 'Detroit Pistons*', 46, 36, 0.561),
    ('1994-95', 'Detroit Pistons', 28, 54, 0.341);
	
CREATE TABLE PlayerStats (
    Player VARCHAR(50),
    Age INT,
    PTS DECIMAL,
    FG_percent DECIMAL,
    ThreeP_percent DECIMAL,
    FT_percent DECIMAL,
    TRB DECIMAL,
    AST DECIMAL,
    STL DECIMAL,
    BLK DECIMAL
);

INSERT INTO PlayerStats (Player, Age, PTS, FG_percent, ThreeP_percent, FT_percent, TRB, AST, STL, BLK)
VALUES
    ('Cade Cunningham', 21, 19.9, 0.415, 0.279, 0.837, 6.2, 6, 0.8, 0.6),
    ('Bojan Bogdanovic', 33, 21.6, 0.488, 0.411, 0.884, 3.8, 2.6, 0.6, 0.1),
    ('Jaden Ivey', 20, 16.3, 0.416, 0.343, 0.747, 3.9, 5.2, 0.8, 0.2),
    ('Saddiq Bey', 23, 14.8, 0.404, 0.345, 0.861, 4.7, 1.6, 1, 0.2),
    ('Isaiah Stewart', 21, 11.3, 0.442, 0.327, 0.738, 8.1, 1.4, 0.4, 0.7),
    ('Killian Hayes', 21, 10.3, 0.377, 0.28, 0.821, 2.9, 6.2, 1.4, 0.4),
    ('James Wiseman', 21, 12.7, 0.531, 0.167, 0.712, 8.1, 0.7, 0.2, 0.8),
    ('Jalen Duren', 19, 9.1, 0.648, 0, 0.611, 8.9, 1.1, 0.7, 0.9),
    ('Marvin Bagley III', 23, 12, 0.529, 0.288, 0.75, 6.4, 0.9, 0.5, 0.7),
    ('Isaiah Livers', 24, 6.7, 0.417, 0.365, 0.821, 2.8, 0.8, 0.5, 0.5),
    ('Alec Burks', 31, 12.8, 0.436, 0.414, 0.814, 3.1, 2.2, 0.7, 0.2),
    ('Eugene Omoruyi', 25, 9.7, 0.425, 0.293, 0.723, 3.5, 1, 0.8, 0.2),
    ('Cory Joseph', 31, 6.9, 0.427, 0.389, 0.792, 1.7, 3.5, 0.5, 0.1),
    ('R.J. Hampton', 21, 7.3, 0.423, 0.365, 0.667, 2.3, 1, 0.5, 0.2),
    ('Hamidou Diallo', 24, 9.3, 0.573, 0.238, 0.588, 3.5, 1, 0.9, 0.3),
    ('Rodney McGruder', 31, 5.7, 0.408, 0.423, 0.818, 2.3, 0.9, 0.5, 0),
    ('Kevin Knox', 23, 5.6, 0.469, 0.371, 0.788, 2.6, 0.4, 0.3, 0.3),
    ('Jared Rhoden', 23, 3.2, 0.386, 0.25, 1, 2.6, 0.3, 0.3, 0.1),
    ('Nerlens Noel', 28, 2.3, 0.4, 0.5, 0.7, 2.6, 0.5, 0.9, 0.6),
    ('Buddy Boeheim', 23, 1.6, 0.185, 0.16, 1, 0.6, 0.4, 0.2, 0),
    ('Braxton Key', 25, 1.3, 1, 0, 1, 0.3, 0, 0, 0),
    ('Stanley Umude', 23, 2, 0, 0, 1, 0, 0, 1, 1);

