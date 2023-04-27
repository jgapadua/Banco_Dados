--Crie uma consulta com todas as disciplinas oferecidas no ano de 2018, constando os nomes das disciplinas, nomes e cidades dos professores responsáveis e nomes dos cursos das disciplinas.
Select d.nome_disciplina, p.nome_prof, p.cidade_prof, d.nome_curso  
from profdisc pd,disciplinas d, professores p 
where pd.ano=2018 and pd.codigo_disc=d.codigo_disc and pd.numero_prof = p.numero_prof;

--Crie uma consulta que mostre todos os nomes dos professores do curso de CST Sistemas para Internet, no ano de 2018, e os nomes das disciplinas pelas quais são responsáveis.
Select p.nome_prof, d.nome_disciplina
from profdisc pd,disciplinas d, professores p 
where d.nome_curso='CST Sistemas para Internet' and pd.ano=2018 and pd.codigo_disc=d.codigo_disc and pd.numero_prof = p.numero_prof;