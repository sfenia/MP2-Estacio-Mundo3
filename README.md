# 
# Manual da Prática - Vamos Manter as Informações!

Este manual descreve os procedimentos realizados na prática de RPG0015 - Vamos Manter as Informações!, que se concentra em criar e alimentar um banco de dados utilizando SQL Server. O objetivo principal é fornecer um guia passo a passo sobre como criar um banco de dados, modelar suas estruturas e inserir dados.




## Objetivos da Prática

    Identificar os requisitos de um sistema e transformá-los no modelo adequado.
    Utilizar ferramentas de modelagem para bases de dados relacionais.
    Explorar a sintaxe SQL na criação das estruturas do banco (DDL).
    Explorar a sintaxe SQL na consulta e manipulação de dados (DML).
    No final do exercício, o aluno terá vivenciado a experiência de modelar a base de dados para um sistema simples, além de implementá-la, através da sintaxe SQL, na plataforma do SQL Server.


## Análise e Conclusão
a. Implementação de Cardinalidades

As diferentes cardinalidades em um banco de dados relacional são implementadas usando chaves primárias e chaves estrangeiras. Eis como elas são representadas:

    Cardinalidade 1:1 (1 para 1): Cada linha em uma tabela está relacionada a uma e apenas uma linha em outra tabela. Isso é implementado compartilhando uma chave primária comum.

    Cardinalidade 1:N (1 para vários): Cada linha em uma tabela pode estar relacionada a várias linhas em outra tabela. Isso é implementado usando uma chave estrangeira na tabela com cardinalidade máxima de N que faz referência à chave primária da tabela com cardinalidade mínima de 1.

    Cardinalidade N:N (vários para vários): Várias linhas em uma tabela podem estar relacionadas a várias linhas em outra tabela. Isso é implementado criando uma terceira tabela para representar o relacionamento entre as duas tabelas originais, com uma chave estrangeira de cada uma das tabelas originais.

b. Representação de Herança

Para representar herança em bancos de dados relacionais, o relacionamento 1:N é utilizado. A classe ancestral é representada por uma tabela, enquanto a classe herdeira é representada por uma tabela filha que herda da tabela ancestral. A relação entre a tabela ancestral e a tabela filha é 1:N, pois cada linha na tabela ancestral pode ter várias linhas filhas relacionadas a ela.
c. Importância das Chaves Estrangeiras

As chaves estrangeiras são fundamentais para manter a consistência do banco de dados, garantindo que os dados em duas tabelas relacionadas sejam coerentes. Elas evitam erros, otimizam o desempenho e asseguram a integridade referencial.
d. Uso do SQL Server Management Studio (SSMS)

O SQL Server Management Studio (SSMS) é uma ferramenta poderosa para melhorar a produtividade na administração de bancos de dados. Ele simplifica tarefas como criação de bancos de dados, gerenciamento de consultas, monitoramento de desempenho e gerenciamento de segurança.



## 2º Procedimento | Alimentando a Base
2.1. Objetivo da Prática

Nesta etapa, o objetivo é:

    Identificar os requisitos de um sistema e transformá-los no modelo adequado.
    Utilizar ferramentas de modelagem para bases de dados relacionais.
    Explorar a sintaxe SQL na criação das estruturas do banco (DDL).
    Explorar a sintaxe SQL na consulta e manipulação de dados (DML).
    No final do exercício, o aluno terá vivenciado a experiência de modelar a base de dados para um sistema simples, além de implementá-la, através da sintaxe SQL, na plataforma do SQL Server.

2.2. Análise e Conclusão
a. Diferenças entre Sequence e Identity

Sequence e identity são dois tipos de colunas de incremento automático em bancos de dados relacionais, com diferenças significativas na forma como são gerenciados, seu valor em relação à coluna de incremento automático e sua capacidade de compartilhamento entre várias tabelas.
b. Importância das Chaves Estrangeiras para a Consistência

Chaves estrangeiras desempenham um papel fundamental na garantia da consistência do banco de dados. Elas evitam erros, otimizam o desempenho de consultas e asseguram a integridade referencial entre tabelas relacionadas.
c. Operadores SQL Relacionados à Álgebra e Cálculo Relacional

O SQL oferece uma variedade de operadores relacionados à álgebra relacional, como seleção, projeção, junção, produto cartesiano, união, intersecção e diferença. Além disso, também inclui operadores definidos no cálculo relacional, como operadores de agregação (COUNT(), SUM(), AVG()) e quantificadores (EXISTS(), FORALL()).
d. Agrupamento em Consultas

O agrupamento em consultas é realizado por meio da cláusula GROUP BY, permitindo que os dados de uma tabela sejam agrupados com base em critérios específicos. É essencial que a tabela contenha pelo menos uma coluna que possa ser usada para agrupar os dados.

Este manual fornece diretrizes abrangentes sobre como criar e alimentar um banco de dados utilizando o SQL Server, abordando conceitos fundamentais de modelagem de dados, manipulação de esquemas e inserção de dados.

Para obter informações detalhadas sobre cada procedimento e exemplos de código, consulte o repositório.
