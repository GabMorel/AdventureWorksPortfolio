# Análise de Vendas pela Internet - AdventureWorks 2022
Utilizando o banco de dados AdventureWorks, empresa fictícia que comercializa bicicletas, roupas e acessórios, executamos uma análise baseada nas vendas que a organização fez pela internet entre 2010 e 2014, com o objetivo de enfatizar o crescimento ao longo do período e evidenciar os produtos mais vendidos, países que mais compraram e o lucro obtido.<br>

O primeiro passo foi fazer uma análise exploratória de dados, utilizando SQL. 

É possível executar cada consulta SQL utilizada nesta análise e obter os mesmos resultados, ao fazer o download do arquivo AdventureWorksDW2022.bak e o anexar ao SQL.
<br><br>

## Análise exploratória de dados
<img align="right" width="355"  src="https://github.com/GabMorel/AdventureWorksPortfolio/blob/main/IMAGENS/InternetSalesDiagram.jpg?raw=true">
Através do SQL, iniciou-se o projeto com o estudo do diagrama, onde “FactInternetSales” era a tabela FATO. A partir disso, explorou-se cada tabela, coluna e tipos de informações presentes nesse banco de dados, até a devida identificação de componentes importantes para o desenvolvimento da análise: <br><br>

- Tabela fato, onde será desenvolvido todos os cálculos e medidas que embasam os dados aqui apresentados. <br>
- Tabela de produtos, para identificação de itens mais vendidos e lucrativos. <br>
- Tabela de clientes e de território, para mapeamento das vendas. <br>
- Tabela de datas, para devido relacionamento das vendas por período. <br>


<br><br><br><br><br>


## Análise de Produtos Vendidos
<img align="left" width="400"  src="https://github.com/GabMorel/AdventureWorksPortfolio/blob/main/IMAGENS/ETLProduct.jpg?raw=true">
Ao identificar a tabela de produtos (DimProduct) e fazer uma relação com os produtos postos na tabela fato (FactInternetSales), notou-se que muitos produtos registrados no banco de dados da organização ainda não haviam sido vendidos. Assim sendo, concluiu-se que não se faria necessário manter estes produtos para a execução da presente análise. <br><br>

Para isso, elaborou-se uma consulta utilizando as cláusulas SELECT DISTINCT, INNER JOIN e WHERE para que fosse gerada uma nova tabela de produtos, constando APENAS os produtos presentes na tabela fato, ou seja, apenas os produtos já vendidos.

<br>
<a href="https://github.com/GabMorel/AdventureWorksPortfolio/blob/main/SQL/ProductETL.sql" target="_blank">Clique aqui</a> e acesse o script SQL no Github.
<br><br>
Analisando a variação de novos clientes entre períodos, é possível identificar em 2013, um crescimento mensal muito acima da variação de 2012, sendo necessário aprofundar a análise e identificar de onde está vindo este grande crescimento de novos clientes.

<br><br>

## Análises diversas utilizando CTE
<img align="right" width="500" src="https://github.com/GabMorel/AdventureWorksPortfolio/blob/main/IMAGENS/analysiswithcte.jpg?raw=true">
Ao longo da análise com o SQL, foi de suma importância a utilização de CTE (Common Table Expressions), que acompanhou o processo analítico por todo o percurso. <br>
A CTE foi importante para o processo desenvolvido, uma vez que este recurso proporcionou clareza e organização, melhorando as estruturas das consultas. Também foi vital, pois devido ao alto número de consultas e testes feitos, proporcionou grande recursividade ao evitar repetições de códigos, evitar divisão de consultas e melhora na legibilidade de todo o processo analítico no SQL, onde foi possível concluir: <br><br>

- 63% da receita em vendas está dividida entre Estados Unidos e Australia, sendo 32% para EUA e 31% para AUS.
- A categoria de acessórios sendo a com mais ordens de compras, com 36 mil ordens, sendo também a com maior margem de lucro (62,6%), representando um total de $700,76 mil em valor de vendas.
- A categoria com o maior valor de vendas, sendo a de bicicletas, com um total de $28,32 Milhões.
<br>

## Conclusão técnica SQL
Através do SQL, foi possível extrair, limpar, manipular e analisar todos os dados apresentados de forma clara, com facilidade e agilidade devido as consultas práticas que a plataforma oferece. Porém, não é melhor forma para apresentar uma visualização de dados eficiente ao cliente.

