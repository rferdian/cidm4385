DROP DATABASE derbyNames;
DROP USER  webUser;
 
CREATE DATABASE DerbyNames;
CREATE USER webUser IDENTIFIED BY 'webuser';
 
USE DerbyNames;
 
GRANT SELECT, INSERT, UPDATE on * to webUser;
 
CREATE TABLE Leagues(
    LeagueId int AUTO_INCREMENT PRIMARY KEY,
    LeagueName nvarchar(512) NOT NULL,
    URL nvarchar(512) NULL,
    StateProvince varchar(3) NOT NULL,
    CountryCode varchar(3) NOT NULL
);
 
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode)  select 'Ann Arbor Derby Dimes', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Atomic Cupcakes', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Barry County Black Heart Maidens', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Brighton Roller Dollz', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Central Michigan Roller Derby', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Detroit Derby Girls', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Flint City Derby Girls', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Grand Rapids Area Roller Derby', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Grand Raggidy Roller Girls', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Lansing Derby Vixens', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Mid Michigan Derby Girls', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Mitten Mavens', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Skee Town Skirtz', NULL, 'MI', 'USA';
INSERT Leagues (LeagueName, URL, StateProvince, CountryCode) select 'Traverse City Roller Derby', NULL, 'MI', 'USA';
 
CREATE TABLE DerbyNames(
    DerbyNameId int AUTO_INCREMENT PRIMARY KEY,
    Name varchar(400) NOT NULL,
    Number varchar(400) NULL,
    DateAdded datetime NOT NULL,
    League varchar(400) NOT NULL );
     
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Scarlet Joheadslam', '1013', '2010/07/28', 'Ann Arbor Derby Dimes';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Bomb Quad', '18', '2010/12/04', 'Atomic Cupcakes';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Melisshious Destructio', '28', '2010/10/19', 'Barry County Black Heart Maidens';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'RockNESS Monster', NULL, '2010/07/28', 'Brighton Roller Dollz';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Rosie the Pivoter', NULL, '2010/10/26', 'Central Michigan Roller Derby';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Addy Mantium', '36', '2006/04/15', 'Detroit Derby Girls';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Chess T. James', '112 ci', '2010/02/13', 'Flint City Derby Girls';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Kit E Katastrophe', NULL, '2011/12/29', 'Grand Rapids Area Roller Derby';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Dee Structio', NULL, '2007/07/30', 'Grand Raggidy Roller Girls';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'C3KO', '6106', '2010/05/02', 'Lansing Derby Vixens';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Frisky Business', 'Purrfect 10', '2010/05/02', 'Lansing Derby Vixens';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Ellota Madness', '13', '2009/02/10', 'Mid Michigan Derby Girls';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Bubonic Paige', '1400', '2010/07/16', 'Mitten Mavens';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Oscar the Ouch', NULL, '2010/12/01', 'Skee Town Skirtz';
INSERT DerbyNames (Name, Number, DateAdded, League) select 'Pam SlamHerSo', '36 dbl D', '2011/01/03', 'Traverse City Roller Derby';
