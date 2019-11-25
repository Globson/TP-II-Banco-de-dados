/* INSERÇÃO DE DADOS */

INSERT INTO `trabalhobd`.`fabricante` (`idfabricante`, `nomefab`, `ano_fundacao`) VALUES (1, 'Nintendo', 1889);
INSERT INTO `trabalhobd`.`fabricante` (`idfabricante`, `nomefab`, `ano_fundacao`) VALUES (2, 'Sony', 1946);
INSERT INTO `trabalhobd`.`fabricante` (`idfabricante`, `nomefab`, `ano_fundacao`) VALUES (3, 'Microsoft', 1975);
INSERT INTO `trabalhobd`.`fabricante` (`idfabricante`, `nomefab`, `ano_fundacao`) VALUES (4, 'Atari', 1972);


INSERT INTO `trabalhobd`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (1, 'Atari 2600', 1977, '128', 4);
INSERT INTO `trabalhobd`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (2, 'NES', 1985, '2048', 1);
INSERT INTO `trabalhobd`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (3, 'SNES', 1990, '131072', 1);
INSERT INTO `trabalhobd`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (4, 'Wii', 2006, '92274688', 1);
INSERT INTO `trabalhobd`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (5, 'Xbox360', 2005, '536870912', 3);
INSERT INTO `trabalhobd`.`plataforma` (`idplataforma`, `nomeplat`, `ano_lancamento`, `memoria`, `idfabricante`) VALUES (6, 'PlayStation3', 2006, '536870912', 2);


INSERT INTO `trabalhobd`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (1, 'CD', 10);
INSERT INTO `trabalhobd`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (2, 'DVD', 20);
INSERT INTO `trabalhobd`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (3, 'Blu-ray', 40);
INSERT INTO `trabalhobd`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (4, 'Disquete', 1);
INSERT INTO `trabalhobd`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (5, 'SD', 100);
INSERT INTO `trabalhobd`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (6, 'Cartucho', 1000);
INSERT INTO `trabalhobd`.`midia` (`idmidia`, `nomemid`, `velocidade_leitura`) VALUES (7, 'HD-USB', 100);


INSERT INTO `trabalhobd`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (1, 'River Raid', 'Tiro');
INSERT INTO `trabalhobd`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (2, 'Mario Bros', 'Aventura');
INSERT INTO `trabalhobd`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (3, 'F-Zero', 'Corrida');
INSERT INTO `trabalhobd`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (4, 'Super Mario Bros', 'Aventura');
INSERT INTO `trabalhobd`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (5, 'Wii Sports', 'Esportes variados');
INSERT INTO `trabalhobd`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (6, 'FIFA12', 'Futebol');
INSERT INTO `trabalhobd`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (7, 'God of War 3', 'Ação');
INSERT INTO `trabalhobd`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (8, 'Forza MotorSport', 'Corrida realista');
INSERT INTO `trabalhobd`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (9, 'Gran Turismo 5', 'Corrida realista');
INSERT INTO `trabalhobd`.`jogo` (`idjogo`, `nomejogo`, `descricao`) VALUES (10, 'Street Fighter IV', 'Luta');


INSERT INTO `trabalhobd`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (1, 6);
INSERT INTO `trabalhobd`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (2, 4);
INSERT INTO `trabalhobd`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (2, 6);
INSERT INTO `trabalhobd`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (3, 6);
INSERT INTO `trabalhobd`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (4, 2);
INSERT INTO `trabalhobd`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (4, 5);
INSERT INTO `trabalhobd`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (5, 2);
INSERT INTO `trabalhobd`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (5, 7);
INSERT INTO `trabalhobd`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (6, 3);
INSERT INTO `trabalhobd`.`compativel_midia` (`idplataforma`, `idmidia`) VALUES (6, 7);



INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (1, 1, 2, 1982);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (1, 2, 2, 1983);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (2, 2, 1, 1983);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (3, 3, 1, 1990);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (4, 3, 1, 2007);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (2, 4, 1, 1985);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (4, 4, 1, 2007);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (4, 5, 1, 2006);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (4, 6, 1, 2011);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (5, 6, 1, 2011);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (6, 6, 1, 2011);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (6, 7, 2, 2012);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (5, 8, 1, 2011);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (6, 9, 1, 2010);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (5, 10, 2, 2008);
INSERT INTO `trabalhobd`.`compativel_jogo_plataforma` (`idplataforma`, `idjogo`, `quantidade`, `ano_lancamento_jogo`) VALUES (6, 10, 1, 2008);













