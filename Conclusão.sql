--1

SElECT 
	Nome,
	Ano
FROM Filmes

--2

SElECT 
	Nome,
	Ano,
	Duracao
FROM Filmes

--3

SElECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome LIKE 'De Volta%'

--4

SElECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--5

SElECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano >= 2000

--6

SElECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE 
	Duracao > 100 
	AND 
	Duracao < 150 
ORDER BY Duracao

--7

-- A Imagem da foto propõem dessa forma:
SElECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade Desc

/*
	Mas não consegui fazer nada relacionado a proposta pois
	não consegui encontrar uma lógica para ordenar pela Duração.
*/

--8

-- A Imagem da foto propõem dessa forma:
SElECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
Where Genero = 'M'

-- Mas a proposta assemelhante a essa:
SElECT
	NomeESobrenome = PrimeiroNome + ' ' + UltimoNome
FROM Atores
Where Genero = 'M'

--9

SElECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
Where Genero = 'F'
ORDER BY PrimeiroNome

-- Mas a proposta assemelhante a essa:
SElECT
	NomeESobrenome = PrimeiroNome + ' ' + UltimoNome
FROM Atores
Where Genero = 'F'
ORDER BY PrimeiroNome

--10

SELECT 
	Filmes.Nome,
	Generos.Genero
FROM 
	FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11

SELECT 
	Filmes.Nome,
	Generos.Genero
FROM 
	FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

--12

SELECT 
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM 
	ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id

--Com uma melhora:

SELECT 
	Filmes.Nome,
	AtorAtrizPrincipal =
		Atores.PrimeiroNome + ' ' + Atores.UltimoNome,
	Como = ElencoFilme.Papel 
FROM 
	ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id