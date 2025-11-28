USE ctf;

-- 1) Listar todos os alunos cadastrados, ordenados por nome
SELECT *
FROM aluno
ORDER BY nome ASC;

-- 2) Mostrar apenas os alunos com objetivo de 'Performance em Crossfit'
SELECT nome, objetivo, data_matricula
FROM aluno
WHERE objetivo = 'Performance em Crossfit'
ORDER BY data_matricula DESC;

-- 3) Listar instrutores com suas especialidades e carga horária
SELECT nome, especialidade, carga_horaria_semanal
FROM instrutor
ORDER BY nome ASC;

-- 4) Listar aulas com suas modalidades e instrutores
SELECT 
    a.id_aula,
    a.data_hora,
    m.nome_modalidade AS modalidade,
    i.nome AS instrutor
FROM aula a
JOIN modalidade m ON a.id_modalidade = m.id_modalidade
JOIN instrutor i ON a.id_instrutor = i.id_instrutor
ORDER BY a.data_hora ASC;

-- 5) Listar treinos junto com aluno e instrutor responsáveis
SELECT 
    t.nome_treino,
    t.objetivo_treino,
    a.nome AS aluno,
    i.nome AS instrutor
FROM treino t
JOIN aluno a ON t.id_aluno = a.id_aluno
JOIN instrutor i ON t.id_instrutor = i.id_instrutor;

-- 6) Listar pagamentos e identificar se estão ativos ou pendentes
SELECT p.id_pagamento,
       p.data_pagamento,
       p.valor_pago,
       p.forma_pagamento,
       p.status_pagamento,
       a.nome AS aluno,
       pl.nome_plano
FROM pagamento p
JOIN aluno a ON p.id_aluno = a.id_aluno
JOIN plano pl ON p.id_plano = pl.id_plano
ORDER BY p.data_pagamento DESC;
