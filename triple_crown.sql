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
