CREATE DATABASE colecaogames;

CREATE TABLE jogo(
	idjogo INT PRIMARY KEY,
    nomejogo VARCHAR(30),
    descricao VARCHAR(30)
);

CREATE TABLE colecaogames.fabricante(
	idfabricante INT PRIMARY KEY,
    nomefab VARCHAR(30),
    ano_fundacao INT
);

CREATE TABLE colecaogames.midia(
	idmidia INT PRIMARY KEY,
    nomemid VARCHAR(30),
    velocidade_leitura INT
);

CREATE TABLE colecaogames.plataforma(
	idplataforma INT PRIMARY KEY,
    nomeplat VARCHAR(30),
    ano_lancamento INT,
    memoria INT,
    idfabricante INT,
    CONSTRAINT idfabricante FOREIGN KEY (idfabricante) REFERENCES fabricante (idfabricante)
);

CREATE TABLE colecaogames.compativel_midia(
	idplataforma INT,
    CONSTRAINT idplataforma FOREIGN KEY (idplataforma) REFERENCES plataforma (idplataforma),
    idmidia INT,
    CONSTRAINT idmidia FOREIGN KEY (idmidia) REFERENCES midia (idmidia)
);

CREATE TABLE colecaogames.compativel_jogo_plataforma(
	idplataforma INT,
    idjogo INT,
    CONSTRAINT idjogo FOREIGN KEY (idjogo) REFERENCES jogo (idjogo),
    quantidade INT,
    ano_lancamentoJogo INT
);

ALTER TABLE compativel_jogo_plataforma ADD FOREIGN KEY (idplataforma) REFERENCES plataforma (idplataforma);

INSERT INTO `colecaogames`.`fabricante` (`idfabricante`, `nomefab`, `ano_fundacao`) VALUES (1, 'Nintendo', 1889);
INSERT INTO `colecaogames`.`fabricante` (`idfabricante`, `nomefab`, `ano_fundacao`) VALUES (2, 'Sony', 1946);
INSERT INTO `colecaogames`.`fabricante` (`idfabricante`, `nomefab`, `ano_fundacao`) VALUES (3, 'Microsoft', 1975);
INSERT INTO `colecaogames`.`fabricante` (`idfabricante`, `nomefab`, `ano_fundacao`) VALUES (4, 'Atari', 1972);

SELECT * FROM fabricante;

INSERT INTO `colecaogames`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (1, 'Atari 2600', 1977, '128', 4);
INSERT INTO `colecaogames`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (2, 'NES', 1985, '2048', 1);
INSERT INTO `colecaogames`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (3, 'SNES', 1990, '131072', 1);
INSERT INTO `colecaogames`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (4, 'Wii', 2006, '92274688', 1);
INSERT INTO `colecaogames`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (5, 'Xbox360', 2005, '536870912', 3);
INSERT INTO `colecaogames`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (6, 'PlayStation3', 2006, '536870912', 2);

SELECT * FROM plataforma;

INSERT INTO `colecaogames`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (1, 'CD', 10);
INSERT INTO `colecaogames`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (2, 'DVD', 20);
INSERT INTO `colecaogames`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (3, 'Blu-ray', 40);
INSERT INTO `colecaogames`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (4, 'Disquete', 1);
INSERT INTO `colecaogames`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (5, 'SD', 100);
INSERT INTO `colecaogames`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (6, 'Cartucho', 1000);
INSERT INTO `colecaogames`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (7, 'HD-USB', 100);

SELECT * FROM midia;

INSERT INTO `colecaogames`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (1, 'River Raid', 'Tiro');
INSERT INTO `colecaogames`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (2, 'Mario Bros', 'Aventura');
INSERT INTO `colecaogames`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (3, 'F-Zero', 'Corrida');
INSERT INTO `colecaogames`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (4, 'Super Mario Bros', 'Aventura');
INSERT INTO `colecaogames`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (5, 'Wii Sports', 'Esportes variados');
INSERT INTO `colecaogames`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (6, 'FIFA12', 'Futebol');
INSERT INTO `colecaogames`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (7, 'God of War 3', 'Ação');
INSERT INTO `colecaogames`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (8, 'Forza MotorSport', 'Corrida realista');
INSERT INTO `colecaogames`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (9, 'Gran Turismo 5', 'Corrida realista');
INSERT INTO `colecaogames`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (10, 'Street Fighter IV', 'Luta');

SELECT * FROM jogo;

INSERT INTO `colecaogames`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (1, 6);
INSERT INTO `colecaogames`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (2, 4);
INSERT INTO `colecaogames`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (2, 6);
INSERT INTO `colecaogames`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (3, 6);
INSERT INTO `colecaogames`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (4, 2);
INSERT INTO `colecaogames`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (4, 5);
INSERT INTO `colecaogames`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (5, 2);
INSERT INTO `colecaogames`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (5, 7);
INSERT INTO `colecaogames`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (6, 3);
INSERT INTO `colecaogames`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (6, 7);

SELECT * FROM compativel_midia;

INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (1, 1, 2, 1982);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (1, 2, 2, 1983);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (2, 2, 1, 1983);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (3, 3, 1, 1990);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (4, 3, 1, 2007);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (2, 4, 1, 1985);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (4, 4, 1, 2007);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (4, 5, 1, 2006);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (4, 6, 1, 2011);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (5, 6, 1, 2011);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (6, 6, 1, 2011);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (6, 7, 2, 2012);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (5, 8, 1, 2011);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (6, 9, 1, 2010);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (5, 10, 2, 2008);
INSERT INTO `colecaogames`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamentoJogo`) VALUES (6, 10, 1, 2008);

SELECT * FROM compativel_jogo_plataforma;
