# 🚗 Análise de Vendas de Carros - Empresa Automobilística

## 📊 Objetivo

O objetivo desta análise é identificar **quais são os carros mais populares** para manter em estoque os modelos que fazem mais sucesso em vendas.

## 🗂️ Fonte dos Dados

- Arquivo: `automobile_data.csv`
- Conteúdo: Histórico de vendas de carros, com preços e características técnicas
- Ambiente: Dados inseridos no **SQL Server**
- Finalidade: Estudo e treinamento em **SQL**

---

## 🧼 Processo de Limpeza e Tratamento de Dados

Antes de realizar qualquer análise, foi necessário tratar e validar os dados conforme a estrutura descrita no curso. Abaixo estão os principais passos:

### 🔍 1. Verificação do Tipo de Combustível (`fuel_type`)

Foi realizada uma consulta para verificar se os dados de `fuel_type` estavam de acordo com a descrição da base, que indica apenas dois tipos possíveis.

![image](https://github.com/user-attachments/assets/ab9947fe-101b-4965-bd73-370add47932d)

---

### 📏 2. Validação da Coluna `length`

Análise do comprimento mínimo e máximo dos carros, comparando com as especificações da base de dados.

![image](https://github.com/user-attachments/assets/9ee67810-d305-4071-81de-b01faeb8b5c1)


---

### ❌ 3. Preenchimento de Valores Nulos na Coluna `num_of_doors`

Foram encontradas duas linhas com valores ausentes nessa coluna.

![image](https://github.com/user-attachments/assets/e6c281ca-5f35-42d7-b195-523b73e19ea8)


Após consulta a vendedores e gerentes, foi identificado que os modelos com valor ausente possuem 4 portas. Assim, os valores foram atualizados para `'four'`.

![image](https://github.com/user-attachments/assets/ba99228c-63bd-41f1-8de7-cf15d840267f)


---

### ⚠️ 4. Correção na Coluna `num_of_cylinders`

Foi identificado um valor com nomenclatura fora do padrão. A consulta abaixo evidenciou o problema:

![image](https://github.com/user-attachments/assets/6f292e32-b084-4df7-9278-9f684fb1fa94)


A atualização seguinte padronizou o valor incorreto:

![image](https://github.com/user-attachments/assets/3984124d-57a0-484d-9818-4d0c6b95076f)


---

### 📉 5. Análise da Coluna `compression_ratio`

Foi identificada uma discrepância no valor máximo dessa coluna. A consulta revelou valores inconsistentes com a descrição da base.

![image](https://github.com/user-attachments/assets/98b85e35-6c70-46a5-bcd5-3c4c1265f525)

Na consulta podemos ver que o valor minimo é maior que o valor máximo, isso indica uma inconsistencia na consulta. Foi notado que a coluna 'compression_ratio' esta classificada como string, para 
classifica-la corretamente, alteramos seu tipo para float:

![image](https://github.com/user-attachments/assets/b84e009f-4318-49a7-a98c-61c8c796b3be)

Esta veriricação deve ser realizada antes de iniciar o processo de transformação dos dados, mas como os dados aqui foram postos apenas para treinamento, esta etapa foi pulada para este caso e a correção
foi realizada com a query acima. Com esta correção temos:

![image](https://github.com/user-attachments/assets/b74731dc-8cd2-4b76-8af5-d73d49dfc89f)


As linhas com `compression_ratio = 70` foram marcadas para exclusão sendo consideras outliers. Antes disso, foi verificado o impacto:

![image](https://github.com/user-attachments/assets/83c26935-f7fc-4252-bd70-829de04c36b1)


Como apenas uma linha seria afetada, ela foi removida sem comprometer a integridade da base.

![image](https://github.com/user-attachments/assets/4677271f-c33c-47a5-90dc-3c5096d9fd71)


---

## 📈 Análise e Visualização

O tratamento de dados realizado acima pode não impactar diretamente na pergunta de negocio realizada a principio, mas foi realizado afim de treinamento para manipulação da base de dados
e utilização da linguagem SQL.

Após a limpeza, uma ultima consulta foi realizada. Com isso, foi possível responder à principal **pergunta de negócio**:

> **Quais carros são mais vendidos e, portanto, devem ter maior presença no estoque?**
![image](https://github.com/user-attachments/assets/3d539ca6-039d-4d17-b7a0-2ece841bb4f4)

Gerando um relatório no PowerBI, podemos ter uma melhor visualização dos dados:

![image](https://github.com/user-attachments/assets/547cb7e5-0837-42b2-8779-60921125f781)

Apesar do modelo Mazda a gás com duas portas e carroceria hatchback ter sido o modelo mais vendido, temos alguns outros insights que podem ajudar na escolhar da melhora do estoque de carros.

> Carros 4 portas possuem uma pequena preferencia quando comparados aos de 2 portas
> Modelos a gás são os mais vendidos quando se fala de tipo de combustivel superando os modelos a diesel. Sendo 90% do carros vendidos com preferencia a gás.
> Com relação ao tipo de carroceria os modelos Sedan superam os Hatchback por cerca de 13%, sendo esses dois a liderar a venda de carros.
> Apesar do modelo da Mazda ser o mais vendido, no geral, os carros da Toyota aparecem como uma preferencia do publico.
---

## ✅ Conclusão

Com os dados limpos e analisados, a empresa agora tem base confiável para tomar decisões mais estratégicas sobre quais modelos manter em estoque, otimizando vendas e logística.

> Sugestão de analise: Verificar valores de venda e revenda dos carros da Toyota e comparar com os modelos da Mazda e analisar se a preferencia pelo modelo especifico da Mazda possui custo-beneficio para revenda, uma vez que os modelos da Toyota venderam quase que o dobro quando comparado as outras montadoras.

---

*Este projeto faz parte de um estudo aplicado de SQL e análise de dados voltado para o setor automobilístico.*

