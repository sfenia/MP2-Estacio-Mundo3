use loja
-- 4. a) Dados completos de pessoas físicas.

select * from Usuarios 

select
	Pessoa_Fisica.idPessoa_Fisica as id,
	Pessoa_Fisica.cpf,
	p.nome,
	p.logradouro,
	p.cidade,
	p.estado,
	p.telefone,
	p.email
from Pessoa_Fisica
INNER JOIN Pessoa as p on Pessoa_Fisica.idPessoa = p.id_Pessoa;

-- 4. b) Dados completos de pessoas jurídicas.


select
	Pessoa_Juridica.idPessoa_Juridica as id,
	Pessoa_Juridica.cnpj,
	p.nome,
	p.logradouro,
	p.cidade,
	p.estado,
	p.telefone,
	p.email
	from Pessoa_Juridica
INNER JOIN Pessoa as p on Pessoa_Juridica.idPessoa = p.id_Pessoa;

-- 4. c) Movimentações de entrada, com produto, fornecedor, quantidade, preço unitário e valor total.

select
	Produtos.idProdutos,
	Produtos.nome,
	Pessoa.nome as 'Fornecedor',
	Movimento.quantidade,
	Movimento.valorUnitario as 'PrecoUnitario',
	Movimento.quantidade * Movimento.valorUnitario as 'ValorTotal'
	from Movimento
INNER JOIN Produtos on idProduto = Produtos.idProdutos
INNER JOIN Pessoa on Movimento.idPessoa = Pessoa.id_Pessoa
where Movimento.tipo = 'E'

-- 4. d) Movimentações de saída, com produto, comprador, quantidade, preço unitário e valor total.

select 
	Produtos.idProdutos,
	Produtos.nome,
	Pessoa.nome,
	Movimento.idMovimento,
	Movimento.quantidade,
	Movimento.valorUnitario as 'PrecoUnitario',
	Movimento.quantidade * Movimento.valorUnitario as 'ValorTotal'
from
	Movimento
INNER JOIN Produtos on Movimento.idProduto = Produtos.idProdutos
INNER JOIN Pessoa on Movimento.idPessoa = Pessoa.id_Pessoa 
where
	Movimento.tipo = 'S'
 
-- 4. e) Valor total das entradas agrupadas por produto.

select
	Movimento.idProduto as id,
	Produtos.nome,
	sum (Movimento.valorUnitario) * sum (Movimento.quantidade) as 'ValorTotalporProduto'
from 
	Movimento 
INNER JOIN Produtos on Produtos.idProdutos = Movimento.idProduto

where
	Movimento.tipo = 'E'
group by
	Movimento.idProduto,
	Produtos.nome

-- 4. f) Valor total das saídas agrupadas por produto.

select
	Movimento.idProduto as id,
	Produtos.nome,
	sum(Movimento.valorUnitario) * sum (Movimento.quantidade) as 'ValorTotalPorProduto'
from
	Movimento
INNER JOIN Produtos on Produtos.idProdutos = Movimento.idProduto
where
	Movimento.tipo = 'S'
group by
	Movimento.idProduto,
	Produtos.nome
	
-- 4. g) Operadores que não efetuaram movimentações de entrada (compra).


select
	Usuarios.id_Usuario,
	Usuarios.login
from
	Usuarios where id_Usuario not in (
		select
			distinct Movimento.idUsuario	
		from 
			Movimento
		where
			Movimento.tipo = 'E'
	)

-- 4. h) Valor total de entrada, agrupado por operador.

select
	Usuarios.login,
	sum (Movimento.valorUnitario) * sum (Movimento.quantidade) as 'ValorTotalporProduto'
from 
	Movimento 
INNER JOIN Usuarios on Movimento.idUsuario = Usuarios.id_Usuario
where
	Movimento.tipo = 'E'
group by
	Movimento.idUsuario,
	Usuarios.login

-- 4. i) Valor total de saída, agrupado por operador.

select
	Usuarios.login,
	sum (Movimento.valorUnitario) * sum (Movimento.quantidade) as 'ValorTotalporProduto'
from 
	Movimento 
INNER JOIN Usuarios on Movimento.idUsuario = Usuarios.id_Usuario
where
	Movimento.tipo = 'S'
group by
	Movimento.idUsuario,
	Usuarios.login

-- 4. j) Valor médio de venda por produto, utilizando média ponderada.

select
	Movimento.idProduto,
	Produtos.nome,
	(sum (Movimento.valorUnitario) * sum (Movimento.quantidade)) / COUNT (Movimento.idMovimento) as 'ValorMedioDeVenda'
from
	Movimento
INNER JOIN Produtos on Movimento.idProduto = Produtos.idProdutos
group by
	Movimento.idProduto,
	Produtos.nome