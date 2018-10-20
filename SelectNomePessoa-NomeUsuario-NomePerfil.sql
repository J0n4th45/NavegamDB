use navegamdb;

select nomePessoa, nomeUsuario, nomePerfil
from pessoa
left join usuario
	on pessoa_idPessoa = idPessoa
left join perfil
	on usuario.perfil_idPerfil = idPerfil;