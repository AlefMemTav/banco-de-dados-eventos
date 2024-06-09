-- -------- < TF_scripts_2 > --------
--
--                    SCRIPT DE INSERCAO (DML)
--
-- Data Criacao ...........: 07/06/2024
-- Autor(es) ..............: PEDRO GARCIA, LUCAS BOTTINO
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_scripts_2
--
-- PROJETO => 01 Base de Dados
--         => 18 Tabelas
-- ---------------------------------------------------------

USE TF_scripts_2;

INSERT INTO TIPO_FUNCIONARIO (nome, salario) 
VALUES
    ('Garçom', 2000.00),
    ('Cozinha', 1800.00),
    ('Copeiro', 1700.00),
    ('Chef', 5000.00),
    ('Coordenador', 4000.00),
    ('Recepcionista', 2200.00),
    ('Escritório', 3000.00),
    ('Marketing', 3500.00),
    ('Contador', 4500.00);

INSERT INTO FUNCIONARIO (nome, cpf, dataNascimento, classificacao, idTipoFuncionario) 
VALUES
    ('João Silva', 12345678901, '1985-04-23', 5, 1),
    ('Maria Oliveira', 23456789012, '1990-07-15', 4, 2),
    ('Carlos Pereira', 34567890123, '1982-12-05', 3, 3),
    ('Ana Souza', 45678901234, '1995-11-20', 4, 4),
    ('Lucas Fernandes', 56789012345, '1988-08-30', 5, 5);

INSERT INTO FUNCIONARIO_FIXO (numeroCarteiraTrabalho, numeroCertidao, grauEscolaridade, numeroTituloEleitor, idFuncionario) 
VALUES
    (12345, 98765, 'EM', 12345, 1),
    (23456, 87654, 'SC', 23456, 2),
    (34567, 76543, 'ES', 34567, 3),
    (45678, 65432, 'EM', 45678, 4),
    (56789, 54321, 'SC', 56789, 5);

INSERT INTO ENDERECO (logradouro, numeroRua, nomeCidade) 
VALUES 
  ('Esplanada dos Ministérios', '1', 'Brasília'),
  ('SQS 308', '12', 'Brasília'),
  ('Avenida L2 Norte', '35', 'Brasília'),
  ('Setor de Embaixadas Sul', '45', 'Brasília'),
  ('SHN Quadra 5', '85', 'Brasília'),
  ('Chácara 143', '10', 'Vicene Pires'),
  ('CLS 102 Bloco A', '20', 'Brasília'),
  ('SQN 210', '8', 'Brasília'),
  ('Setor Bancário Sul', '4', 'Brasília'),
  ('Lago Sul QI 11', '6', 'Brasília'),
  ('Rua 15 Norte', '30', 'Águas Claras');

INSERT INTO LUGAR (nome, idEndereco) 
VALUES 
  ('Ministério da Economia', 1),
  ('Bloco Residencial', 2),
  ('Escola de Administração', 3),
  ('Embaixada dos Estados Unidos', 4),
  ('Hotel Brasília', 5),
  ('Recanto Oasis', 6);

INSERT INTO TIPO_EVENTO (nome, preco) 
VALUES 
  ('Casamento', 10000.00),
  ('15 anos', 5000.00),
  ('Aniversário', 2500.00),
  ('Confraternização', 2000.00),
  ('Formatura', 2500.00);

INSERT INTO EVENTO (nome, data, horaInicio, horaFim, idTipoEvento, idLugar) 
VALUES 
  ('Casamento de João e Maria', '2024-07-15', '18:00:00', '23:00:00', 1, 6),
  ('Festa de 15 anos de Ana', '2024-08-20', '19:00:00', '23:30:00', 2, 2),
  ('Aniversário de Pedro', '2024-09-10', '17:00:00', '22:00:00', 3, 3),
  ('Confraternização da Empresa X', '2024-10-05', '18:00:00', '22:30:00', 4, 4),
  ('Formatura Software UnB 2024', '2024-11-25', '09:00:00', '17:00:00', 5, 6);

INSERT INTO DIARIA (idEvento, idFuncionario) 
VALUES 
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5);

INSERT INTO FORNECEDOR (nome, idLugar, idEndereco) 
VALUES 
  ('Alimentos Frescos Ltda', 1, 7),
  ('TecnoEquipamentos S.A.', 2, 8),
  ('Bebidas Premium', 3, 9),
  ('Serviços Logísticos Rápidos', 4, 10),
  ('Produtos de Limpeza Top', 5, 11);

INSERT INTO CLIENTE (nome, telefone) 
VALUES 
  ('João Silva', '(61) 9999-9999'),
  ('Maria Santos', '(61) 9888-8888'),
  ('Pedro Almeida', '(61) 9777-7777'),
  ('Ana Oliveira', '(61) 9666-6666'),
  ('Carlos Ribeiro', '(61) 9555-5555');

INSERT INTO CONTRATO (quantidadePessoas, idCliente, idEvento) 
VALUES 
  (100, 1, 1),
  (150, 2, 2),
  (80, 3, 3),
  (200, 4, 4),
  (120, 5, 5);

INSERT INTO TIPO_SERVICO (nome, preco) 
VALUES 
    ('Espaço', 1000.00),
    ('Buffet', 500.00),
    ('Decoração', 300.00),
    ('Fotografia', 800.00),
    ('Música ao Vivo', 1200.00);

INSERT INTO SERVICO (idTipoServico) 
VALUES 
    (1),
    (2),
    (3),
    (4),
    (5);

INSERT INTO PEDIDO (idServico, idContrato) 
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

INSERT INTO CATALOGO (idLugar) 
VALUES 
    (1),
    (2),
    (3),
    (4),
    (5);

INSERT INTO TIPO_ITEM (nome, quantidadePermitida) 
VALUES 
    ('Entrada', 20),
    ('Salgado', 20),
    ('Prato Principal', 1),
    ('Bebida', 5),
    ('Sobremesa', 2);

INSERT INTO ITEM (nome, preco, idTipoItem, idCatalogo)
VALUES 
    ('Pastel de Queijo', 3.50, 2, 1),
    ('Coca-Cola Lata', 4.00, 4, 5),
    ('Salmão Grelhado', 25.00, 3, 3),
    ('Buffet de Salgados', 50.00, 2, 2),
    ('Torta de Limão', 20.00, 5, 4);

INSERT INTO ITEM_PEDIDO (quantidade, idItem, idPedido)
VALUES 
  (2, 1, 1), 
  (3, 2, 1),  
  (1, 3, 2), 
  (4, 4, 3),
  (2, 5, 3);