/*Esercizio
Si consideri una tabella chiamata Vendite con la seguente struttura, almeno 20 elementi generati:
1. Vendite (
2. Id INT,
3. prodotto VARCHAR(100),
4. categoria VARCHAR(50),
5. quantita INT,
6. prezzo_unitario DECIMAL(6,2),
7. data_vendita DATE
8. )
Scrivi le query SQL per rispondere alle seguenti richieste:
• Totale vendite per categoria
Visualizza, per ogni categoria, il numero totale di vendite effettuate.
• Prezzo medio per categoria
Mostra, per ogni categoria, il prezzo medio dei prodotti venduti.
• Quantità totale venduta per ogni prodotto
Mostra il totale delle quantità vendute (SUM) per ciascun prodotto.
• Prezzo massimo e minimo venduto nella tabella
Mostra il prezzo massimo e il prezzo minimo tra tutti i prodotti venduti.
• Numero totale di righe nella tabella
Conta quante vendite sono state registrate nella tabella Vendite.
• I 5 prodotti più costosi (in base al prezzo_unitario)
Elenca i 5 prodotti più costosi ordinati in modo decrescente rispetto al prezzo.
• I 3 prodotti meno venduti per quantità totale
Mostra i nomi dei 3 prodotti con la quantità totale più bassa venduta (usa SUM e LIMIT).
*/

use world;
CREATE TABLE vendite(
    id INT, PRIMARY KEY
    prodotto VARCHAR (100),
    CATEGORIA VARCHAR (50),
    quantita INT,
    prezzo_unitario DECIMAL(6,2),
    data_vendita DATE
);

INSERT INTO vendite (id, prodotto, CATEGORIA, quantita, prezzo_unitario, data_vendita) VALUES
(1, 'Felpa con Cappuccio', 'Abbigliamento', 2, 39.90, '2024-08-03'),
(2, 'Frullatore Express', 'Casa e Cucina', 3, 34.99, '2024-05-03'),
(3, 'Jeans Slim Fit', 'Abbigliamento', 3, 49.90, '2024-05-08'),
(4, 'Borraccia Termica', 'Sport', 5, 18.50, '2024-05-01'),
(5, 'Tablet 10', 'Elettronica', 1, 320.00, '2024-06-04'),
(6, 'Smartwatch Z', 'Elettronica', 4, 199.50, '2024-07-06'),
(7, 'Asciugacapelli Ionico', 'Casa e Cucina', 2, 45.00, '2024-05-20'),
(8, 'T-shirt Cotone', 'Abbigliamento', 2, 19.99, '2024-03-02'),
(9, 'Scarpe da Ginnastica', 'Abbigliamento', 1, 79.95, '2024-06-29'),
(10, 'Jeans Slim Fit', 'Abbigliamento', 5, 49.90, '2024-01-08'),
(11, 'Jeans Slim Fit', 'Abbigliamento', 2, 49.90, '2024-04-28'),
(12, 'T-shirt Cotone', 'Abbigliamento', 4, 19.99, '2024-08-13'),
(13, 'Felpa con Cappuccio', 'Abbigliamento', 3, 39.90, '2024-03-21'),
(14, 'Tappetino Yoga', 'Sport', 1, 25.00, '2024-01-16'),
(15, 'Smartphone X', 'Elettronica', 1, 699.99, '2024-07-05'),
(16, 'Frullatore Express', 'Casa e Cucina', 3, 34.99, '2024-08-20'),
(17, 'Scarpe da Ginnastica', 'Abbigliamento', 1, 79.95, '2024-02-04'),
(18, 'Giacca Invernale', 'Abbigliamento', 5, 129.00, '2024-06-30'),
(19, 'Laptop Pro', 'Elettronica', 2, 999.00, '2024-01-08'),
(20, 'Tappetino Yoga', 'Sport', 4, 25.00, '2024-03-22');

DESCRIBE vendite;


ALTER TABLE world.vendite 
MODIFY id INT NOT NULL,
ADD PRIMARY KEY (id);

DESCRIBE vendite;

# Totale vendite per categoria
#Visualizza, per ogni categoria, il numero totale di vendite effettuate.

SELECT CATEGORIA, count(*) AS Tot_Vend_Categoria
FROM vendite
GROUP BY categoria;


# Prezzo medio per categoria
# Mostra, per ogni categoria, il prezzo medio dei prodotti venduti.

select categoria, Round(AVG(prezzo_unitario),2) as Prezzo_Medio_categoria
from vendite
GROUP BY categoria;

#Quantità totale venduta per ogni prodotto
#Mostra il totale delle quantità vendute (SUM) per ciascun prodotto.

select * from vendite;

SELECT prodotto, sum(quantita) AS tot_quant
from vendite
group by prodotto
order by tot_quant desc;

#Prezzo massimo e minimo venduto nella tabella
#Mostra il prezzo massimo e il prezzo minimo tra tutti i prodotti venduti.

select MIN(prezzo_unitario) as Minimo_prezzo, MAX(prezzo_unitario) as Massimo_prezzo
from vendite;

#Numero totale di righe nella tabella
#Conta quante vendite sono state registrate nella tabella Vendite.

select COUNT(*)
from vendite;


# I 5 prodotti più costosi (in base al prezzo_unitario)
# Elenca i 5 prodotti più costosi ordinati in modo decrescente rispetto al prezzo.

