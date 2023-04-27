--FUN��ES DE TEXTO NO SQL SERVER - Parte 03
--Aula 19

-- Fun��es: LTRIM, RTRIM, PATINDEX, REPLACE, REPLICATE e REVERSE

--Fun��o LTRIM
select ltrim('       Alessandro');
select ltrim('x      Alessandro');

declare @varTexto varchar(50);
    set @varTexto = '      Este � um texto para teste do LTRIM';

	select ltrim(@varTexto) as Teste;
	select resultado = ltrim(@varTexto);

--Fun��o RTRIM
select rtrim('Alessandro      ');

select len('Alessandro      ');
select len(rtrim('Alessandro      '));

declare @varTexto2 varchar(50);
    set @varTexto2 = 'Este � um texto para teste do RTRIM        ';

select rtrim(@varTexto2);

--Fun��o PATINDEX
--Retorna a posi��o inicial da primeira ocorr�ncia de um padr�o

select patindex('%tro%', 'Alessandro Trovato');
select patindex('%a','Ter�a');
select patindex('a%', 'Trovato');
select patindex('a%', 'Alessandro');

select posicao = patindex('%at%', 'Alessandro Trovato');
select posicao = patindex('%dro_trov%','Alessandro Trovato');

declare @varTexto3 varchar(100);
    set @varTexto3 = 'Aqui � o canal do Alessandro Trovato no Youtube';

--SUBSTRING
select substring(@varTexto3, patindex('%Trovato%',@varTexto3), 7);
select patindex('%Trovato%',@varTexto3);

--REPLACE

select replace('Alessandro Trovato', 'a', 'x');
select replace(replace('Alessandro Trovato', 'a', 'x'),'o','?');

select A.nome, a.data_nascimento, a.sexo
  from Alunos A;

select A.nome, a.data_nascimento, replace(a.sexo, 'M', 'Masculino') sexo
  from Alunos A;

declare @cpf varchar(15);
    set @cpf = '111.222.333-44';

select replace(replace(@cpf,'.',''),'-','') as CPF;

--REPLICATE
select replicate('x', 20);

--Tamanho de coluna fixo em 50 posi��es
--Passo 1
select * from alunos;
select len(nome) from alunos;

--Passo 2
select nome + replicate('x', 50 - len(nome)) 
  from alunos;

--Passo 3
select len(nome + replicate('x', 50 - len(nome))) as tamanho
  from alunos;

select nome + replicate(' ', 50 - len(nome))
  from alunos;


--REVERSE

select reverse('Alessandro Trovato');
select reverse(nome) from alunos;

