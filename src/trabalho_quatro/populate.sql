-- PESSOAS
-- id: 1
INSERT INTO pessoa VALUES ('Guilherme Diego Albino Francisco', 'Alguma Rua Qualquer', 'gui@gui.com')
-- id: 2
INSERT INTO pessoa VALUES ('Luis Guedes', 'Alguma Rua Outra', 'guedes@algo.com')
-- id: 3
INSERT INTO pessoa VALUES ('Fabio Fornazari Papini', 'Rua 13', 'papini@logatti.com')
-- id: 4
INSERT INTO pessoa VALUES ('João Henrique', 'Avenida do Mac é Melhor', 'js@logatti.com')
-- id: 5
INSERT INTO pessoa VALUES ('Fabiana Klein', 'Rua Pitágoras', 'fabi@logatti.com')

-- DISCIPLINAS DADO
-- id: 1
INSERT INTO disciplinas_dado VALUES ('Lógica I')
-- id: 2
INSERT INTO disciplinas_dado VALUES ('Lógica II')
-- id: 3
INSERT INTO disciplinas_dado VALUES ('Matemática I')
-- id: 4
INSERT INTO disciplinas_dado VALUES ('Matemática II')
-- id: 5
INSERT INTO disciplinas_dado VALUES ('Redes Computacionais')

-- DISCIPLINAS DEPENDENTES
-- id: 1
INSERT INTO disciplinas_dependentes VALUES (2, 1)
-- id: 2
INSERT INTO disciplinas_dependentes VALUES (4, 3)

-- PROFESSORES
-- id: 1
INSERT INTO professor VALUES (3, 7000)
-- id: 2
INSERT INTO professor VALUES (4, 3000)
-- id: 3
INSERT INTO professor VALUES (5, 4000)

-- CURSOS
--id: 1
INSERT INTO curso VALUES ("Bacharel em Sistemas de Informação", 1)
--id: 2
INSERT INTO curso VALUES ("Bacharel em Matemática", 3)

-- ALUNOS
-- ra: 3313416
INSERT INTO aluno VALUES (3313416, 1, 1)
-- ra: 3315210
INSERT INTO aluno VALUES (3315210, 2, 2)

-- DISCIPLINA
--id: 1 (Logica 1 com o Papini)
INSERT INTO disciplinas VALUES (1, 1, 2014)
--id: 2 (Logica 1 com o JH)
INSERT INTO disciplinas VALUES (1, 2, 2015)
--id: 3 (Logica 2 com o Papini)
INSERT INTO disciplinas VALUES (2, 1, 2015)
--id: 4 (Logica 2 com o Papini)
INSERT INTO disciplinas VALUES (2, 1, 2016)
--id: 5 (Matematica 1 com a Fabi)
INSERT INTO disciplinas VALUES (3, 3, 2014)
--id: 6 (Matematica 1 com a Fabi)
INSERT INTO disciplinas VALUES (3, 3, 2015)
--id: 7 (Matematica 2 com a Fabi)
INSERT INTO disciplinas VALUES (4, 3, 2017)

-- GRADE
INSERT INTO grade VALUES (3313416, 1, 6, 8, 0)
INSERT INTO grade VALUES (3313416, 3, 8, 9.5, 0)
INSERT INTO grade VALUES (3313416, 5, 10, 10, 0)
INSERT INTO grade VALUES (3315210, 2, 3, 6, 5)
INSERT INTO grade VALUES (3315210, 4, 2, 1, 6)
INSERT INTO grade VALUES (3315210, 6, 5, 5, 0)

INSERT INTO grade VALUES (3315210, 7, 2, 6, 7)
INSERT INTO grade VALUES (3313416, 7, 3, 3, 5)
