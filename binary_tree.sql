SELECT
    d.N,
    CASE
        WHEN d.P IS NULL THEN 'root'
        WHEN NOT EXISTS (
            SELECT 1 FROM drzewo WHERE P = d.N
        ) THEN 'leaf'
        ELSE 'inner'
    END AS typ_wierzcholka
FROM drzewo d;