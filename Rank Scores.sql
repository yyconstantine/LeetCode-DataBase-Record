SELECT 
    a.Score AS score, 
    ( SELECT count( DISTINCT b.Score )+1 FROM Scores b WHERE b.Score > a.Score ) AS rank 
FROM 
    Scores a 
ORDER BY Score DESC