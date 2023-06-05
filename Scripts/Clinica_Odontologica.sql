---------------------------**AULA 15/05**---------------------
--------------AULA: BADA  CURSO: JOGOS DIGITAIS --------------
--------------------------------------------------------------

-----CRIAÇÃO DA TABELA: PACIENTE---
CREATE TABLE PACIENTES(
ID_PACIENTES INTEGER PRIMARY KEY NOT NULL,
NOME_PACIENTE VARCHAR (70),
ENDERECO VARCHAR (50),
EMAIL VARCHAR (50),
SENHA VARCHAR (30)
);

-----SELECT *VISUALIZAÇÃO DA TABELA(ESTRUTURA & REGISTROS)
SELECT * FROM PACIENTES;
-----INSERT= INSERÇÃO DE VALORES -------
INSERT INTO PACIENTES (ID_PACIENTES, NOME_PACIENTE, ENDERECO, EMAIL, SENHA)
VALUES (1, 'AMELIA PEREIRA', 'RUA: CINCO','AM@UOL.COM.BR', '123'),
       (2, 'JOSE SILVA', 'RUA: FLORES', 'J@YAHOO.COM', 'SENHA'),
       (3, 'PEDRO YUTA', 'RUA: DAS NUVENS', 'PY@UOL', 'SENHA123');

-----CRIAÇÃO DA TABELA: DENTISTA---
CREATE TABLE DENTISTA (
ID_DENTISTA INT PRIMARY KEY NOT NULL,
CRO INT, 
NOME_DENTISTA TEXT,
ESPECIALIDADE TEXT
);

-----INSERT= INSERÇÃO DE VALORES -------
INSERT INTO DENTISTA (ID_DENTISTA, CRO, NOME_DENTISTA, ESPECIALIDADE)
VALUES (1, 185.564-4, 'Dr Paulo Eduardo','Ortodontia'),
       (2, 045.954-7, 'Dr Eduardo José','Endodontia'),
       (3, 985.664-8, 'Drª Maria Paula','Odontopediatria'),
       (4, 226.084-7, 'Dr Felipe Souza','Endodontia'),
       (5, 240.557-8, 'Dr Samuel Silva','Periodontia'),
       (6, 175.564-0, 'Dr Paulo Eduardo','Odontopediatria'),
       (7, 507.994-2, 'Drª Pietra Souza','Periodontia'),
       (8, 385.464-4, 'Drª Maria Paula','Endodontia');
       


-- Selecionando nome e email da tabela pacientes --
SELECT EMAIL, NOME_PACIENTE FROM Pacientes;

-- Selecionando os nomes da tabela dentistas
SELECT NOME_DENTISTA FROM Dentista;

-- selecionando os dentistas onde a especialidade é 'Odontopediatria' --
SELECT * FROM Dentista WHERE ESPECIALIDADE LIKE 'Odontopediatria';

-- Selecionando todos os dentistas onde tem o nome 'Eduardo' --
SELECT * FROM DENTISTA WHERE NOME_DENTISTA LIKE '%Eduardo%';

-- Selecionando todos os dentistas onde o primeiro nome é 'Eduardo'
SELECT * FROM DENTISTA WHERE NOME_DENTISTA LIKE 'Eduardo%';

-- Selecionando o nome e a especialidade dos dentistas onde em sua especialidade tem alguma letra no meio da silaba 'ia' --
SELECT NOME_DENTISTA, ESPECIALIDADE FROM DENTISTA WHERE ESPECIALIDADE LIKE '%i%a%';

-- Inserindo um novo Dentista --
INSERT INTO DENTISTA (ID_DENTISTA, CRO, NOME_DENTISTA, ESPECIALIDADE)
VALUES (9, 185.564-4, 'Eduardo Paulatejando','Ortodontita');

-- Deletando o Dentista com id 9
DELETE FROM DENTISTA WHERE ID_DENTISTA = 9;

-- Tabela Relacional --

CREATE TABLE Consulta(
ID_Consulta INT PRIMARY KEY NOT NULL,
valor_Consulta REAL,
Data_Consulta DATE,
Horario_Consulta DATETIME,
FK_ID_Paciente INTEGER,
FK_ID_Dentista INTEGER,
FOREIGN KEY (FK_ID_Paciente) REFERENCES PACIENTES(ID_PACIENTES),
FOREIGN KEY (FK_ID_Dentista) REFERENCES DENTISTA (ID_DENTISTA)
);

SELECT * FROM PACIENTES;
SELECT * FROM DENTISTA;
SELECT * FROM Consulta;

INSERT INTO Consulta
VALUES(1, 250.00, '25/06/23', '14H', 2, 6);

