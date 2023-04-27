
CREATE TABLE db_Escola.dbo.alunos (
	numero_aluno int IDENTITY(1,1) NOT NULL,
	nome_alu varchar(200) COLLATE Latin1_General_CI_AS NULL,
	rua_alu varchar(255) COLLATE Latin1_General_CI_AS NULL,
	cidade_alu varchar(255) COLLATE Latin1_General_CI_AS NULL,
	CONSTRAINT PK__alunos__239DE45E3582A18E PRIMARY KEY (numero_aluno)
);



CREATE TABLE db_Escola.dbo.disciplinas (
	codigo_disc int IDENTITY(1,1) NOT NULL,
	nome_disciplina varchar(200) COLLATE Latin1_General_CI_AS NULL,
	nome_curso varchar(255) COLLATE Latin1_General_CI_AS NULL,
	qtd_aulas int NULL,
	CONSTRAINT PK__discipli__05C1621B7C81140E PRIMARY KEY (codigo_disc)
);


CREATE TABLE db_Escola.dbo.professores (
	numero_prof int IDENTITY(1,1) NOT NULL,
	nome_prof varchar(200) COLLATE Latin1_General_CI_AS NULL,
	rua_prof varchar(255) COLLATE Latin1_General_CI_AS NULL,
	cidade_prof varchar(255) COLLATE Latin1_General_CI_AS NULL,
	CONSTRAINT PK__professo__D105E283870E99BD PRIMARY KEY (numero_prof)
);



CREATE TABLE db_Escola.dbo.matriculas (
	numero_aluno int NOT NULL,
	codigo_disc int NOT NULL,
	ano int NULL,
	CONSTRAINT fk_AlunosMatricula FOREIGN KEY (numero_aluno) REFERENCES db_Escola.dbo.alunos(numero_aluno),
	CONSTRAINT fk_DisciplinaMatricula FOREIGN KEY (codigo_disc) REFERENCES db_Escola.dbo.disciplinas(codigo_disc)
);


CREATE TABLE db_Escola.dbo.profdisc (
	codigo_disc int NOT NULL,
	numero_prof int NULL,
	ano int NULL,
	CONSTRAINT fk_DisciplinaProfessor FOREIGN KEY (codigo_disc) REFERENCES db_Escola.dbo.disciplinas(codigo_disc),
	CONSTRAINT fk_ProfessorDisciplina FOREIGN KEY (numero_prof) REFERENCES db_Escola.dbo.professores(numero_prof)
);
