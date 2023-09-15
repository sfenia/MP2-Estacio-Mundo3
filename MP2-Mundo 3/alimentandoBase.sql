use loja 

insert
	into
	Usuarios(
	login,
	senha
	)
values
	(
	'op1',
	'op1'
	),
	(
	'op2',
	'op2'
	);

insert
	into
	Usuarios(
	login,
	senha
	)
values
	(
	'op3',
	'op3'
	),
	(
	'op4',
	'op4'
	);
select * FROM Usuarios;

insert
	into
	Produtos(
	nome,
	quantidade,
	precoVenda
	)
values
	(
	'banana',
	100,
	5.0
	),
	(
	'laranja',
	500,
	2.0
	),
	(
	'Manga',
	800,
	4.0
	);

insert
	into
	Produtos(
	nome,
	quantidade,
	precoVenda
	)
values
	(
	'uva',
	300,
	6.0
	),
	(
	'Maça',
	300,
	3.0
	);
select * from Produtos;

insert
	into
	Pessoa(
		nome,
		logradouro,
		cidade,
		estado,
		telefone,
		email
	)
values
	(
		'Teovanio',
		'Avenida Pedro Ludovico',
		'Aparecida de Goiania',
		'GO',
		'62990100099',
		'teosanmor@yahoo.com.br'
	);
select * from Pessoa;

select
	@@IDENTITY;



select
	*
from
	Pessoa;

select
	*
from
	Pessoa_Fisica;

select
	*
from
	Pessoa_Fisica
inner join Pessoa on
	Pessoa.id_Pessoa = Pessoa_Fisica.idPessoa;

select
	Pessoa_Fisica.cpf,
	Pessoa.nome
from
	Pessoa_Fisica
inner join Pessoa on
	Pessoa.id_Pessoa = Pessoa_Fisica.idPessoa;

insert
	into
	Pessoa_Fisica (idPessoa_Fisica,
	cpf,
	idPessoa)
values
	(NEXT VALUE FOR CodigoPessoa,
'00011122299',
1);

Select * from Pessoa_Fisica;

insert
	into
	Pessoa(
		nome,
		logradouro,
		cidade,
		estado,
		telefone,
		email
	)
values
	(
		'Teovanio LTDA',
		'Avenida das flores',
		'Aparecida de Goiania',
		'GO',
		'62999551155',
		'teoltda@teovanio.com.br'
	);
Select * from Pessoa;

insert
	into
	Pessoa_Juridica(idPessoa_Juridica,
	cnpj,
	idPessoa)
values
	(NEXT VALUE FOR CodigoPessoa,
'00111222000199',
2);

Select * from Pessoa_Juridica;

select
	*
from
	Pessoa_Juridica
inner join Pessoa on
	Pessoa.id_Pessoa = Pessoa_Juridica.idPessoa;

insert
	into
	movimento(
		idUsuario,
		idPessoa,
		idProduto,
		quantidade,
		tipo,
		valorUnitario
	)
values
	(
	1,
	1,
	1,
	10,
	'E',
	3.0
	),
	(
	1,
	1,
	2,
	10,
	'E',
	1.0
	),
	(
	1,
	1,
	3,
	10,
	'E',
	3.0
	);

insert
	into
	movimento(
		idUsuario,
		idPessoa,
		idProduto,
		quantidade,
		tipo,
		valorUnitario
	)
values
	(
	2,
	2,
	1,
	3,
	'S',
	5.0
	),
	(
	2,
	2,
	2,
	1,
	'S',
	2.0
	),
	(
	2,
	2,
	3,
	8,
	'S',
	4.0
	);

insert
	into
	movimento(
		idUsuario,
		idPessoa,
		idProduto,
		quantidade,
		tipo,
		valorUnitario
	)
values
	(
	3,
	2,
	1,
	5,
	'E',
	4.75
	),
	(
	3,
	2,
	2,
	7,
	'E',
	1.32
	),
	(
	3,
	1,
	1,
	9,
	'S',
	5.0
	),
	(
	3,
	1,
	2,
	3,
	'S',
	2.0
	),
	(
	4,
	2,
	1,
	8,
	'S',
	5
	),
	(
	4,
	2,
	2,
	6,
	'S',
	2
	);

select
	*
from
	Movimento
order by
	tipo;

select
	*
from
	Pessoa;