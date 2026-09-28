#insert INTO world.city i

DESCRIBE world.demo;

use world;
CREATE TEMPORARY TABLE demo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(50),
    voto INT
);

INSERT INTO demo (nome, voto)
VALUES ('Marco Rossi', 28), ('Luca Verdi', 25);

SELECT * FROM demo;

UPDATE demo
SET nome='Giulia Giulietta', voto='22'
where ID=1;

ALTER TABLE customer RENAME TO demo
;

SELECT * FROM demo;

INSERT INTO world.demo (nome, voto)
VALUES ('Maria Bianchi', 27)
;

DESCRIBE demo;

SELECT * FROM demo;

update demo
set voto=voto +1
where voto <=30;

DELETE FROM demo;

select COUNT(*)

