use navegamdb;

delimiter $$
create procedure pesquisaPessoaPerfil (
	in nome_pessoa varchar(45)
)
begin
	select pf.nomePerfil
	from pessoa ps
	inner join usuario us
		on us.pessoa_idPessoa = ps.idPessoa
	inner join perfil pf
		on us.perfil_idPerfil = pf.idPerfil
	where ps.nomePessoa = nome_pessoa;
end $$

create procedure pesquisaPessoaUsuario (
	in nome_pessoa varchar(45)
)
begin
	select ;
end $$
delimiter ;


