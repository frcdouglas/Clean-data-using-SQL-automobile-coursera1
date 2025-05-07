SELECT 
	max(compression_ratio),
	min(compression_ratio)
FROM 
	[automobile_data_coursera1].[dbo].[automobile_data]
WHERE 
	compression_ratio IS NOT NULL;