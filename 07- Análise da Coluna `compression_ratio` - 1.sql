-- Verificando valores maximos e minimos para compression ratio
-- Verifying max and min values for compression ratio
SELECT
  MIN(compression_ratio) AS min_compression_ratio,
  MAX(compression_ratio) AS max_compression_ratio
FROM
  [automobile_data_coursera1].[dbo].[automobile_data];
