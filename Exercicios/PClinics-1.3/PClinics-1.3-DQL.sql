SELECT ID_Atendimento, DataConsulta, Descricao, Veterinarios.Nome as 'Veterinario', PETs.Nome as 'NomePET'
FROM  Atendimentos
INNER JOIN Veterinarios ON Atendimentos.Veterinario =  Veterinarios.ID_Vet
INNER JOIN PETs ON Atendimentos.PET = PETs.ID_PET;