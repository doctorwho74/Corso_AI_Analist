/* Si considerino le seguenti due tabelle con 20 dati l'una:
1. Clienti (
2. id INT,
3. nome VARCHAR(100),
4. città VARCHAR(100)
5. )
1. Ordini (
2. id INT,
3. id_cliente INT,
4. data_ordine DATE,
5. importo DECIMAL(7,2)
6. )
Le due tabelle sono collegate dalla relazione tra Clienti.id e Ordini.id_cliente.
*/

create database lezioni;

use lezioni
;

create table clienti (
    id int,
    nome VARCHAR (100),
    citta VARCHAR (100) 
);

CREATE TABLE oridni (
    id INT,
    id_cliente INT,
    data_ordine DATE,
    importo DECIMAL (7,2)
);

INSERT INTO clienti (id, nome, citta) VALUES (1, 'Mario Rossi', 'Milano');
INSERT INTO clienti (id, nome, citta) VALUES (2, 'Laura Bianchi', 'Roma');
INSERT INTO clienti (id, nome, citta) VALUES (3, 'Giovanni Verdi', 'Napoli');
INSERT INTO clienti (id, nome, citta) VALUES (4, 'Giulia Ferrari', 'Torino');
INSERT INTO clienti (id, nome, citta) VALUES (5, 'Antonio Russo', 'Palermo');
INSERT INTO clienti (id, nome, citta) VALUES (6, 'Francesca Esposito', 'Genova');
INSERT INTO clienti (id, nome, citta) VALUES (7, 'Stefano Romano', 'Bologna');
INSERT INTO clienti (id, nome, citta) VALUES (8, 'Anna Colombo', 'Firenze');
INSERT INTO clienti (id, nome, citta) VALUES (9, 'Alessandro Ricci', 'Bari');
INSERT INTO clienti (id, nome, citta) VALUES (10, 'Valeria Marino', 'Catania');
INSERT INTO clienti (id, nome, citta) VALUES (11, 'Marco Greco', 'Venezia');
INSERT INTO clienti (id, nome, citta) VALUES (12, 'Elena Bruno', 'Verona');
INSERT INTO clienti (id, nome, citta) VALUES (13, 'Roberto Gallo', 'Messina');
INSERT INTO clienti (id, nome, citta) VALUES (14, 'Chiara Conti', 'Padova');
INSERT INTO clienti (id, nome, citta) VALUES (15, 'Davide De Luca', 'Trieste');
INSERT INTO clienti (id, nome, citta) VALUES (16, 'Silvia Costa', 'Taranto');
INSERT INTO clienti (id, nome, citta) VALUES (17, 'Simone Giordano', 'Brescia');
INSERT INTO clienti (id, nome, citta) VALUES (18, 'Federica Rizzo', 'Parma');
INSERT INTO clienti (id, nome, citta) VALUES (19, 'Luca Lombardi', 'Prato');
INSERT INTO clienti (id, nome, citta) VALUES (20, 'Martina Moretti', 'Modena');

INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (1, 1, '2026-01-10', 150.50);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (2, 2, '2026-01-12', 89.99);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (3, 3, '2026-01-15', 420.00);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (4, 4, '2026-01-15', 25.50);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (5, 5, '2026-01-18', 1350.00);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (6, 6, '2026-01-20', 75.00);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (7, 7, '2026-01-22', 210.45);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (8, 8, '2026-01-25', 55.00);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (9, 9, '2026-01-28', 99.90);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (10, 10, '2026-02-01', 340.00);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (11, 11, '2026-02-02', 18.50);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (12, 12, '2026-02-05', 1250.00);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (13, 13, '2026-02-08', 65.00);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (14, 14, '2026-02-10', 880.20);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (15, 15, '2026-02-12', 45.00);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (16, 1, '2026-02-15', 120.00);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (17, 2, '2026-02-18', 35.99);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (18, 3, '2026-02-20', 95.00);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (19, 19, '2026-02-22', 610.00);
INSERT INTO oridni (id, id_cliente, data_ordine, importo) VALUES (20, 20, '2026-02-25', 115.30);

select * from clienti;
SELECT * FROM ordini;

ALTER TABLE oridni RENAME TO ordini;


 SELECT 
    clienti.nome, 
    ordini.data_ordine, 
    ordini.importo
FROM 
    clienti, 
    ordini
WHERE 
    clienti.id = ordini.id_cliente;




