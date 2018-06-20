create table pessoa (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nome varchar(100) NOT NULL,
    endereco varchar(100) NOT NULL,
    email varchar(100) NOT NULL
);

create table disciplinas_dado (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nome varchar(30),
);

create table professor (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    pessoa_id int NOT NULL REFERENCES pessoa(id),
    salario decimal NOT NULL
);

create table curso (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nome varchar(100) NOT NULL,
    coordenador_id int NOT NULL REFERENCES professor(id),

    CONSTRAINT UNQ_CURSO UNIQUE (id, nome)
);

create table aluno (
    ra int NOT NULL PRIMARY KEY,
    pessoa_id int NOT NULL REFERENCES pessoa(id),
    curso_id int NOT NULL REFERENCES curso(id)
);

create table disciplinas_dependentes (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    disciplina_dado int NOT NULL REFERENCES disciplinas_dado(id),
    dependencia_dado int NOT NULL REFERENCES disciplinas_dado(id),
    CONSTRAINT UNQ_DEPENDENCIA UNIQUE (disciplina_dado, dependencia_dado)
);

create table disciplinas (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    disciplina_dado int NOT NULL REFERENCES disciplinas_dado(id),
    professor_id int NOT NULL REFERENCES professor(id),
    ano int NOT NULL
);

create table grade (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    aluno_id int NOT NULL REFERENCES aluno(ra),
    disciplina_id int NOT NULL REFERENCES disciplinas(id),
    p1 decimal DEFAULT 0,
    p2 decimal DEFAULT 0,
    p3 decimal DEFAULT 0
);