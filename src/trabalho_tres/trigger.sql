CREATE TRIGGER equipa_item
ON inventario
AFTER UPDATE AS
IF EXISTS(SELECT equipado FROM inserted WHERE equipado = 1)
BEGIN
    UPDATE iv SET iv.equipado = 0
    FROM inventario iv
        INNER JOIN item i ON iv.item_id = i.id
        INNER JOIN item_classe_tipo ict ON ict.item_id = i.id
    WHERE iv.personagem_id = (SELECT personagem_id FROM deleted)
    AND iv.id <> (SELECT id FROM inserted)
    AND ict.tipo_classe_id = (
        SELECT ict2.tipo_classe_id FROM deleted d
        INNER JOIN item i2 ON d.item_id = i2.id
        INNER JOIN item_classe_tipo ict2 ON ict2.item_id = i2.id
    )
END
GO