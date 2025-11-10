## 📘 Modelagem de Dados em Grafos com Neo4j 

 Projeto desenvolvido como parte do curso Análise de Dados com Grafos da DIO, utilizando o banco de dados Neo4j para representar relações entre usuários, filmes, avaliações, gêneros, diretores e atores.
-----
### 🧠 Objetivo

Modelar um grafo que represente o comportamento de usuários em uma plataforma de streaming, incluindo:

- Filmes assistidos
- Avaliações feitas
- Gêneros preferidos
- Diretores e atores envolvidos

### 🗂️ Estrutura do Projeto

| Arquivo      | Descrição                                                                 |
|--------------|---------------------------------------------------------------------------|
| `create.cy` | Criação dos nós e relacionamentos iniciais do grafo  
| `merge.cy`  | Versão com `MERGE` para evitar duplicações ao inserir dados               |
| `match.cy`  | Consultas para visualizar conexões entre usuários, filmes e avaliações    |
| `README.md`  | Documentação do projeto                                                   |

### 🧩 Modelo de Grafo
O grafo inclui os seguintes tipos de nós e relacionamentos:

- Usuário → [:ASSISTIU] → Filme
- Usuário → [:AVALIA] → Avaliação → [:REFERENTE_A] → Filme
- Filme → [:PERTENCE_A] → Gênero
- Filme → [:DIRIGIDO_POR] → Diretor
- Ator → [:ATUOU_EM] → Filme

### 🛠️ Como executar os scripts
Instale o Neo4j Desktop ou acesse Neo4j Aura

- Crie um banco de dados local
- Copie e cole os comandos dos arquivos .cql no console do Neo4j Browser
- Execute os MATCH para visualizar os dados

### 📊 Exemplo de Consulta
  
````cypher
MATCH (u:Usuario)-[:ASSISTIU]->(f:Filme)
MATCH (u)-[:AVALIA]->(av:Avaliacao)-[:REFERENTE_A]->(f)
MATCH (f)-[:PERTENCE_A]->(g:Genero)
MATCH (f)-[:DIRIGIDO_POR]->(d:Diretor)
MATCH (a:Ator)-[:ATUOU_EM]->(f)
RETURN u.nome, f.nome, av.nota, g.nome, d.nome, a.nome
````
### 👨‍💻 Autor

Márcio Vaz

📧 marciovaz@gmail.com
