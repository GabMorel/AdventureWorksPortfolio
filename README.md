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
## Variação de novos clientes entre períodos
<img align="right" width="500" height="320" src="https://github.com/BruceFonseca/AdventureWorks2022/blob/main/imagens/AdventureWorks%20-%20Novos%20Clientes%20Delta.png?raw=true">
Analisando a variação de novos clientes, quando comparados com o mesmo período/mês do ano anterior, decidimos agrupar esta variação por região/país para identificar se houve crescimento. 
Filtramos apenas o ano de 2013, pois foi o período com maiores taxas de crescimentos de novos clientes, o que nos permitiu concluir que: <br><br>
- Canadá teve o maior crescimento percentual entre todos os países - aproximadamente 623% <br>
- Estados Unidos teve o maior crescimento cumulativo de clientes - aproximadamente 5050 <br>
- Apenas os Estados Unidos tiveram um crescimento maior que todos países da Europa juntos, sendo a América do Norte o principal mercado de atuação da empresa.
- Todos países europeus dobraram ou superaram sua base de novos clientes. <br>
- Austrália, apesar de não ter um crescimento comparável com Europa e América do Norte, aumentou sua base de novos clientes em quase 50%, sendo um ótimo resultado em 2013. <br>

<br>
<a href="https://github.com/BruceFonseca/AdventureWorks2022/blob/main/SQL/AdventureWorks%20-%20Novos%20Clientes%20Delta%202013.sql" target="_blank">Clique aqui</a> e acesse o script SQL no Github.

<br><br>

## Conclusão técnica SQL
Com o SQL, podemos analisar, extrair, manipular e exibir os dados de uma base de dados de uma forma simples e rápida, apenas conectando direto na fonte dos dados. Porém, não é uma ferramenta dinâmica em com abordagem visual, pois cada vez que pricisa ver os dados de uma forma diferente, precisa reescrever o comando SQL para extrair os dados da forma que gostaria, porem os dados sempre serão exibidos em formato de tabela, deixando sua análise menos dinamica do que um dashboard, por exemplo.

A minha conclusão é que o SQL é sempre uma linguagem muito importante e deve ser utilizada para analisar um banco de dados antes de escolher outra ferramenta para análise dos dados, como o Power BI por exemplo. Ou seja, valide as informações no SQL e só depois considere outras ferramentas de acordo com a necessidade da empresa ou projeto que estiver atuando.
Não existe uma ferramenta melhor que a outra, existe ferramentas adequadas as necessidades apresentadas em cada projeto de dados.

<br><br>

## Dashboard Power BI
<img align="right" width="500"  src="https://github.com/BruceFonseca/AdventureWorks2022/blob/main/imagens/Captura%20de%20tela%202023-12-03%20121514.png?raw=true">
Seguindo a idéia que SQL não é a melhor ferramenta para uma análise dinâmica e visual de informações, desenvolvi um dashboard focado na análise dos clientes novos e recorrentes da mesma base de dados AdventureWorks.
Como o Power BI permite análises dinâmicas e visuais de forma simples, escrevendo menos código DAX e permitindo o usuário total interação com a ferramenta, fiz uma análise exploratória na quantidade e receira entre novos e recoreente.<br>
Com esta análise, chegamos as seguintes conclusões:<br>
 - A maioria dos clientes a partir de 2013 é novo. <br>
 - Além da quantidade de clientes novos, a receita trazida por clientes novos também é a maior fatia do total.<br>
 - Os clientes novos não são a maioria para todos países e períodos. Por isso o Power BI é uma ferramenta de extrema importância, pois permite o usuário final fazer seus filtros e ter análises de forma dinâmica.
<br><br>
<a href="https://app.powerbi.com/view?r=eyJrIjoiNWJjODBmOTAtYmNhMy00YjdmLTk5ZDMtMDc4NGI4NDY3YzJmIiwidCI6IjQxNGU0N2Q2LTVhNGUtNDkzZS05OWJkLTUzMTYwZjJhYWY2ZiJ9" target="_blank">Clique aqui</a> e acesse o a solução desenvolvida para a empresa AdventureWorks.
<br>
<a href="https://github.com/BruceFonseca/AdventureWorks2022/tree/main/POWERBI" target="_blank">Clique aqui</a> e acesse o arquivo .pbix no Github.
<br><br>

## Ferramentas e linguagens utilizadas
<div style="display: inline_block">
    <img align="center" alt="SQL" height="40" width="40" src="https://github.com/BruceFonseca/ferramentas/blob/main/logo.png?raw=true">
    <img align="center" alt="Power BI" height="40" width="40" src="https://github.com/BruceFonseca/ferramentas/blob/main/1200px-New_Power_BI_Logo.svg.png?raw=true">
</div>
