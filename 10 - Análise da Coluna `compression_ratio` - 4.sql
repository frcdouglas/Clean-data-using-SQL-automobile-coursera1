SELECT
	COUNT(*) AS num_of_rows_to_delete
FROM
	[automobile_data_coursera1].[dbo].automobile_data
WHERE
	compression_ratio = 70;