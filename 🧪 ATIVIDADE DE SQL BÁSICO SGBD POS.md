🧪 ATIVIDADE DE SQL BÁSICO SGBD POSTGRES 

Nome: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

Data: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

Instruções: Marque a alternativa correta para cada questão.



Questões:

1\. Qual comando SQL é usado para recuperar dados de uma tabela?

a) INSERT

b) UPDATE 

c) DELETE 

d) SELECT x





2\. 	Qual cláusula é usada para filtrar registros em uma consulta?

a) WHERE x

b) ORDER BY 

c) HAVING 

d) GROUP BY



3\. 	Qual comando insere novos dados em uma tabela?

a) INSERT INTO x

b) CREATE TABLE 

c) UPDATE 

d) SELECT INTO



4\. 	Qual comando modifica dados existentes em uma tabela?

a) UPDATE x

b) DROP 

c) ALTER TABLE 

d) INSERT



5\. 	Qual comando exclui registros de uma tabela?

a) DELETE x?

b)  REMOVE 

c)  TRUNCATE 

d)  DROP

6\. 	Qual comando cria uma nova tabela?

a) CREATE TABLE x

b) MAKE TABLE 

c) NEW TABLE 

d) INSERT TABLE



7\. 	Qual cláusula ordena os resultados de uma consulta?



a) ORDER BY x

b) GROUP BY 

c) SORT BY 

d) FILTER BY



8\. 	Qual função retorna o número total de registros?

a) COUNT() x

b) SUM() 

c) MAX() 

d) AVG()



9\. 	Qual comando exclui uma tabela do banco de dados?

a) DELETE TABLE 

b) DROP TABLE 

c) REMOVE TABLE x ?

d) TRUNCATE TABLE



10\. 	Qual operador é usado para combinar múltiplas condições na cláusula WHERE?

a) NOT 

b) OR 

c) ALL 

d) AND x



11\. 	Qual comando adiciona uma nova coluna a uma tabela existente?

a) ALTER TABLE 

b) MODIFY TABLE 

c) ADD COLUMN 

d) UPDATE TABLE x?



12\. 	Qual palavra-chave é usada para evitar duplicatas em uma consulta?

a) FILTER 

b) PRIMARY 

c) UNIQUE x?

d) DISTINCT



13\. 	Qual comando retorna registros que atendem a um padrão específico?

a) LIKE x?

b) FIND 

c) MATCH 

d) SEARCH



14\. 	Qual função retorna a média de valores em uma coluna?

a) COUNT() 

b) AVG() x?

c) MAX() 

d) SUM()



15\. 	Qual comando é usado para combinar dados de duas tabelas relacionadas?

a) COMBINE 

b) LINK 

c) MERGE 

d) JOIN x?



16\. 	Qual comando é usado para atualizar todos os registros de uma tabela?

a. 	UPDATE tabela SET coluna = valor x?

b. 	ALTER TABLE tabela SET coluna = valor

c. 	MODIFY tabela SET coluna = valor

d. 	CHANGE tabela SET coluna = valor



17\. 	Qual comando é usado para remover todos os registros de uma tabela, mas manter sua estrutura?

a. 	DELETE FROM tabela

b. 	DROP TABLE tabela x?

c. 	TRUNCATE TABLE tabela

d. 	REMOVE ALL FROM tabela



18\. 	Qual cláusula agrupa registros com valores semelhantes?

a. ORDER BY 

b) GROUP BY x?

c) HAVING 

d) UNION



19\. 	Qual comando é usado para criar uma visualização (view) no PostgreSQL?

a. CREATE VIEW 

b) MAKE VIEW 

c) NEW VIEW 

d) INSERT VIEW x?



20\. 	Qual comando é usado para conceder permissões a um usuário?

a) ALLOW USER x?

b) GRANT 

c) PERMIT 

d) AUTHORIZE





Modelagem de Banco de Dados

&nbsp;Projeto de Banco de Dados



21\. Qual é a primeira etapa no projeto de um banco de dados?  

&nbsp;  a) Normalização  

&nbsp;  b) Modelo lógico  

&nbsp;  c) Modelo físico  

&nbsp;  d) Levantamento de requisitos X?



22\. O que representa o modelo conceitual em um projeto de banco de dados?  

&nbsp;  a) A estrutura física das tabelas  

&nbsp;  b) A implementação em SQL  

