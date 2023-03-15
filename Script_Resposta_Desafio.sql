-- 01) Buscar o nome e ano dos filmes.
SELECT f.Nome AS Filme,
       f.Ano 
  FROM Filmes f;

-- 02) Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano.
SELECT f.Nome AS Filme,
       f.Ano 
  FROM Filmes f 
 ORDER BY f.Ano;

-- 03) Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração.
SELECT f.Nome AS Filme,
       f.Ano,
	   f.Duracao 
  FROM Filmes f 
 WHERE f.Nome LIKE '%De Volta para o Futuro%';

-- 04) Buscar os filmes lançados em 1997.
SELECT * 
  FROM Filmes f 
 WHERE f.Ano = 1997;

-- 05) Buscar os filmes lançados APÓS o ano 2000.
SELECT * 
  FROM Filmes f
 WHERE f.Ano > 2000 
 ORDER BY f.Ano;

-- 06) Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente.
SELECT * 
  FROM Filmes f 
 WHERE f.Duracao > 100 
   AND f.Duracao < 150 
 ORDER BY F.Duracao;
 --
SELECT *
  FROM Filmes f
 WHERE f.Duracao BETWEEN 101 AND 149
 ORDER BY F.Duracao;

-- 07) Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente.
SELECT COUNT(f.Id)Qtd_filmes_ano,
             f.Ano
  FROM Filmes f 
  GROUP BY f.Ano,
           f.Duracao 
  ORDER BY f.Duracao DESC;

-- 08) Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome.
SELECT a.PrimeiroNome,
       a.UltimoNome
  FROM Atores a
 WHERE a.Genero = 'M';

-- 09) Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome.
SELECT a.PrimeiroNome,
       a.UltimoNome
  FROM Atores a 
 WHERE a.Genero = 'F' 
 ORDER BY a.PrimeiroNome;

-- 10) Buscar o nome do filme e o gênero.
SELECT f.Nome as Filme,
       g.Genero 
  FROM Filmes f 
  JOIN FilmesGenero fg 
  ON f.Id = fg.IdFilme 
  JOIN Generos g 
  ON g.Id = fg.IdGenero;

-- 11) Buscar o nome do filme e o gênero do tipo "Mistério".
SELECT f.Nome AS Filme,
       g.Genero 
  FROM Filmes f 
  JOIN FilmesGenero fg 
  ON f.Id = fg.IdFilme 
  JOIN Generos g 
  ON g.Id = fg.IdGenero 
 WHERE g.Genero LIKE '%Mistério%';

-- 12) Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel.
SELECT f.Nome AS Filme,
       a.PrimeiroNome,
	   a.UltimoNome,
	   ef.Papel 
  FROM Filmes f 
  JOIN ElencoFilme ef 
  ON f.Id = ef.IdFilme 
  JOIN Atores a 
  ON a.Id = ef.IdAtor;