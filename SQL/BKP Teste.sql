INSERT INTO `pessoa` (`id_pessoa`, `dependentes`, `estado_civil`, `genero`, `idade`, `nome`, `rendimento_mensal`) VALUES
	(1, 'Esposa', 'Casado', 'Masculino', 40, 'Douglas', 10000),
	(2, 'Mãe', 'Solteiro', 'Masculino', 39, 'David', 6000),
	(3, 'Mãe, Marido', 'Casada', 'Feminino', 36, 'Adrielly', 9000),
	(5, 'Douglas, Adrielly', NULL, NULL, NULL, 'Barcelos App', 7000),
	(6, 'Mãe', NULL, NULL, NULL, 'Neideval', 8500),
	(7, 'Esposa', NULL, NULL, NULL, 'Kirk', 10000);

INSERT INTO `documento` (`id_documento`, `cnpj`, `cpf`, `rg`) VALUES
	(1, NULL, '123.456.789-00', NULL),
	(2, NULL, '456.789.123-89', '9.876.543-2'),
	(3, NULL, '987.654.321-09', '1.471.753-5'),
	(4, NULL, '08.281.035/0001-09', NULL),
	(5, NULL, '724.851.413.-90', '2.342.834-5'),
	(6, NULL, '08.281.035/0001-09', '1.471.753-5'),
	(7, NULL, '725.648.627-20', '1.471.753-5'),
	(8, NULL, '398.190.867-56', '2.582.563-7');

INSERT INTO `endereco` (`id_endereco`, `cep`, `logradouro`, `numero_casa`, `referencia`) VALUES
	(1, '87700-000', 'Rua Professor Pedro Real', '298', 'Casa 2'),
	(2, '87700-100', 'Rua John Kennedy', '652', 'Casa'),
	(3, '87705-250', 'Rua Herculano Rubin Toledo', '370', 'Próximo Antena Telepar'),
	(4, '87709-510', 'Rua Getúlio Vargas', '999', 'Próximo Prefeitura'),
	(5, '87710-100', 'Rua Souza Naves', '1000', 'Próximo Shopping'),
	(6, '87709-510', 'Rua Getúlio Vargas', '999', 'Próximo Prefeitura'),
	(7, '87720-900', 'Rua Paraíba', '145', 'Próximo Fórum'),
	(8, '87790-090', 'Rua Pernanbuco', '487', 'Próximo Correios');

INSERT INTO `carteira` (`id_carteira`, `data_inicio_investimento`, `data_termino_investimento`, `nome`, `saldo_atual`) VALUES
	(1, '2022-10-01 00:00:00.000000', '2023-03-31 00:00:00.000000', 'Carteira Principal', 200000),
	(2, '2022-11-01 00:00:00.000000', '2023-01-31 00:00:00.000000', 'Carteira Vinculada', 15000),
	(3, '2022-11-10 00:00:00.000000', '2023-02-28 00:00:00.000000', 'Carteira Garantida', 50000),
	(4, '2022-11-10 00:00:00.000000', '2023-05-31 00:00:00.000000', 'Carteira Simples', 500000),
	(5, '2022-11-10 00:00:00.000000', '2023-11-30 00:00:00.000000', 'Carteira Teste', 5000),
	(6, '2022-11-10 00:00:00.000000', '2023-05-31 00:00:00.000000', 'Carteira Direta Simples', 500000),
	(7, '2022-11-07 00:00:00.000000', '2023-01-10 00:00:00.000000', 'Carteira Direta', 340000),
	(8, '2022-11-07 00:00:00.000000', '2023-10-10 00:00:00.000000', 'Carteira Metal', 670000);

INSERT INTO `taxa` (`id_taxa`, `nome`, `porcentagem`) VALUES
	(1, 'Poupança', 1.5),
	(2, 'Capitalização', 3.9),
	(3, 'CDB 109', 9),
	(4, 'CDB 113', 13);

INSERT INTO `pessoa_documento` (`id_documento`, `id_pessoa`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(6, 5),
	(7, 6),
	(8, 7);

INSERT INTO `pessoa_endereco` (`id_endereco`, `id_pessoa`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(6, 5),
	(7, 6),
	(8, 7);

INSERT INTO `pessoa_carteira` (`id_carteira`, `id_pessoa`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(6, 5),
	(7, 6),
	(8, 7);

INSERT INTO `pessoa_taxa` (`id_taxa`, `id_pessoa`) VALUES
	(1, 3),
	(2, 5),
	(3, 6),
	(4, 7);