create table continente (
    nome varchar (110) NOT NULL PRIMARY KEY,
    area integer NOT NULL,
    pop integer NOT NULL,
);

create table pais (
    nome varchar (110) NOT NULL PRIMARY KEY,
    area integer NOT NULL,
    pop integer NOT NULL,
    moed varchar (110) NOT NULL,
    ling varchar (110) NOT NULL,
    d_ref_hist date NOT NULL,
    presidente varchar (110) NOT NULL,
    capital varchar (110) NOT NULL,
    regdem varchar (110) NOT NULL,
    continente_id varchar (110) NOT NULL REFERENCES continente(nome)
);

create table cidade (
    id integer IDENTITY(1,1) NOT NULL PRIMARY KEY,
    idade date NOT NULL,
    nome varchar (110) NOT NULL,
    pop integer NOT NULL,
    descricao text,
    pais_id varchar (110) NOT NULL REFERENCES pais(nome),
);

create table hotel (
    cnpj integer NOT NULL PRIMARY KEY,
    nome varchar (110) NOT NULL,
    estrelas integer NOT NULL,
    cidade_id integer NOT NULL REFERENCES cidade(id)
);

create table hotel_quarto (
    id integer IDENTITY(1,1) NOT NULL PRIMARY KEY,
    hotel_id integer NOT NULL REFERENCES hotel(cnpj)
    quarto_id integer NOT NULL REFERENCES quarto(id)
)

create table quarto (
    id integer IDENTITY(1,1) NOT NULL PRIMARY KEY,
    tipo varchar (110) NOT NULL,
    preco integer NOT NULL,
);


