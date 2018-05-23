create table conta (
    usuario varchar(10) NOT NULL PRIMARY KEY,
    senha varchar(8) NOT NULL
)

create table tipo (
    nome varchar(10) NOT NULL PRIMARY KEY
)

create table classe (
    nome varchar(10) NOT NULL PRIMARY KEY
)

create table tipo_classe (
    id int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    tipo_id varchar(10) NOT NULL REFERENCES tipo(nome),
    class_id varchar(10) NOT NULL REFERENCES classe(nome),
)

create table personagem (
    nome varchar(10) NOT NULL PRIMARY KEY,
    nivel int NOT NULL,
    defesa int NOT NULL,
    ataque int NOT NULL,
    conta_id varchar(10) REFERENCES conta(usuario),
    classe_id varchar(10) REFERENCES classe(nome)
)

create table item (
    id int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    nome varchar(50) NOT NULL,
    nivel_ne int NOT NULL,
)

create table item_classe_tipo (
    id int IDENTITY(1, 10) NOT NULL PRIMARY KEY,
    tipo_classe_id int NOT NULL REFERENCES tipo_classe(id),
    item_id int NOT NULL REFERENCES item(id)
)

create table inventario (
    id int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    ataque int NOT NULL,
    defesa int NOT NULL,
    equipado bit NOT NULL,
    item_id int NOT NULL REFERENCES item(id),
    personagem_id varchar(10) NOT NULL REFERENCES personagem(nome),
)

CREATE TRIGGER equipaItem 
ON inventario
AFTER UPDATE AS
IF EXISTS(SELECT equipado FROM inserted WHERE equipado = 1)
BEGIN
   UPDATE inventario
   SET equipado=0
   WHERE id NOT IN (SELECT id FROM INSERTED)
   AND equipado=1
END
GO  