MATCH (u:Usuario {nome: "Marcio"})-[:ASSISTIU]->(f:Filme)
MATCH (u)-[:AVALIA]->(av:Avaliacao)-[:REFERENTE_A]->(f)
MATCH (f)-[:PERTENCE_A]->(g:Genero)
MATCH (f)-[:DIRIGIDO_POR]->(d:Diretor)
MATCH (a:Ator)-[:ATUOU_EM]->(f)
RETURN 
  u.nome AS Usuario,
  f.nome AS Filme,
  f.ano AS Ano,
  f.duracao AS Duracao,
  g.nome AS Genero,
  d.nome AS Diretor,
  a.nome AS Ator,
  av.nota AS Nota
