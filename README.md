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

![Consulta - fuel_type](#)

---

### 📏 2. Validação da Coluna `length`

Análise do comprimento mínimo e máximo dos carros, comparando com as especificações da base de dados.

![Consulta - length](#)

---

### ❌ 3. Preenchimento de Valores Nulos na Coluna `num_of_doors`

Foram encontradas duas linhas com valores ausentes nessa coluna.

![Consulta - valores nulos](#)

Após consulta a vendedores e gerentes, foi identificado que os modelos com valor ausente possuem 4 portas. Assim, os valores foram atualizados para `'four'`.

![Atualização - four doors](#)

---

### ⚠️ 4. Correção na Coluna `num_of_cylinders`

Foi identificado um valor com nomenclatura fora do padrão. A consulta abaixo evidenciou o problema:

![Consulta - cilindros](#)

A atualização seguinte padronizou o valor incorreto:

![Atualização - cilindros](#)

---

### 📉 5. Análise da Coluna `compression_ratio`

Foi identificada uma discrepância no valor máximo dessa coluna. A consulta revelou valores inconsistentes com a descrição da base.

![Consulta - compression ratio](#)

As linhas com `compression_ratio = 70` foram marcadas para exclusão. Antes disso, foi verificado o impacto:

![Verificação - linhas com valor 70](#)

Como apenas uma linha seria afetada, ela foi removida sem comprometer a integridade da base.

![Exclusão da linha](#)

---

## 📈 Análise e Visualização

Após a limpeza, os dados foram exportados e trabalhados em uma ferramenta de visualização (**Power BI**). Com isso, foi possível responder à principal **pergunta de negócio**:

> **Quais carros são mais vendidos e, portanto, devem ter maior presença no estoque?**

---

## ✅ Conclusão

Com os dados limpos e analisados, a empresa agora tem base confiável para tomar decisões mais estratégicas sobre quais modelos manter em estoque, otimizando vendas e logística.

---

*Este projeto faz parte de um estudo aplicado de SQL e análise de dados voltado para o setor automobilístico.*
