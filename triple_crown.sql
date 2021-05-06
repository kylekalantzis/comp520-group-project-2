DROP DATABASE IF EXISTS Triple;
CREATE DATABASE Triple;
USE Triple;
CREATE TABLE Winner(
year INT PRIMARY KEY,
derbywinner VARCHAR(60) NOT NULL,
preakwinner VARCHAR(60) NOT NULL,
belmontwinner VARCHAR(60) NOT NULL
);

INSERT INTO Winner(year, derbywinner, preakwinner, belmontwinner)
VALUES
('2014', 'California Chrome', 'California Chrome', 'Tonalist'),
('2013', 'Orb', 'Oxbow', 'Palace Malice'),
('2012','Ill Have Another', 'Ill Have Another', 'Union Rags'),
('2011', 'Animal Kingdom', 'Shackleford', 'Ruler on Ice'),
('2010', 'Super Saver', 'Lookin At Lucky', 'Drosselmeyer'),
('2009', 'Mine That Bird', 'Rachael Alexandra', 'Summer Bird'),
('2008', 'Big Brown', 'Big Brown', 'Da Tara'),
('2007', 'Street Sense', 'Curlin', 'Rags to Riches'),
('2006', 'Barbaro', 'Bernardini', 'Jazil'),
('2015', 'American Pharoah', 'American Pharoah', 'American Pharoah');

CREATE VIEW Derby AS
SELECT
year,
derbywinner as winner
FROM Winner;

CREATE VIEW Preakness AS
SELECT
year,
preakwinner as winner
FROM Winner;

CREATE VIEW Belmont AS
SELECT
year,
belmontwinner as winner
FROM Winner;

SELECT year FROM Derby d WHERE d.winner NOT IN (SELECT p.winner FROM Preakness p WHERE p.winner NOT IN (SELECT b.winner FROM Belmont b WHERE b.winner NOT IN (SELECT d.winner FROM Derby d)));

SELECT year, d.winner FROM Derby d WHERE d.winner in (SELECT p.winner FROM Preakness p WHERE p.winner NOT IN (SELECT b.winner FROM Belmont b));

SELECT year, d.winner FROM Derby d WHERE d.winner in (SELECT p.winner FROM Preakness p WHERE p.winner in (SELECT b.Winner FROM Belmont b));