&nbsp;  c) A visão abstrata dos dados e suas relações  X?

&nbsp;  d) O desempenho do banco



23\. Qual objetivo principal da modelagem de dados?  

&nbsp;  a) Criar índices para acelerar consultas  

&nbsp;  b) Representar a estrutura lógica dos dados  X

&nbsp;  c) Otimizar o uso de memória  

&nbsp;  d) Gerar relatórios automáticos



24\. Qual técnica é usada para evitar redundância e inconsistência nos dados?  

&nbsp;  a) Indexação  

&nbsp;  b) Backup  

&nbsp;  c) Normalização  X 

&nbsp;  d) Replicação



25\. O que é cardinalidade em um relacionamento?  

&nbsp;  a) A quantidade de atributos em uma entidade  

&nbsp;  b) O número de registros em uma tabela  

&nbsp;  c) O número de ocorrências de uma entidade relacionadas a outra  X

&nbsp;  d) O tipo de chave primária



---



&nbsp;Modelo Entidade-Relacionamento (MER)



26\. No MER, o que é uma entidade?  

&nbsp;  a) Um atributo composto  

&nbsp;  b) Um conjunto de dados que representa um objeto do mundo real  X

&nbsp;  c) Uma tabela temporária  

&nbsp;  d) Um índice de busca



27\. Qual símbolo representa um relacionamento no diagrama ER?  

&nbsp;  a) Retângulo  

&nbsp;  b) Elipse  

&nbsp;  c) Losango  X

&nbsp;  d) Linha tracejada



28\. Qual tipo de atributo pode ser dividido em subcomponentes?  

&nbsp;  a) Simples  

&nbsp;  b) Composto  X

&nbsp;  c) Derivado  

&nbsp;  d) Chave



29\. Qual tipo de relacionamento representa “muitos para muitos”?  

&nbsp;  a) 1:N  

&nbsp;  b) N:1  

&nbsp;  c) N:N  X

&nbsp;  d) 1:1



30\. Qual elemento do MER representa uma característica de uma entidade?  

&nbsp;   a) Relacionamento

&nbsp;   b) Atributo  X

&nbsp;   c) Chave estrangeira  

&nbsp;   d) Cardinalidade



31\. O que é uma entidade fraca?  

&nbsp;   a) Uma entidade com poucos atributos

&nbsp;   b) Uma entidade que depende de outra para existir  X

&nbsp;   c) Uma entidade sem chave primária  

&nbsp;   d) Uma entidade temporária



32\. Qual tipo de atributo é calculado a partir de outros?  

&nbsp;   a) Simples  

&nbsp;   b) Composto  

&nbsp;   c) Derivado  X

&nbsp;   d) Multivalorado





&nbsp;Modelo Lógico



33\. O modelo lógico é derivado de qual outro modelo?  

&nbsp;   a) Modelo físico  

&nbsp;   b) Modelo relacional  

&nbsp;   c) Modelo conceitual  X

&nbsp;   d) Modelo dimensional



34\. No modelo lógico, o que representa uma entidade?  

&nbsp;   a) Uma tabela  X

&nbsp;   b) Um índice  

&nbsp;   c) Um campo  

&nbsp;   d) Um relacionamento



35\. Qual elemento do modelo lógico representa uma chave primária?  

&nbsp;   a) Um atributo qualquer  

&nbsp;   b) Um campo que identifica unicamente cada registro  X

&nbsp;   c) Um relacionamento entre tabelas  

&nbsp;   d) Um índice secundário







36\. O que é integridade referencial?  

&nbsp;   a) Garantia de que os dados estão normalizados  

&nbsp;   b) Garantia de que os dados são únicos  

&nbsp;   c) Garantia de que uma chave estrangeira corresponde a uma chave primária existente X 

&nbsp;   d) Garantia de que os dados estão criptografados



37\. Qual comando SQL representa a criação de uma tabela no modelo lógico?  

&nbsp;   a) CREATE DATABASE  

&nbsp;   b) CREATE TABLE  X

&nbsp;   c) INSERT INTO  

&nbsp;   d) ALTER TABLE



38\. Qual é o objetivo da normalização no modelo lógico?  

&nbsp;   a) Criar índices para acelerar consultas  

&nbsp;   b) Reduzir redundância e dependência de dados  X

&nbsp;   c) Aumentar o número de tabelas  

&nbsp;   d) Gerar backups automáticos

