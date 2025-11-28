CREATE DATABASE ctf;
USE ctf;

CREATE TABLE aluno (
	id_aluno INT auto_increment primary key,
    nome VARCHAR(100),
    data_nascimento DATE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(200),
    objetivo VARCHAR(200),
    data_matricula DATE,
    status VARCHAR(20)
);

CREATE TABLE instrutor (
	id_instrutor INT auto_increment primary key,
    nome VARCHAR(100),
    especialidade VARCHAR(100),
    carga_horaria_semanal INT,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE plano (
	id_plano INT auto_increment primary key,
    nome_plano VARCHAR(100),
    duracao_meses INT,
    valor_base DECIMAL(10,2),
    tipo_plano VARCHAR(50)
);

CREATE TABLE modalidade (
	id_modalidade INT auto_increment primary key,
    nome_modalidade VARCHAR(100),
    descricao VARCHAR(200)
);

CREATE TABLE pagamento (
	id_pagamento INT auto_increment primary key,
    data_pagamento DATE,
    valor_pago DECIMAL(10,2),
    forma_pagamento VARCHAR(50),
    status_pagamento VARCHAR(50),
    data_inicio_plano DATE,
    data_fim_plano DATE,
    id_aluno INT,
    id_plano INT,
    foreign key (id_aluno) references aluno(id_aluno),
    foreign key (id_plano) references plano(id_plano)
);

CREATE TABLE aula (
	id_aula INT auto_increment primary key,
    data_hora DATETIME,
    duracao_minutos INT,
    capacidade_maxima INT,
    local VARCHAR(100),
    id_modalidade INT,
    id_instrutor INT,
    foreign key (id_modalidade) references modalidade(id_modalidade),
    foreign key (id_instrutor) references instrutor(id_instrutor)
);

CREATE TABLE treino (
	id_treino INT auto_increment primary key,
    nome_treino VARCHAR(100),
    objetivo_treino VARCHAR(200),
    descricao_geral VARCHAR(300),
    data_criacao DATE,
    id_aluno INT,
    id_instrutor INT,
    foreign key (id_aluno) references aluno(id_aluno),
    foreign key (id_instrutor) references instrutor(id_instrutor)
);

CREATE TABLE presenca (
	id_presenca INT auto_increment primary key,
    data_hora_entrada DATETIME,
    tipo_presenca VARCHAR(50),
    id_aluno INT,
    id_aula INT,
    foreign key (id_aluno) references aluno(id_aluno),
    foreign key (id_aula) references aula(id_aula)
);