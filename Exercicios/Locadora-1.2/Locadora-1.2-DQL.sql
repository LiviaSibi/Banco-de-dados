SELECT ID_Aluguel, DataInicio, DataFim, Clientes.Nome as 'NomeCliente', Veiculos.Placa as 'PlacaVeiculo'
FROM  Alugueis
INNER JOIN Clientes ON Clientes.ID_Cliente =  Alugueis.Cliente
INNER JOIN Veiculos ON Alugueis.Veiculo = Veiculos.ID_Veiculo;