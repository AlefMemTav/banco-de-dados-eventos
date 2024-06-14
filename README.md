# Modelo Entidade-Relacionamento (ME-R)

## Entidades

EVENTO

TIPO_EVENTO

LUGAR

SERVICO

TIPO_SERVICO

CATALOGO

ITEM

TIPO_ITEM

PEDIDO

ITEM_PEDIDO

FUNCIONARIO

FUNCIONARIO_FIXO

TIPO_FUNCIONARIO

DIARIA

CLIENTE

CONTRATO

ENDERECO

FORNECEDOR

## Atributos

EVENTO(idEvento, nome, data, horaInicio, horaFim, idTipoEvento, idLugar)

TIPO_EVENTO(idTipoEvento, nome, preco)

LUGAR(idLugar, nome, idEndereco)

SERVICO(idServico, idTipoServico)

TIPO_SERVICO(idTipoServico, nome, preco)

CATALOGO(idCatalago, idLugar)

ITEM(idItem, nome, preco, idTipoItem, idCatalogo)

TIPO_ITEM(idTipoItem, nome, quantidadePermitida)

PEDIDO(idPedido, idServico, idContrato)

ITEM_PEDIDO(idItemPedido, quantidade, idItem, idPedido)

FUNCIONARIO(idFuncionario, nome, cpf, dataNascimento, classificacao, idTipoFuncionario)

FUNCIONARIO_FIXO(idFuncionarioFixo, numeroCateiraTrabalho, numeroCertidao, grauEscolaridade, numeroTituloEleitor, idFuncionario)

TIPO_FUNCIONARIO(idTipoFuncionario, nome, salario)

DIARIA(idDiaria, idFuncionario, idEvento)

CLIENTE(idCliente, nome, telefone)

CONTRATO(idContrato, quantidadePessoas, idEvento, idCliente)

ENDERECO(idEndereco, logradouro, numero, nomeCidade)

FORNECEDOR(idFornecedor, nome, idEndereco, idLugar)

## Relacionamentos

### EVENTO - possui - TIPO_EVENTO
- Um EVENTO possui apenas um TIPO_EVENTO, enquanto um TIPO_EVENTO pode ser de um ou muitos EVENTO.
- **Cardinalidade:** N:1

### EVENTO - acontece - LUGAR
- Um EVENTO acontece em apenas um LUGAR, enquanto um LUGAR pode ter nenhum ou vários EVENTO.
- **Cardinalidade:** N:1

### LUGAR - pertence - ENDERECO
- Um LUGAR pertence a um ENDERECO, enquanto um ENDERECO possui nenhum ou vários LUGAR.
- **Cardinalidade:** N:1

### SERVICO - possui - TIPO_SERVICO
- Um SERVICO possui um TIPO_SERVICO, enquanto um TIPO_SERVICO pode ser de muitos SERVICO.
- **Cardinalidade:** N:1

### CATALAGO - tem - ITEM
- Um CATALAGO tem um ou vários ITEM, enquanto um ITEM pertence a apenas a um CATALOGO.
- **Cardinalidade:** 1:N

### CATALOGO - pertence - LUGAR
- Um CATALAGO pertence a um LUGAR, e um LUGAR possui apenas um CATALAGO.
- **Cardinalidade:** 1:1

### ITEM - possui - TIPO_ITEM
- Um ITEM possui apenas um TIPO_ITEM, enquanto um TIPO_ITEM pode ser de muitos ITEM.
- **Cardinalidade:** N:1

### ITEM - pertence - ITEM_PEDIDO
- Um ITEM pertence a nenhum ou vários ITEM_PEDIDO, enquanto um ITEM_PEDIDO pode ter um ITEM.
- **Cardinalidade:** 1:N

### PEDIDO - pertence - CLIENTE
- Um PEDIDO pertence a um CLIENTE, enquanto um CLIENTE pode ter um ou vários PEDIDO.
- **Cardinalidade:** N:1

### PEDIDO - tem - SERVICO
- Um PEDIDO tem um SERVICO, e um SERVICO pertence a nenhum ou vários PEDIDO.
- **Cardinalidade:** N:1

### PEDIDO - tem - ITEM_PEDIDO
- Um PEDIDO tem um ou mais ITEM_PEDIDO, enquanto um ITEM_PEDIDO pertence a apenas um PEDIDO.
- **Cardinalidade:** N:1

### PEDIDO - pertence - CONTRATO
- Um PEDIDO pertence a um CONTRATO, e um CONTRATO pode ter um ou mais PEDIDO.
- **Cardinalidade:** N:1

### FUNCIONARIO - possui - TIPO_FUNCIONARIO
- Um FUNCIONARIO possui apenas um TIPO_FUNCIONARIO, enquanto um TIPO_FUNCIONARIO pode ser de muitos FUNCIONARIO.
- **Cardinalidade:** N:1

### FUNCIONARIO_FIXO - trabalha - FUNCIONARIO
- Um FUNCIONARIO_FIXO trabalha como um FUNCIONARIO, e um FUNCIONARIO pode trabalhar como nenhum ou um FUNCIONARIO_FIXO.
- **Cardinalidade:** 1:1

### FUNCIONARIO - faz - DIARIA
- Um FUNCIONARIO faz uma ou mais DIARIA, e uma DIARIA pertence a um FUNCIONARIO.
- **Cardinalidade:** 1:N

### DIARIA - ocorre - EVENTO
- Uma DIARIA ocorre em um EVENTO, enquanto um EVENTO pode ter uma ou mais DIARIA.
- **Cardinalidade:** N:1

### CONTRATO - pertence - CLIENTE
- Um CONTRATO pertence a um CLIENTE, e um CLIENTE tem um ou mais CONTRATO.
- **Cardinalidade:** N:1

### CONTRATO - possui - EVENTO
- Muitos CONTRATO possuem um EVENTO, e um EVENTO pertence a somente a um CONTRATO.
- **Cardinalidade:** N:1

### FORNECEDOR - atende - LUGAR
- Um FORNECEDOR atende um LUGAR, enquanto um LUGAR é atendido por nenhum ou vários FORNECEDOR.
- **Cardinalidade:** N:1

### FORNECEDOR - tem - ENDERECO
- Um FORNECEDOR tem um ENDERECO, enquanto um ENDERECO possui nenhum ou vários FORNECEDOR.
- **Cardinalidade:** N:1

## Diagrama Entidade-Relacionamento (DE-R)
<img src="https://raw.githubusercontent.com/AlefMemTav/banco-de-dados-eventos/master/TF_scripts_2_PedroGarcia/DERTrabalhoFinalModificado.png?token=GHSAT0AAAAAACTALC773U5DLZ6575QVRFGSZTLTBSA">


## Diagrama Lógico de Dados (DLD)
<img src="https://raw.githubusercontent.com/AlefMemTav/banco-de-dados-eventos/master/TF_scripts_2_PedroGarcia/DLDTrabalhoFinalModificado.png?token=GHSAT0AAAAAACTALC77TJ43K7MKC3YPQF2EZTLTDKQ">