select DISTINCT prodotto, prezzo_unitario
FROM vendite
order by prezzo_unitario desc
limit 5;

#I 3 prodotti meno venduti per quantità totale
# Mostra i nomi dei 3 prodotti con la quantità totale più bassa venduta (usa SUM e LIMIT).

SELECT prodotto, SUM(quantita) AS tot_quantita
FROM vendite
GROUP BY prodotto
ORDER BY tot_quantita ASC
LIMIT 3;


/*Si consideri una tabella chiamata Clienti con la seguente struttura, almeno 20 dati inseriti:
1. Clienti (
2. id INT,
3. nome VARCHAR(100),
4. cognome VARCHAR(100),
5. email VARCHAR(100),
6. eta INT,
7. citta VARCHAR(100)
8. )

Scrivere le query SQL per rispondere alle seguenti richieste:
• Clienti con email su dominio Gmail
Seleziona tutti i clienti la cui email termina con @gmail.com.
• Clienti con nome che inizia con la lettera 'A'
Mostra tutti i clienti il cui nome comincia con la lettera A.
• Clienti con cognome che contiene esattamente 5 lettere
Mostra tutti i clienti il cui cognome è composto da esattamente 5 caratteri.
• Clienti con età compresa tra 30 e 40 anni (inclusi)
Elenca i clienti che hanno un'età compresa tra 30 e 40 anni, inclusi gli estremi.
• Clienti che vivono in città il cui nome contiene 'roma' (maiuscole/minuscole ignorate)
Mostra tutti i clienti che abitano in una città il cui nome contiene la stringa roma, indipendentemente da maiuscole o minuscole.
Da quale di queste nuove richieste vuoi iniziare? Scegline una e prova a scrivere la tua query, così la verifichiamo insieme!
*/

create table clienti (
    id int, 
    nome VARCHAR (100),
    cognome VARCHAR (100),
    email varchar (100),
    eta INT,
    citta VARCHAR (100)
)
;

describe clienti;

INSERT INTO clienti (id, nome, cognome, email, eta, citta) VALUES
(1, 'Alessandro', 'Rossi', 'alessandro.rossi@gmail.com', 35, 'Roma'),
(2, 'Anna', 'Verdi', 'anna.verdi@yahoo.com', 28, 'Milano'),
(3, 'Andrea', 'Ferrari', 'andrea.ferrari@gmail.com', 42, 'Torino'),
(4, 'Marco', 'Russo', 'marco.russo@outlook.com', 31, 'Napoli'),
(5, 'Antonio', 'Bianchi', 'antonio.b@gmail.com', 40, 'Palermo'),
(6, 'Giuseppe', 'Gallo', 'giuseppe.gallo@hotmail.com', 25, 'Roma'),
(7, 'Alessia', 'Costa', 'alessia.costa@gmail.com', 33, 'Bologna'),
(8, 'Luca', 'Fontana', 'luca.fontana@libero.it', 45, 'Firenze'),
(9, 'Aurora', 'Conti', 'aurora.conti@gmail.com', 19, 'Venezia'),
(10, 'Davide', 'Serra', 'davide.serra@gmail.com', 38, 'Genoa'),
(11, 'Alberto', 'Bruno', 'alberto.bruno@yahoo.it', 50, 'Bari'),
(12, 'Elena', 'Ricci', 'elena.ricci@gmail.com', 29, 'Catania'),
(13, 'Annamaria', 'Caruso', 'annamaria.c@outlook.it', 34, 'Roma'),
(14, 'Giorgio', 'Marini', 'giorgio.m@gmail.com', 30, 'Verona'),
(15, 'Alice', 'Villa', 'alice.villa@gmail.com', 22, 'Messina'),
(16, 'Roberto', 'Ferri', 'roberto.ferri@hotmail.it', 47, 'Padova'),
(17, 'Angelo', 'Sanna', 'angelo.sanna@gmail.com', 37, 'Trieste'),
(18, 'Chiara', 'Bini', 'chiara.bini@gmail.com', 39, 'Taranto'),
(19, 'Arturo', 'Sala', 'arturo.sala@live.com', 26, 'Novara'),
(20, 'Ambra', 'Leone', 'ambra.leone@gmail.com', 41, 'Roma');

select * From clienti;


#Clienti con email su dominio Gmail
#Seleziona tutti i clienti la cui email termina con @gmail.com.

select * 
from clienti
where email like '%gmail.com'
;

#Clienti con nome che inizia con la lettera 'A'
#Mostra tutti i clienti il cui nome comincia con la lettera A.

select * 
from clienti
where nome like 'A%'
;

# Clienti con cognome che contiene esattamente 5 lettere
# Mostra tutti i clienti il cui cognome è composto da esattamente 5 caratteri.

select * 
from clienti
where cognome like '_____'
;

#Clienti con età compresa tra 30 e 40 anni (inclusi)
#Elenca i clienti che hanno un'età compresa tra 30 e 40 anni, inclusi gli estremi.

select * 
from clienti
where eta  NOT BETWEEN 30 and 40
;


#Clienti che vivono in città il cui nome contiene 'roma' (maiuscole/minuscole ignorate)
#Mostra tutti i clienti che abitano in una città il cui nome contiene la stringa roma, indipendentemente da maiuscole o minuscole.

select * 
from clienti
where citta like '%roma%'
;


