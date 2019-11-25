/*1*/
SELECT DISTINCT nomeplat
FROM (plataforma AS P NATURAL JOIN compativel_midia) NATURAL JOIN midia AS M
WHERE velocidade_leitura > 100;

/*2*/
SELECT nomeplat, ano_lancamento
FROM plataforma NATURAL JOIN fabricante
WHERE ano_fundacao > 1970;

/*3*/
SELECT nomemid, velocidade_leitura
FROM midia
WHERE velocidade_leitura BETWEEN 10 AND 30
ORDER BY velocidade_leitura DESC, nomemid ASC;

/*4*/
INSERT INTO `colecaogames`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`)
VALUES (7, 'WiiU', 2012, '214748364',
(SELECT idfabricante
FROM fabricante
WHERE nomefab = 'Nintendo'));

SELECT * FROM plataforma;

/*5*/
SELECT nomeplat, nomefab, SUM(quantidade) AS numeroJogos
FROM (compativel_jogo_plataforma AS CPP NATURAL JOIN plataforma) NATURAL JOIN fabricante
GROUP BY CPP.idplataforma
ORDER BY nomeplat;

/*6*/
SELECT nomejogo
FROM compativel_jogo_plataforma NATURAL JOIN jogo
GROUP BY nomejogo
HAVING COUNT(*) > 2;

/*7*/
SELECT ano_lancamentoJogo, SUM(quantidade) AS jogosLancados
FROM compativel_jogo_plataforma
GROUP BY ano_lancamentoJogo
ORDER BY ano_lancamentoJogo ASC;

/*8*/
SELECT nomejogo, ano_lancamentoJogo, nomeplat
FROM (compativel_jogo_plataforma NATURAL JOIN jogo) NATURAL JOIN plataforma
WHERE ano_lancamentoJogo <= ALL (SELECT ano_lancamentoJogo FROM compativel_jogo_plataforma);

/*9*/
SELECT nomejogo, truncate(AVG(memoria),0) AS memoria_utilizada
FROM (compativel_jogo_plataforma NATURAL JOIN plataforma) NATURAL JOIN jogo
GROUP BY nomejogo;

/*10*/
SELECT nomeplat
FROM compativel_midia NATURAL JOIN plataforma
GROUP BY nomeplat
HAVING COUNT(*) > 1
ORDER BY nomeplat ASC;

/*11 e 12*/
CREATE TABLE tipo_jogo(
	idTipo_jogo INT PRIMARY KEY,
    nome_tipo VARCHAR(30)
);

ALTER TABLE jogo ADD idTipo_jogo INT DEFAULT 1;

INSERT INTO `colecaogames`.`tipo_jogo` (`idTipo_jogo`, `nome_tipo`) VALUES (1, 'Tiro');
INSERT INTO `colecaogames`.`tipo_jogo` (`idTipo_jogo`, `nome_tipo`) VALUES (2, 'Aventura');
INSERT INTO `colecaogames`.`tipo_jogo` (`idTipo_jogo`, `nome_tipo`) VALUES (3, 'Corrida');
INSERT INTO `colecaogames`.`tipo_jogo` (`idTipo_jogo`, `nome_tipo`) VALUES (4, 'Esportes variados');
INSERT INTO `colecaogames`.`tipo_jogo` (`idTipo_jogo`, `nome_tipo`) VALUES (5, 'Futebol');
INSERT INTO `colecaogames`.`tipo_jogo` (`idTipo_jogo`, `nome_tipo`) VALUES (6, 'Ação');
INSERT INTO `colecaogames`.`tipo_jogo` (`idTipo_jogo`, `nome_tipo`) VALUES (7, 'Corrida Realista');
INSERT INTO `colecaogames`.`tipo_jogo` (`idTipo_jogo`, `nome_tipo`) VALUES (8, 'Luta');

UPDATE jogo
SET idTipo_jogo = 2
WHERE descricao = 'Aventura';

UPDATE jogo
SET idTipo_jogo = 3
WHERE descricao = 'Corrida';

UPDATE jogo
SET idTipo_jogo = 4
WHERE descricao = 'Esportes Variados';

UPDATE jogo
SET idTipo_jogo = 5
WHERE descricao = 'Futebol';

UPDATE jogo
SET idTipo_jogo = 6
WHERE descricao = 'Ação';

UPDATE jogo
SET idTipo_jogo = 7
WHERE descricao = 'Corrida Realista';

UPDATE jogo
SET idTipo_jogo = 8
WHERE descricao = 'Luta';

ALTER TABLE jogo ADD FOREIGN KEY (idTipo_jogo) REFERENCES tipo_jogo (idTipo_jogo);
ALTER TABLE jogo DROP COLUMN descricao;

SELECT * FROM tipo_jogo;
SELECT * FROM jogo;

/*13*/
SELECT nomejogo, nome_tipo
FROM jogo NATURAL JOIN tipo_jogo;

SELECT nome_tipo, COUNT(idTipo_jogo) AS quantidadeJogos
FROM tipo_jogo NATURAL JOIN jogo
GROUP BY nome_tipo;
