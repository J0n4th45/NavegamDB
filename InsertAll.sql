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

insert into pessoa (
    nomePessoa,
    cpfPessoa,
    rgPessoa,
    dataNascimentoPessoa,
    sexoPessoa,
    email,
    ruaEnderecoPessoa,
    numeroEnderecoPessoa,
    bairroEnderecoPessoa,
    cidadeEnderecoPessoa,
    estadoEnderecoPessoa,
    paisEnderecoPessoa,
    cepEnderecoPessoa
) value 
	("João Henrique", "02938765901", "98702436", "1994-05-12", "masculino", "joaohenrique@hotmail.com", "Getulio Vargas", "234", "Centro", "Manaus", "Amazonas", "Brasil", "69088756"),
    ("Aline Moraes", "56738290192", "73890564", "1999-10-25'", "feminino", "alinenmoraes@gmail.com", "Itaúba", "144", "Jorge Teixeira", "Manaus", "Amazonas", "Brasil", "69088323"),
    ("Mateus Albuquerque", "76821353210", "12345678", "1980-04-01", "masculino", "mateusalbuquerque@live.com", "Nossa Senhora de Fátima", "13", "Cidade de Deus", "Manaus", "Amazonas", "Brasil", "69088123");

insert into usuario (
	nomeUsuario,
    senhaUsuario,
    dataCriacaoUsuario,
    perfil_idPerfil,
    pessoa_idPessoa
    
) value
	("joao", "123", "2010-03-19",2,1),
    ("aline", "123", "2011-03-19",5,2),
    ("mateus", "123", "2012-03-19",3,3);

insert into cidade (
	nomeCidade
) value
	("Alvarães"),
	("Amaturá"),
	("Anamã"),
	("Anori"),
	("Apuí"),
	("Atalaia do Norte"),
	("Autazes"),
	("Barcelos"),
	("Barreirinha"),
	("Benjamin Constant"),
	("Beruri"),
	("Boa Vista do Ramos"),
	("Boca do Acre"),
	("Borba"),
	("Caapiranga"),
	("Canutama"),
	("Carauari"),
	("Careiro"),
	("Careiro da Várzea"),
	("Coari"),
	("Codajás"),
	("Eirunepé"),
	("Envira"),
	("Fonte Boa"),
	("Guajará"),
	("Humaitá"),
	("Ipixuna"),
	("Iranduba"),
	("Itacoatiara"),
	("Itamarati"),
	("Itapiranga"),
	("Japurá"),
	("Juruá"),
	("Jutaí"),
	("Lábrea"),
	("Manacapuru"),
	("Manaquiri"),
	("Manaus"),
	("Manicoré"),
	("Maraã"),
	("Maués"),
	("Nhamundá"),
	("Nova Olinda do Norte"),
	("Novo Airão"),
	("Novo Aripuanã"),
	("Parintins"),
	("Pauini"),
	("Presidente Figueiredo"),
	("Rio Preto da Eva"),
	("Santa Isabel do Rio Negro"),
	("Santo Antônio do Içá"),
	("São Gabriel da Cachoeira"),
	("São Paulo de Olivença"),
	("São Sebastião do Uatumã"),
	("Silves"),
	("Tabatinga"),
	("Tapauá"),
	("Tefé"),
	("Tonantins"),
	("Uarini"),
	("Urucará"),
	("Urucurituba");