-- -----------------------------------------------------
-- Banco de Dados Navegamdb
-- -----------------------------------------------------
create database if not exists navegamdb;

use navegamdb;

-- -----------------------------------------------------
-- Tabela Pessoa
-- -----------------------------------------------------
create table if not exists pessoa (
	idPessoa int not null auto_increment,
    nomePessoa varchar(100) not null,
    cpfPessoa bigint not null,
    rgPessoa int not null,
    dataNascimentoPessoa date not null,
    sexoPessoa varchar(20) not null,
    email varchar(200) null,
    telefone_idTelefone int null,
    ruaEnderecoPessoa varchar(200) null,
    numeroEnderecoPessoa int null,
    bairroEnderecoPessoa varchar(100) null,
    cidadeEnderecoPessoa varchar(100) null,
    estadoEnderecoPessoa varchar(100) null,
    paisEnderecoPessoa varchar(100) null,
    cepEnderecoPessoa int null,
    primary key (idPessoa),
    unique (idPessoa asc),
    unique (cpfPessoa)
);
-- -----------------------------------------------------
-- Tabela Telefone
-- -----------------------------------------------------
create table if not exists telefone (
	idTelefone int not null auto_increment,
    numero int(20) null,
    pessoa_idPessoa int not null,
	primary key (idTelefone),
    unique (idTelefone asc),
    constraint fk_Telefone_Pessoa
		foreign key (pessoa_idPessoa) references pessoa (idPessoa)
		on update cascade
		on delete cascade
);

-- -----------------------------------------------------
-- Tabela Perfil
-- -----------------------------------------------------
create table if not exists perfil (
	idPerfil int not null auto_increment,
    nomePerfil varchar(45) not null,
    descricaoPerfil varchar(200) null,
    primary key (idPerfil),
    unique (idPerfil asc),
    unique (nomePerfil)
);

-- -----------------------------------------------------
-- Tabela Usuario
-- -----------------------------------------------------
create table if not exists usuario (
	idUsuario int not null auto_increment,
    nomeUsuario varchar(45) not null,
    senhaUsuario varchar(45) not null,
    dataCriacaoUsuario datetime not null,
    perfil_idPerfil int not null,
    pessoa_idPessoa int not null,
    primary key (idUsuario),
    unique (idUsuario asc),
    unique (nomeUsuario),
    unique (pessoa_idPessoa),
    constraint fk_Usuario_Pessoa
		foreign key (pessoa_idPessoa) references pessoa (idPessoa)
			on update cascade
			on delete cascade,
		foreign key (perfil_idPerfil) references perfil (idPerfil)
			on update cascade
			on delete cascade
);

-- -----------------------------------------------------
-- Tabela Cidade
-- -----------------------------------------------------
create table if not exists cidade (
	idCidade int not null auto_increment,
    nomeCidade varchar(50) not null,
    descricao varchar(200) null,
    primary key (idCidade),
    unique (idCidade asc)
);

-- -----------------------------------------------------
-- Tabela Cliente
-- -----------------------------------------------------
create table if not exists cliente (
	idCliente int not null auto_increment,
    tipoCliente varchar(45) not null,
    pessoa_idPessoa int not null,
    primary key (idCliente),
    unique (idCliente asc),
    unique (pessoa_idPessoa),
    constraint fk_Cliente_Pessoa
		foreign key (pessoa_idPessoa) references pessoa (idPessoa)
			on update cascade
			on delete cascade
);

-- -----------------------------------------------------
-- Tabela Vendedor
-- -----------------------------------------------------
create table if not exists vendedor (
	idVendedor int not null auto_increment,
    tipoVendedor varchar(45) not null,
    pessoa_idPessoa int not null,
    primary key (idVendedor),
    unique (idVendedor asc),
    unique (pessoa_idPessoa),
    constraint fk_Vendedor_Pessoa
		foreign key (pessoa_idPessoa) references pessoa (idPessoa)
			on update cascade
			on delete cascade
);

