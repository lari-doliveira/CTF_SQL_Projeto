USE ctf;

INSERT into plano (nome_plano, duracao_meses, valor_base, tipo_plano) 
VALUES 
('Mensal Básico', 1, 120.00, 'Básico'),
('Mensal Performance', 1, 180.00, 'Performance'),
('Trimestral Endurance', 3, 320.00, 'Promocional');

INSERT into modalidade (nome_modalidade, descricao)
VALUES
('CrossFit', 'Treinos de alta intensidade com movimentos funcionais variados.'),
('Endurance', 'Treinos focados em resistência cardiovascular e muscular.');

INSERT into instrutor (nome, especialidade, carga_horaria_semanal, telefone, email)
VALUES
('Carlos Mendes', 'CrossFit', 25, '11987654321', 'carlos@ctf.com'),
('Ana Souza', 'Endurance', 30, '11912345678', 'ana@ctf.com');

INSERT into aluno (nome, data_nascimento, telefone, email, endereco, objetivo, data_matricula, status)
VALUES
('Larissa Oliveira', '1998-07-12', '11998765432', 'larissa@gmail.com', 'Rua A, 123', 'Performance em CrossFit', '2025-01-10', 'Ativo'),
('Marcos Silva', '1995-02-20', '11933445566', 'marcos@gmail.com', 'Rua B, 426', 'Emagrecimento e condicionamento', '2025-01-18', 'Ativo'),
('Julia Santos', '2000-10-05', '11922334455', 'julia.santos@gmail.com', 'Rua C, 789', 'Melhorar resistência', '2025-01-18', 'Ativo');

INSERT into pagamento (data_pagamento, valor_pago, forma_pagamento, status_pagamento, data_inicio_plano, data_fim_plano, id_aluno, id_plano)
VALUES
('2025-01-10', 120.00, 'Crédito', 'Pago', '2025-01-10', '2025-02-10', 1, 1), -- Larissa, Mensal Básico
('2025-01-15', 180.00, 'Débito',  'Pago', '2025-01-15', '2025-02-15', 2, 2), -- Marcos, Mensal Performance
('2025-01-18', 320.00, 'Pix',     'Pago', '2025-01-18', '2025-04-18', 3, 3); -- Julia, Trimestral Endurance

-- Considerando:
-- id_modalidade = 1 -> CrossFit
-- id_modalidade = 2 -> Endurance
-- id_instrutor = 1 -> Carlos (CrossFit)
-- id_instrutor = 2 -> Ana (Endurance)

INSERT into aula (data_hora, duracao_minutos, capacidade_maxima, local, id_modalidade, id_instrutor)
VALUES
('2025-02-01 09:00:00', 60, 18, 'Arena CTF',      1, 1), -- CrossFit com Carlos
('2025-02-01 10:30:00', 50, 20, 'Pista Outdoor',  2, 2), -- Endurance com Ana
('2025-02-03 19:00:00', 45, 16, 'Arena CTF',      1, 1); -- Outra aula de CrossFit

INSERT into treino (nome_treino, objetivo_treino, descricao_geral, data_criacao, id_aluno, id_instrutor)
VALUES
('CrossFit Base', 
 'Desenvolver condicionamento geral e técnica básica',
 'Treino com combinações de agachamentos, empurrar, puxar e movimentos com carga leve a moderada.',
 '2025-02-01', 1, 1), -- Larissa com Carlos

('Endurance Run',
 'Melhorar resistência aeróbica em corrida',
 'Sessão de corrida contínua com variação de pace em blocos de tempo.',
 '2025-02-01', 2, 2), -- Marcos com Ana

('Endurance Bike',
 'Aprimorar resistência em ciclismo indoor',
 'Treino em bike com intervalos de intensidade moderada e alta.',
 '2025-02-02', 3, 2); -- Julia com Ana
 
 -- Considerando que:
-- aula 1 = CrossFit 09h
-- aula 2 = Endurance 10h30
-- aula 3 = CrossFit 19h

INSERT into presenca (data_hora_entrada, tipo_presenca, id_aluno, id_aula)
VALUES
('2025-02-01 08:55:00', 'Normal',    1, 1), -- Larissa no CrossFit 09h
('2025-02-01 10:28:00', 'Normal',    2, 2), -- Marcos no Endurance
('2025-02-03 18:58:00', 'Normal',    1, 3); -- Larissa no CrossFit 19h
