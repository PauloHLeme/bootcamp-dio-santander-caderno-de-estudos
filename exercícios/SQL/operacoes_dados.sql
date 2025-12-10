-- Selects --

-- Selecionar todos os registros da tabela "usuarios"
SELECT * FROM usuarios;

-- Selecionar apenas o nome e o email dos usuários
SELECT nome, email FROM usuarios;

-- Selecionar os usuários que possuem o nome "João Silva"
SELECT * FROM usuarios WHERE nome = 'João Silva';

-- Selecionar os usuários que nasceram antes de uma determinada data
SELECT * FROM usuarios WHERE data_nascimento < '1990-01-01';

-- Like
SELECT * FROM usuarios WHERE nome LIKE '%Silva%';
SELECT * FROM usuarios WHERE nome LIKE 'Jo_o%';

-- Update --
UPDATE usuarios SET endereco = 'Nova Rua, 123' WHERE email = 'joao@example.com';

-- delete --
DELETE FROM reservas WHERE status = 'cancelada';