-- -----------------------------------------------------
-- Tabela Barco
-- -----------------------------------------------------
create table if not exists barco (	
	idBarco int not null auto_increment,
	nomeBarco varchar(50) not null,
	cnpjBarco int not null,
	lotacaoBarco int not null,
	proprietarioBarco varchar(45) not null,
	comandanteBarco varchar(45) not null,
	tipoBarco varchar(45) null,
	ruaEnderecoBarco varchar(45) NULL,
	numeroEnderecoBarco int not null,
	bairroEnderecoBarco varchar(45) null,
	cidadeEnderecoBarco varchar(45) null,
	estadoEnderecoBarco varchar(45) null,
	paisEnderecoBarco varchar(45) null,
	cepEnderecoBarco int null,
    primary key (idbarco),
    unique (idbarco asc),
    unique (nomeBarco),
    unique (cnpjBarco)
);



-- -----------------------------------------------------
-- Tabela Rota
-- -----------------------------------------------------
create table if not exists rota (
	idRota int not null auto_increment,
    descricaoRota varchar(200) null,
    cidadeOrigemRota int not null,
    cidadeDestinoROta int not null,
    primary key (idRota),
    unique (idRota asc),
    constraint fk_Rota_Cidade_Origem
		foreign key (cidadeOrigemRota) references cidade (idCidade)
			on update cascade
            on delete no action,
		foreign key (cidadeDestinoRota) references cidade (idCidade)
			on update cascade
            on delete no action
);

-- -----------------------------------------------------
-- Tabela Passagem
-- -----------------------------------------------------
create table if not exists passagem (
	idPassagem int not null,
    statusPassagem varchar(45) not null,
    barco_idBarco int not null,
    primary key (idPassagem),
    unique (idPassagem asc),
	constraint fk_passagem_barco
		foreign key (barco_idBarco) references barco (idBarco)
		on update cascade
        on delete cascade    
);

-- -----------------------------------------------------
-- Tabela Venda
-- -----------------------------------------------------
create table if not exists venda (
	idVenda int not null auto_increment,
	valorVenda float not null default 0.0,
    descontoVenda float not null,
    formaPagamentoVenda varchar(45) not null,
    dataHoraVenda date not null,
    qrcodeVenda longblob not null,
    vendedor_idVendedor int not null,
    cliente_idCliente int not null,
    passagem_idPassagem int not null,
    primary key (idVenda),
    unique (idVenda asc),
    unique (passagem_idPassagem),
    constraint fk_Venda_Vendedor
		foreign key (vendedor_idVendedor) references vendedor (idVendedor)
			on update no action
            on delete no action,
	constraint fk_Venda_Cliente
		foreign key (cliente_idCliente) references cliente (idCliente)
			on update no action
            on delete no action,
	constraint fk_Venda_Passagem
		foreign key (passagem_idPassagem) references passagem (idPassagem)
			on update no action
            on delete no action
);

-- -----------------------------------------------------
-- Tabela viagem
-- -----------------------------------------------------
create table if not exists viagem (
	idViagem int not null auto_increment,
    dataPartidaViagem date not null,
    dataChegadaViagem date not null,
    valorTransporteViagem float not null,
    valorAlimentacaoViagem float not null,
    dataInicioViagem date not null,
    dataTerminoViagem date not null,
    barco_idBarco int not null,
    rota_idRota int not null,
    primary key (idViagem),
	unique (idViagem asc),
    unique (barco_idBarco),
    unique (rota_idRota),
    constraint fk_Viagem_Barco
		foreign key (barco_idBarco) references barco (idBarco)
		on update no action
        on delete no action,
	constraint fk_Viagem_Rota
		foreign key (rota_idRota) references rota (idRota)
		on update no action
        on delete no action
);

-- -----------------------------------------------------
-- Table `mydb`.`Acomodacao`
-- -----------------------------------------------------
create table if not exists acomodacao (
	idAcomodacao int not null auto_increment,
    nomeAcomodacao varchar(45) not null,
    descricaoAcomodacao varchar(45) null,
    capacidadeAcomodacao int not null,
    quantidadeAcomodacao int not null,
    barco_idBarco int not null,
    primary key (idAcomodacao),
    unique (idAcomodacao asc),
    constraint fk_Acomodacao_Barco
		foreign key (barco_idBarco) references barco (idBarco)
        on update cascade
        on delete cascade    
)