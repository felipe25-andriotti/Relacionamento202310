/* Criação da tabela Cidades */
CREATE TABLE Cidades (
    id INT PRIMARY KEY,         
    nome VARCHAR(60) NOT NULL,  
    populacao INT              
);

/* Criação da tabela Alunos */
CREATE TABLE Alunos (
    id INT PRIMARY KEY,          
    nome VARCHAR(60) NOT NULL,  
    data_nasc DATE,              
    cidade_id INT,               
    FOREIGN KEY (cidade_id) REFERENCES Cidades (id)  /* Restrição de chave estrangeira para garantir integridade referencial */
);

/* Inserção de dados na tabela Cidades */
INSERT INTO Cidades (id, nome, populacao) VALUES (1, 'Arial dos Tucanos', 42632);
INSERT INTO Cidades (id, nome, populacao) VALUES (2, 'Springfield', 13820);
INSERT INTO Cidades (id, nome, populacao) VALUES (3, 'Hill Valley', 27383);
INSERT INTO Cidades (id, nome, populacao) VALUES (4, 'Coruscant', 19138);
INSERT INTO Cidades (id, nome, populacao) VALUES (5, 'Minas Tirith', 31394);

/* Inserção de dados na tabela Alunos */
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (1, 'Immanuel Kant', date '1724-04-22', 4);
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (2, 'Alan Turing', date '1912-06-23', 3);
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (3, 'George Boole', date '2002-01-01', 1);
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (4, 'Lynn Margulis', date '1991-08-22', 3);  
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (5, 'Nicola Tesla', date '2090-01-08', NULL);
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (6, 'Ada Lovelace', date '1978-05-28', 4);
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (7, 'Claude Shannon', date '1982-10-15', 3);
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (8, 'Charles Darwin', date '2010-02-06', NULL);
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (9, 'Marie Curie', date '2007-07-12', 3);
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (10, 'Carl Sagan', date '2000-11-20', 1);
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (11, 'Tim Berners-Lee', date '1973-12-05', 4);
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES (12, 'Richard Feynman', date '1982-09-12', 1);

/* Seleção de dados da tabela Alunos com junção (JOIN) com a tabela Cidades usando a chave cidade_id */
SELECT * FROM Alunos INNER JOIN Cidades ON Alunos.cidade_id = Cidades.id;


