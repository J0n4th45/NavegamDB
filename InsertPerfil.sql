use navegamdb;

insert into perfil (
	nomePerfil,
    descricaoPerfil
)
value 
	("Administrador", "Acesso total ao banco de dados."),
    ("Vendedor Interno", "Inserts, Updates das vendas do próprio vendedor interno."),
    ("Vendedor Externo", "Inserts, Updates das vendas do próprio vendedor externo."),
    ("Dono", "Views das vendas de passagens do próprio barco."),
    ("Cliente", "Views das vendas de passagens do próprio cliente.");