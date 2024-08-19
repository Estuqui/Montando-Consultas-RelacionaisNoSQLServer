1. Buscar o nome e ano dos filmes: SELECT Nome, Ano FROM Filmes;

2. Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano: SELECT Nome, AnoFROM Filmes ORDER BY Ano ASC;

3.Buscar pelo filme "De Volta Para o Futuro", trazendo o nome, ano e a duração: SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta Para o Futuro';

4.Buscar os filmes lançados em 1997: SELECT Nome FROM Filmes WHERE Ano = 1997;

5.Buscar os filmes lançados APÓS o ano 2000: SELECT Nome FROM Filmes WHERE Ano > 2000; 

6. Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente: 
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

7.Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela duração em ordem decrescente:
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

8.Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome:
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino';

9.Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome:
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome ASC;

10.Buscar o nome do filme e o gênero:
SELECT F.Nome AS Filme, G.Nome AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.IdFilme = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.IdGenero;

11.Buscar o nome do filme e o gênero do tipo "Mistério":
SELECT F.Nome AS Filme, G.Nome AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.IdFilme = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.IdGenero
WHERE G.Nome = 'Mistério';

12.Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel:
SELECT F.Nome AS Filme, A.PrimeiroNome, A.UltimoNome, E.Papel
FROM Filmes F
JOIN ElencoFilme E ON F.IdFilme = E.IdFilme
JOIN Atores A ON E.IdAtor = A.IdAtor;