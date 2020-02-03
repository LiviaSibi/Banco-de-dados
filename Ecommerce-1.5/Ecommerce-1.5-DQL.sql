SELECT ID_Pedido, NrPedido, DataPedido, StatusP, Clientes.Nome as 'ClienteNome'
FROM  Pedidos
INNER JOIN Clientes ON Pedidos.Cliente =  Clientes.ID_Cliente;