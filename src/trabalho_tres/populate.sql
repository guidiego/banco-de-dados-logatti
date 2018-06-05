
INSERT INTO tipo VALUES ("luva")
INSERT INTO tipo VALUES ("armadura")
INSERT INTO tipo VALUES ("bota")
INSERT INTO tipo VALUES ("espada")
INSERT INTO tipo VALUES ("cajado")

INSERT INTO classe VALUES ("guerreiro")
INSERT INTO classe VALUES ("mago")

INSERT INTO tipo_classe VALUES ("guerreiro", "luva")
INSERT INTO tipo_classe VALUES ("guerreiro", "armadura")
INSERT INTO tipo_classe VALUES ("guerreiro", "bota")
INSERT INTO tipo_classe VALUES ("guerreiro", "espada")

INSERT INTO tipo_classe VALUES ("mago", "luva")
INSERT INTO tipo_classe VALUES ("mago", "armadura")
INSERT INTO tipo_classe VALUES ("mago", "bota")
INSERT INTO tipo_classe VALUES ("mago", "cajado")

INSERT INTO item VALUES ("Luva Poderosa", 1) --1
INSERT INTO item VALUES ("Armadura Poderosa", 1)  --2
INSERT INTO item VALUES ("Bota Poderosa", 1)  --3

INSERT INTO item VALUES ("Espada Poderosa", 1)  --4
INSERT INTO item VALUES ("Cajado Poderoso Pra Carai", 5)  --5
INSERT INTO item VALUES ("Espada Ultra Poderosa", 1)  --6

-- (TipoClasse, ItemId)
INSERT INTO item_classe_tipo VALUES (1, 1)
INSERT INTO item_classe_tipo VALUES (5, 1)
INSERT INTO item_classe_tipo VALUES (2, 2)
INSERT INTO item_classe_tipo VALUES (6, 2)
INSERT INTO item_classe_tipo VALUES (3, 3)
INSERT INTO item_classe_tipo VALUES (4, 4)
INSERT INTO item_classe_tipo VALUES (8, 5)
INSERT INTO item_classe_tipo VALUES (4, 6)

INSERT INTO conta VALUES ("guidiego", "1234")

INSERT INTO emails VALUES ("guilherme@test.com", "guidiego")
INSERT INTO emails VALUES ("guidiego@test.com", "guidiego")

INSERT INTO personagem VALUES ("guidiego", 3, 10, 5, "guidiego", "guerreiro")
INSERT INTO personagem VALUES ("guidimage", 1, 2, 10, "guidiego", "mago")

INSERT INTO inventario VALUES (3, 5, 1, 1, "guidiego")
INSERT INTO inventario VALUES (3, 8, 1, 2, "guidiego")
INSERT INTO inventario VALUES (1, 3, 1, 3, "guidiego")
INSERT INTO inventario VALUES (10, 0, 1, 4, "guidiego")
INSERT INTO inventario VALUES (20, 0, 0, 6, "guidiego")
INSERT INTO inventario VALUES (3, 5, 1, 1, "guidimage")
INSERT INTO inventario VALUES (35, 0, 0, 5, "guidimage")

