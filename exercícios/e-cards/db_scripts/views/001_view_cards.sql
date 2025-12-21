CREATE VIEW vw_cards AS
SELECT
    c.id,
    c.hp,
    c.name,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.ressistance,
    c.retreat,
    c.cardNumberInCollection,
    col.collectionSetName,
    col.releaseDate,
    col.totalCardsInCollection,
    t.typeName,
    s.stageName
FROM tbl_cards c
LEFT JOIN tbl_collections col ON c.collection_id = col.id
LEFT JOIN tbl_types t ON c.type_id = t.id
LEFT JOIN tbl_stages s ON c.stage_id = s.id;
