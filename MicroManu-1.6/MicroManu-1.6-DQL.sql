SELECT ID_Pedido, NumeroEquipamento, Entrada, Saida, Clientes.Nome as 'Cliente', Itens.Descricao as 'Item',TipoConsertos.Descricao as 'Tipo'
FROM  Pedidos
INNER JOIN Clientes ON Pedidos.Cliente =  Clientes.ID_Cliente
INNER JOIN Itens ON Pedidos.Item = Itens.ID_Item
INNER JOIN TipoConsertos ON Pedidos.Tipo = TipoConsertos.ID_Tipo;