INSERT INTO `pessoa` (`id_pessoa`, `dependentes`, `estado_civil`, `genero`, `idade`, `nome`, `rendimento_mensal`) VALUES
	(1, 'Esposa', 'Casado', 'Masculino', 40, 'Douglas', 10000),
	(2, 'Mãe', 'Solteiro', 'Masculino', 39, 'David', 6000),
	(3, 'Mãe, Marido', 'Casada', 'Feminino', 36, 'Adrielly', 9000),
	(5, 'Douglas, Adrielly', NULL, NULL, NULL, 'Barcelos App', 7000),
	(6, 'Mãe', 'Solteiro', 'Masculino', 23, 'Neideval', 8500),
	(7, 'Esposa', 'Casado', 'Masculino', 60, 'Kirk', 10000),
	(8, 'Filha', 'Solteira', 'Feminino', 63, 'Avelina', 3000),
	(9, 'Esposa', 'Casado', 'Masculino', 40, 'Douglas Barcelos', 4000);

INSERT INTO `documento` (`id_documento`, `cnpj`, `cpf`, `rg`) VALUES
	(1, NULL, '123.456.789-00', '5.478.954-9'),
	(2, NULL, '456.789.123-89', '9.876.543-2'),
	(3, NULL, '987.654.321-09', '1.471.753-5'),
	(5, NULL, '724.851.413.-90', '2.342.834-5'),
	(6, '08.281.035/0001-09', NULL, NULL),
	(7, NULL, '725.648.627-20', '9.162.341-8'),
	(8, NULL, '398.190.867-56', '2.582.563-7'),
	(9, NULL, '836.109.421-96', '7.654.987-7'),
	(10, NULL, '036.699.589-83', '8.077.615-2');

INSERT INTO `endereco` (`id_endereco`, `cep`, `logradouro`, `numero_casa`, `referencia`) VALUES
	(1, '87700-000', 'Rua Professor Pedro Real', '298', 'Casa 2'),
	(2, '87700-100', 'Rua John Kennedy', '652', 'Casa'),
	(3, '87705-250', 'Rua Herculano Rubin Toledo', '370', 'Próximo Antena Telepar'),
	(4, '87709-510', 'Rua Getúlio Vargas', '999', 'Próximo Prefeitura'),
	(5, '87710-100', 'Rua Souza Naves', '1000', 'Próximo Shopping'),
	(6, '87709-510', 'Rua Getúlio Vargas', '999', 'Próximo Prefeitura'),
	(7, '87720-900', 'Rua Paraíba', '145', 'Próximo Fórum'),
	(8, '87790-090', 'Rua Pernanbuco', '487', 'Próximo Correios'),
	(9, '87540-310', 'Rua Tókio', '387', 'Próximo Associação São Jorge'),
	(10, '87710-310', 'Rua Pio XII', '405', 'Casa 4 - Próximo Harmonia');

INSERT INTO `carteira` (`id_carteira`, `data_inicio_investimento`, `data_termino_investimento`, `nome`, `saldo_atual`) VALUES
	(1, '2022-10-01 00:00:00.000000', '2023-03-31 00:00:00.000000', 'Carteira Principal', 200000),
	(2, '2022-11-01 00:00:00.000000', '2023-01-31 00:00:00.000000', 'Carteira Vinculada', 15000),
	(3, '2022-11-10 00:00:00.000000', '2023-02-28 00:00:00.000000', 'Carteira Garantida', 53072.10536064609),
	(4, '2022-11-10 00:00:00.000000', '2023-05-31 00:00:00.000000', 'Carteira Simples', 500000),
	(5, '2022-11-10 00:00:00.000000', '2023-11-30 00:00:00.000000', 'Carteira Teste', 5000),
	(6, '2022-11-10 00:00:00.000000', '2023-05-31 00:00:00.000000', 'Carteira Direta Simples', 561652.7969177209),
	(7, '2022-11-07 00:00:00.000000', '2023-01-10 00:00:00.000000', 'Carteira Direta', 612662.8804576189),
	(8, '2022-11-07 00:00:00.000000', '2023-10-10 00:00:00.000000', 'Carteira Metal', 1406367.9949308748),
	(9, '2022-11-17 00:00:00.000000', '2023-09-14 00:00:00.000000', 'Carteira Especial', 2189482.5249791997),
	(10, '2022-11-17 00:00:00.000000', '2023-09-14 00:00:00.000000', 'Carteira Douglas', 10000000);

INSERT INTO `taxa` (`id_taxa`, `nome`, `porcentagem`) VALUES 
	(1, 'Poupança', 0.5);
	(2, 'Selic', 0.05);
	(3, 'CDB 109%', 11.12);
	(4, 'CDB 113%', 11.53);
	(5, 'CDB 120%', 12.24);
	(6, 'CDI', 1.02);
	(7, 'Taxa Referencial', 0.0095);
	(8, 'IPCA', 0.59);
	(9, 'IGPM', -0.97);
	(10, 'INPC', 0.47);
	(11, 'INCC', 0.09);
	(12, 'ICC', 21.19);
	(13, 'IPC-Br', 0.02);
	(14, 'IGP-DI', -1.22);

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
	(8, 7),
	(9, 8),
	(10, 9);

INSERT INTO `pessoa_carteira` (`id_carteira`, `id_pessoa`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(6, 5),
	(7, 6),
	(8, 7),
	(9, 8),
	(10, 9);

INSERT INTO `pessoa_taxa` (`id_taxa`, `id_pessoa`) VALUES
	(1, 3),
	(3, 5),
	(4, 6),
	(5, 7),
	(6, 8),
	(12, 9);