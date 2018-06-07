DECLARE @PERSONAGEM_NOME varchar(10) = "guidiego"

-- Todos os personagens do server
SELECT COUNT(nome) as "Quantidade de Personagens no Server"
FROM personagem

-- Atributos do Personagem
SELECT nome, ataque, defesa, nivel
FROM personagem
WHERE nome = @PERSONAGEM_NOME

-- TODOS OS ITEMS DE UM PERSONAGEM
SELECT i.nome, ataque, defesa, equipado
FROM inventario iv
INNER JOIN item i ON iv.item_id = i.id
WHERE iv.personagem_id = @PERSONAGEM_NOME

-- TODO PODER DE ATAQUE E DEFESA DE UM PERSONAGEM
-- Query com SOMA
SELECT
    (SUM(i.ataque) + p.ataque) as "Ataque Total",
    (SUM(i.defesa) + p.defesa) as "Defesa Total"
FROM personagem p
LEFT JOIN inventario i ON i.personagem_id = p.nome
WHERE p.nome = @PERSONAGEM_NOME
AND i.equipado = 1
GROUP BY p.nome, p.ataque, p.defesa

-- ITEM É EQUIPAVEL
-- Query com + 4 tabelas
SELECT
    i.nome as "Nome",
    (case when p.nivel >= i.nivel_ne then 1 else 0 end) as "É Equipavel"
FROM inventario iv
JOIN item i ON iv.item_id = i.id
JOIN personagem p ON iv.personagem_id = p.nome
JOIN item_classe_tipo icp ON i.id = icp.item_id
JOIN tipo_classe tp ON tp.id = icp.tipo_classe_id and p.classe_id = tp.classe_id
WHERE iv.personagem_id = @PERSONAGEM_NOME