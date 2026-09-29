
USE world;
CREATE table libri (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titolo VARCHAR(100),
    autore VARCHAR(100),
    genere VARCHAR(50), 
    prezzo DECIMAL (5,2),
    anno_pubblicazione INT
);

INSERT INTO libri (titolo, autore, genere, prezzo, anno_pubblicazione)
VALUES ('CyberPunk','Gibson-Stephenson-Sterling','Fantascienza', 23.20,1994), 
('I Serial Killer', 'AAVV', 'Cronaca', 22.00, 2005),
('Dr Jekill and Mr Hide', 'Stevenson', 'Romanzo', 30.50, 2001),
('Yokai', 'Noriko Yamamoto', 'Arte', 28.78, 2020),
('Around the world in 80 days','Jules Verne', 'Romanzo',27.80, 2025),
('1974', 'Pino Casamassima', 'Cronaca', 22.50, 2024);

delete from libri 
where id in(3,5,4,6,11,12,13,14,15,16);

select genere, COUNT(*) AS totale_libri
From libri
group by genere;

SELECT genere, COUNT(*) AS totale_libri,
ROUND(AVG(prezzo), 2) AS Prezzo_Medio 
FROM libri
GROUP BY genere
order by genere;

SELECT titolo, anno_pubblicazione, prezzo
FROM libri
where anno_pubblicazione >2010 
ORDER BY anno_pubblicazione DESC, prezzo ASC;

