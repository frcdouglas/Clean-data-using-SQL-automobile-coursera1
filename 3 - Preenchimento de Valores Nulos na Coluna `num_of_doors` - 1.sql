SELECT 
	*
FROM 
	[automobile_data_coursera1].[dbo].[automobile_data]
WHERE 
	-- No SQL Server valores NULL em EM BRANCO são tratados de forma diferente
	-- In SQL Server NULL and BLANK values are treated different 
	num_of_doors IS NULL OR num_of_doors = ''; 
	