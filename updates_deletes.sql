USE ctf;

-- ============================================================
-- UPDATES
-- ============================================================

-- 1) Atualizar o objetivo da aluna Larissa
-- Situação: ela passou a treinar também Endurance
UPDATE aluno
SET objetivo = 'Performance em CrossFit e Endurance'
WHERE id_aluno = 1;  

-- 2) Ajustar o valor de um plano Mensal Performance
-- Situação: aumento de preço do plano
UPDATE plano
SET valor_base = 195.00
WHERE id_plano = 1;   

-- 3) Alterar o status de um pagamento específico
-- Situação: pagamento 3 entrou em análise
UPDATE pagamento
SET status_pagamento = 'Em análise'
WHERE id_pagamento = 3;

-- ============================================================
-- DELETES
-- ============================================================

-- 1) Excluir uma presença lançada incorretamente
-- Situação: presença 3 foi registrada por engano
DELETE FROM presenca
WHERE id_presenca = 3;

-- 2) Remover um treino que será totalmente substituído
-- Situação: o treino 3 (Endurance Bike) será recriado com outra estrutura
DELETE FROM treino
WHERE id_treino = 3;

-- 3) Excluir um pagamento de teste
-- Situação: o pagamento 3, com status "Em análise", era apenas um teste
DELETE FROM pagamento
WHERE id_pagamento = 3
  AND status_pagamento = 'Em análise';