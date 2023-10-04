-- "apagar" um usuário, agora isso significa simplesmente torná-lo inativo
UPDATE tb_pessoa SET ativo=0 WHERE cod_pessoa=3;

-- adicionar uma coluna para dizer se a pessoa está ativa ou não
ALTER TABLE tb_pessoa
ADD COLUMN ativo TINYINT(1) NOT NULL DEFAULT 1;

-- apagar (DELETE) não falamos colunas
DELETE FROM tb_pessoa WHERE cod_pessoa = 4;

-- atualizar (UPDATE)
-- josé passará a se chamar José da Silva
UPDATE tb_pessoa SET nome='José da Silva' WHERE cod_pessoa;
UPDATE tb_pessoa SET nome = CONCAT(nome, ' ', 'Santos') WHERE cod_pessoa;

-- visualizar pessoas (SELECT)
SELECT * FROM tb_pessoa;
SELECT nome, fone FROM tb_pessoa; -- projeção
SELECT cod_pessoa, fone, nome, email FROM tb_pessoa;
SELECT * FROM tb_pessoa WHERE cod_pessoa = 1;
SELECT email FROM tb_pessoa WHERE nome = 'José';
SELECT nome, fone FROM tb_pessoa WHERE nome LIKE 'J%';
-- pegar nome e email de todas as pessoas que tenham o nome terminando em o
SELECT nome, email FROM tb_pessoa WHERE nome LIKE '%o';
-- pegar todas as colunas de todas as pessoas cujo email seja do dominio @email
-- @email.com, @email.com.br, @email.br
SELECT * FROM tb_pessoa WHERE email LIKE '%@email%';
-- nome e email de todas as pessoas que tenham o nome começando em P ou M
-- ou lógico: OR
SELECT nome, email FROM tb_pessoa WHERE nome LIKE 'P%' OR  nome LIKE 'M%';
-- nome, fone e email das pessoas de nome começando com M E que tenham email no dominio @email.com
SELECT nome, fone, email FROM tb_pessoa WHERE nome LIKE 'M%' AND email LIKE '%@email%';
-- cadastrar pessoas
-- comando INSERT
INSERT INTO tb_pessoa
(nome, fone, email) VALUES
('José', '11223344', 'jose@email.com');
INSERT INTO tb_pessoa 
(nome, fone, email) VALUES
('João', '11447788', 'joao@email.com'), -- tupla ou linha na tabela
('Pedro', '77887788', 'pedro@email.com'); -- tupla ou linha na tabela
INSERT INTO tb_pessoa
(nome, fone, email) VALUES
('Maria', '78789988', 'maria@teste.com');
INSERT INTO tb_pessoa
(nome, fone, email) VALUES
('Mariana', '77441155', 'mariana@email.com');

-- CREATE TABLE tb_pessoa(
-- 	cod_pessoa INT PRIMARY KEY AUTO_INCREMENT,
--     nome VARCHAR(200) NOT NULL,
--     fone VARCHAR(200) NULL,
--     email VARCHAR(200) NOT NULL
-- );

-- USE 20232_usjt_psc_segunda_pessoas;
-- CREATE DATABASE 20232_usjt_psc_segunda_pessoas;