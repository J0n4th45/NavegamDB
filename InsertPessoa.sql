use navegamdb;

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
    ("Mateus Albuquerque", "76821353210", "12345678", "1980-04-01", "masculino", "mateusalbuquerque@live.com", "Nossa Senhora de Fátima", "13", "Cidade de Deus", "Manaus", "Amazonas", "Brasil", "69088123")