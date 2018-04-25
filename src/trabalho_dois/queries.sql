-- VARIAVEIS
DECLARE @EMPRESA VARCHAR(30) = "XAUXAU BUSAO",
        @NOME_LINHA VARCHAR(30) = "Azul",
        @ENDERECO_INFORMADO VARCHAR(110) = "Rua Homem Aranha no GI";

-- Linhas para empresa X
SELECT nome as "Linhas para Empresa" FROM linha l
WHERE l.empresa_id IN (
    SELECT cnpj FROM empresa
    WHERE nome = @EMPRESA
)

-- Intinerario
SELECT lg.endereco as "Ordem de Passagem" FROM logradouro_linha ll
INNER JOIN logradouro lg ON ll.logradouro_id = lg.id
WHERE linha_id IN (
    SELECT id FROM linha l
    WHERE l.nome = @NOME_LINHA
    AND l.empresa_id = (
        SELECT cnpj FROM empresa
        WHERE nome = @EMPRESA
    )
)
ORDER BY ll.ordem

-- Quadro de Horarios
SELECT
    h.dia as "Dia da Semana",
    h.hora as "Hora de Partida"
FROM horario_linha hl
INNER JOIN horario h ON hl.horario_id = h.id
WHERE hl.linha_id IN (
    SELECT id FROM linha l
    WHERE l.nome = @NOME_LINHA
    AND l.empresa_id = (
        SELECT cnpj FROM empresa
        WHERE nome = @EMPRESA
    )
)

-- Linhas que passam pelo Logradouro
SELECT
    e.nome as "Empresa da Linha",
    l.nome as "Linhas que passam pelo Logradouro"
FROM logradouro_linha ll
INNER JOIN linha l ON ll.linha_id = l.id
INNER JOIN empresa e ON l.empresa_id = e.cnpj
INNER JOIN logradouro lg ON ll.logradouro_id = lg.id
WHERE lg.endereco = @ENDERECO_INFORMADO