Concluo que, o SQL foi vital para o desenvolvimento deste projeto desde o primeiro contato com o banco de dados até a finalização do Dashboard. Todas as informações foram conferidas e reconferidas através do SQL, em consonância com o Power BI. Essa junção provou que ambas as ferramentas, utilizadas adequadamente dentro do limite de suas operações, são essenciais para o desenvolvimento de um bom projeto analítico.

<br>

## Dashboard - Power BI
  <img align="right" width="500" src="https://github.com/GabMorel/AdventureWorksPortfolio/blob/main/IMAGENS/TooltipDetails.jpg?raw=true">
O Power BI nos permite analisar e expor dados de forma dinâmica e limpa, tornando-se um dos melhores programas com este intuito. Além disso, podemos executar medidas utilizando DAX, gerando cálculos personalizados que são importantes para a análise e amostragem de dados.<br>
Utilizando os dados coletados, foi possível desenvolver um dashboard que evidencie os principais aspectos das vendas da empresa AdventureWorks, entre os períodos de dezembro de 2010 a janeiro de 2014. Neste projeto, foi priorizado as seguintes informações, contidas no dashboard: <br><br>

- Número de ordens, total de vendas e margem de lucro.
- Quantidade vendida por categoria (Accessories, Bikes, clothing).
- Receita por categoria (Accessories, Bikes, clothing).
- Quantidade vendida por mês e categoria.
- Quantidade vendida por país e categoria.			
- Receita por país e categoria.
- Tooltip com espelhamento entre quantidade vendida e receita obtida.
- Drill through com detalhamento de pedidos.

<br>

## Drill Through - Power BI
<img align="left" width="500"  src="https://github.com/GabMorel/AdventureWorksPortfolio/blob/main/IMAGENS/drillthrough.jpg?raw=true">
Ao longo do desenvolvimento deste dashboard, notou-se a necessidade de haver um detalhamento sobre cada produto, contendo a quantidade vendida, valor unitário, receita obtida, custo do produto e margem de lucro, com o objetivo de proporcionar uma análise mais detalhada e localizada sobre as vendas. <br><br>
Através da implementação do Drill Through, foi possível especificar a importância de cada um dos produtos no resultado das vendas destes períodos, gerando insights mais assertivos sobre onde a empresa deve focalizar seus esforços.

<br><br>

## Conclusão do Projeto
  <img align="right" width="500" src="https://github.com/GabMorel/AdventureWorksPortfolio/blob/main/IMAGENS/SalesAnalysis.jpg?raw=true">
  Após executar a análise exploratória, identificar os dados a serem utilizados e aperfeiçoar a análise utilizando consultas através do SQL, os dados foram carregados para o Power BI, programa utilizado para elaborar a visualização dos dados. Ao fazer o carregamento, filtragem e demais limpezas necessárias nos dados, deu-se início a criação.<br>
<br>
Com essa análise, foi possível evidenciar o aumento de vendas que a organização teve pela internet e o potencial crescimento que sucederá nos anos seguintes, bem como os períodos com mais vendas e o detalhamento de cada categoria, produto e país. <br><br>

<br><br>

<a href="https://app.powerbi.com/view?r=eyJrIjoiNjVlZDMxMzUtMDA2ZS00YWM4LTliOWMtMTllZmE5Nzk2MzM2IiwidCI6IjJhOGY2ZjdiLWNkNjktNDdmMy1hMWVmLWZlZWYyMGRjNmY5MCJ9" target="_blank">Clique aqui</a> e acesse o a solução desenvolvida para a empresa AdventureWorks.
<br>
<a href="https://github.com/GabMorel/AdventureWorksPortfolio/tree/main/POWERBI" target="_blank">Clique aqui</a> e acesse o arquivo .pbix no Github.
<br>

## Ferramentas e linguagens utilizadas
<div style="display: inline_block">
    <img align="center" alt="SQL" height="40" width="40" src="https://github.com/BruceFonseca/ferramentas/blob/main/logo.png?raw=true">
    <img align="center" alt="Power BI" height="40" width="40" src="https://github.com/BruceFonseca/ferramentas/blob/main/1200px-New_Power_BI_Logo.svg.png?raw=true">
</div>
