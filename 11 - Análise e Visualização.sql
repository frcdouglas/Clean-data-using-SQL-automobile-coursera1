SELECT
	make, fuel_type, num_of_doors, body_style, COUNT(*) AS n_of_cars, 
	make + ' ' + fuel_type + ' ' + num_of_doors + ' ' + body_style AS car
FROM
	[automobile_data_coursera1].[dbo].automobile_data
GROUP BY
	make, fuel_type, num_of_doors, body_style
ORDER BY
	n_of_cars DESC;