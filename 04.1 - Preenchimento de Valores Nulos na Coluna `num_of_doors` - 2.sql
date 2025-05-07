-- Verificando os vendedores e gerentes, foi identificado que todos os dodge a gasolina e mazda sendan a diesel 
-- possuem 4 portas, portanto:
-- Checking with sales a manegement, all Dodge gas and all Mazda diesel sold had four doors, so: 
UPDATE
  [automobile_data_coursera1].[dbo].[automobile_data]
SET
  num_of_doors = 'four'
WHERE
  make = 'mazda'
  AND fuel_type = 'diesel'
  AND body_style = 'sedan';
