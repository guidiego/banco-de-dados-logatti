SELECT
    p.nome as "Aluno",
    g.p1 as "Nota 1",
    g.p2 as "Nota 2",
    g.p3 as "Sub"
FROM grade g
INNER JOIN aluno a ON a.ra = g.aluno_id
INNER JOIN pessoa p ON a.pessoa_id = p.id
WHERE g.disciplina_id = 7

SELECT
    g.p1 as "Nota 1",
    g.p2 as "Nota 2",
    g.p3 as "Sub"
FROM grade g
INNER JOIN disciplinas d ON d.id = g.disciplina_id
WHERE aluno_id = 3315210
AND d.ano = 2016


SELECT
    p.nome as "Nome do Aluno",
    dd.nome as "Nome da Matéria",
    (
        CASE
            When g.p1 > g.p2 Then (g.p1 + g.p3)/2
            Else (g.p2 + g.p3)/2
        END
    ) as "Média"
FROM grade g
INNER JOIN aluno a ON a.ra = g.aluno_id
INNER JOIN pessoa p ON a.pessoa_id = p.id
INNER JOIN disciplinas d ON d.id = g.disciplina_id
INNER JOIN disciplinas_dado dd ON dd.id = d.disciplina_dado
WHERE (g.p1 + g.p2)/2 < 5
AND (
    CASE
        When g.p1 > g.p2 Then (g.p1 + g.p3)/2
        Else (g.p2 + g.p3)/2
    END
) < 5
AND d.ano = 2016