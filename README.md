🎯 Projeto SQL — Centro de Treinamento Físico 
Criação e Manipulação de Dados com SQL (DML)

Este repositório contém todos os scripts SQL desenvolvidos para o projeto de um Centro de Treinamento Físico, conforme solicitado na Atividade 4 da disciplina de Banco de Dados.
O projeto abrange criação de tabelas, povoamento do banco, consultas, atualizações e exclusões, seguindo o modelo lógico criado na Atividade 3.

📁 /CTF_SQL_Projeto
│
├── create_tables.sql        → Criação completa das tabelas do banco
├── inserts.sql              → Inserção de dados fictícios e coerentes
├── select_queries.sql       → Consultas SELECT (básicas + avançadas)
├── updates_deletes.sql      → Comandos UPDATE e DELETE
└── README.md                → Documentação do projeto

🧱 1. Mini-Mundo do Projeto

O Centro de Treinamento Físico (CTF) oferece modalidades de CrossFit e Endurance, com aulas variadas, instrutores certificados e planos mensais e trimestrais.
O sistema foi modelado para registrar:

- Alunos;
- Instrutores;
- Modalidades;
- Planos;
- Treinos personalizados;
- Aulas;
- Pagamentos;
- Presença em aula.

O objetivo é permitir consultas de desempenho, registro de participação, gestão de pagamentos e organização de treinos e aulas.

🗄️ 2. Estrutura do Banco de Dados

As seguintes tabelas foram criadas:

✔ aluno

Informações pessoais e objetivo no treino.

✔ instrutor

Instrutores com especialidade (CrossFit ou Endurance).

✔ modalidade

Modalidades oferecidas.

✔ plano

Planos mensais ou trimestrais, preço base e tipo.

✔ treino

Treinos personalizados feitos pelo instrutor para um aluno.

✔ aula

Aulas regulares da academia.

✔ pagamento

Controle de pagamentos feitos pelos alunos.

✔ presenca

Registro de entrada do aluno nas aulas.

🛠️ 3. Como Executar os Scripts

1) Criar o banco de dados

No MySQL Workbench, execute:

CREATE DATABASE ctf;
USE ctf;

2) Criar as tabelas

Abra o arquivo:

create_tables.sql

E execute tudo (botão de raio ⚡).

3) Inserir os dados

Abra:

inserts.sql


E execute todos os INSERTs.

4) Consultar os dados

Abra:

select_queries.sql

Você encontrará consultas como:

Listar todos os alunos

Buscar alunos por objetivo

Consultar instrutores por especialidade

Relatórios com JOINs

5) Executar atualizações e exclusões

Abra:

updates_deletes.sql

Exemplos no arquivo:

✔ Atualização de dados
UPDATE aluno
SET objetivo = 'Performance em CrossFit e Endurance'
WHERE id_aluno = 1;

✔ Remoção com segurança
DELETE FROM pagamento
WHERE id_pagamento = 3
  AND status_pagamento = 'Em análise';

🔍 4. Exemplos de Consultas Presentes no Projeto
✔ Listar todos os alunos
SELECT *
FROM aluno
ORDER BY nome ASC;

✔ Filtrar por objetivo
SELECT nome, objetivo, data_matricula
FROM aluno
WHERE objetivo = 'Performance em CrossFit'
ORDER BY data_matricula DESC;

✔ Listar instrutores e suas especialidades
SELECT nome, especialidade, carga_horaria_semanal
FROM instrutor;

♻️ 5. Integridade e Boas Práticas Aplicadas

Uso de chaves estrangeiras para manter consistência

Uso correto do AUTO_INCREMENT

Atualizações seguras com WHERE

Exclusões realizadas apenas quando permitidas pelas foreign keys

Scripts organizados por tipo: criação, inserção, consulta, edição

📝 6. Observações Importantes

Todos os scripts foram testados no MySQL 8.0

O projeto segue os padrões solicitados na Atividade 4

Dados fictícios foram criados para simular um ambiente real de academia

👩‍💻 7. Autoria

Projeto desenvolvido por Larissa Oliveira
Disciplina: Banco de Dados – Atividade 4 (DML)
Curso: Análise e Desenvolvimento de Sistemas
