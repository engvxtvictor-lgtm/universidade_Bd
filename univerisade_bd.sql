-- 1. PREPARAÇÃO DO BANCO
-- Apaga a tabela se ela já existir para não dar erro
DROP TABLE IF EXISTS professor;

-- Cria a tabela com as colunas exigidas
CREATE TABLE professor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    disciplina VARCHAR(100) NOT NULL,
    idade INT,
    salario NUMERIC(10,2),
    cidade VARCHAR(100)
);

-- Insere os registros iniciais da atividade
INSERT INTO professor (nome, disciplina, idade, salario, cidade)
VALUES
('Ana Silva', 'Banco de Dados', 35, 5500.00, 'Teresina'),
('Carlos Souza', 'Programação', 42, 7200.00, 'Teresina'),
('Mariana Lima', 'Engenharia de Software', 29, 4800.00, 'Parnaíba'),
('João Santos', 'Redes de Computadores', 45, 6800.00, 'Teresina'),
('Fernanda Costa', 'Banco de Dados', 31, 5200.00, 'Picos'),
('Rafael Oliveira', 'Programação', 27, 4500.00, 'Floriano');


-- 2. INSERINDO NOVOS PROFESSORES
-- Adicionando 3 novos professores com dados diferentes
INSERT INTO professor (nome, disciplina, idade, salario, cidade)
VALUES
('Pedro Alves', 'Matemática Discreta', 38, 5100.00, 'Teresina'),
('Juliana Mendes', 'Sistemas Operacionais', 33, 4900.00, 'Parnaíba'),
('Lucas Carvalho', 'Inteligência Artificial', 41, 8000.00, 'Picos');


-- 3. CONSULTAS SIMPLES
-- Questão 1: Mostre todos os professores cadastrados
SELECT * FROM professor;

-- Questão 2: Mostre apenas o nome e a disciplina
SELECT nome, disciplina FROM professor;

-- Questão 3: Professores que trabalham com Banco de Dados
SELECT * FROM professor WHERE disciplina = 'Banco de Dados';

-- Questão 4: Professores que moram em Teresina
SELECT * FROM professor WHERE cidade = 'Teresina';

-- Questão 5: Professores com idade maior que 35 anos
SELECT * FROM professor WHERE idade > 35;

-- Questão 6: Professores com salário menor que R$ 5.000,00
SELECT * FROM professor WHERE salario < 5000.00;


-- 4. CONSULTAS UTILIZANDO AND
-- Questão 7: Moram em Teresina E possuem mais de 35 anos
SELECT * FROM professor WHERE cidade = 'Teresina' AND idade > 35;

-- Questão 8: Banco de Dados E salário maior que R$ 5.000,00
SELECT * FROM professor WHERE disciplina = 'Banco de Dados' AND salario > 5000.00;

-- Questão 9: Idade menor que 40 anos E salário maior que R$ 5.000,00
SELECT * FROM professor WHERE idade < 40 AND salario > 5000.00;

-- Questão 10: Moram em Teresina E salário maior que R$ 6.000,00
SELECT * FROM professor WHERE cidade = 'Teresina' AND salario > 6000.00;


-- 5. CONSULTAS UTILIZANDO OR
-- Questão 11: Moram em Teresina OU Parnaíba
SELECT * FROM professor WHERE cidade = 'Teresina' OR cidade = 'Parnaíba';

-- Questão 12: Trabalham com Banco de Dados OU Programação
SELECT * FROM professor WHERE disciplina = 'Banco de Dados' OR disciplina = 'Programação';

-- Questão 13: Idade menor que 30 OU idade maior que 40
SELECT * FROM professor WHERE idade < 30 OR idade > 40;

-- Questão 14: Salário menor que 5.000,00 OU salário maior que 7.000,00
SELECT * FROM professor WHERE salario < 5000.00 OR salario > 7000.00;


-- 6. DESAFIO FINAL - AND + OR
-- Questão 15: Teresina OU Parnaíba E salário maior que 5.000,00
SELECT * FROM professor WHERE (cidade = 'Teresina' OR cidade = 'Parnaíba') AND salario > 5000.00;

-- Questão 16: Banco de Dados OU Programação E idade menor que 40 anos
SELECT * FROM professor WHERE (disciplina = 'Banco de Dados' OR disciplina = 'Programação') AND idade < 40;

-- Questão 17 - Desafio: (Teresina E > 6000) OU (Parnaíba E < 35)
SELECT * FROM professor WHERE (cidade = 'Teresina' AND salario > 6000.00) OR (cidade = 'Parnaíba' AND idade < 35);


 
-- DESAFIO EXTRA

-- 1. Uma utilizando AND
SELECT * FROM professor WHERE disciplina = 'Engenharia de Software' AND idade < 35;
-- Explicação: Esta consulta procura por professores que ensinam Engenharia de Software e que também tenham menos de 35 anos.

-- 2. Uma utilizando OR
SELECT * FROM professor WHERE cidade = 'Picos' OR cidade = 'Floriano';
-- Explicação: Esta consulta procura por professores que moram na cidade de Picos ou na cidade de Floriano.