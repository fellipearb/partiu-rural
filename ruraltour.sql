CREATE TABLE rt_usuarios(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	vcNome  VARCHAR(200),
	vcUsuario VARCHAR(100),
	vcSenha VARCHAR(200),
	blStatus BOOL
);

CREATE TABLE rt_clientes(
	id INT(100) AUTO_INCREMENT PRIMARY KEY,
	vcNome VARCHAR(100),
	vcEmail VARCHAR(100),
	vcSenha VARCHAR(200),
	vcCep VARCHAR(9),
	vcRua VARCHAR(100),
	idNumero INT(10),
	vcBairro VARCHAR(80),
	vcCidade VARCHAR(80),
	vcEstado VARCHAR(2),
	vcCpf VARCHAR(14),
	vcRg VARCHAR(12),
	blStatus BOOL
);

CREATE TABLE rt_anuciante(
	id INT(100) AUTO_INCREMENT PRIMARY KEY,
	vcNome VARCHAR(100),
	vcEmail VARCHAR(100),
	vcSenha VARCHAR(200),
	vcCep VARCHAR(9),
	vcRua VARCHAR(100),
	idNumero INT(10),
	vcBairro VARCHAR(80),
	vcCidade VARCHAR(80),
	vcEstado VARCHAR(2),
	vcCpf VARCHAR(14),
	vcRg VARCHAR(12),
	blStatus BOOL
);

CREATE TABLE rt_empresas(
	id INT(100) AUTO_INCREMENT PRIMARY KEY,
	idAnuciante INT(10),
	vcNomeEmpresa VARCHAR(100),
	vcCnpj VARCHAR(18),
	vcCep VARCHAR(9),
	vcRua VARCHAR(100),
	idNumero INT(10),
	vcBairro VARCHAR(80),
	vcCidade VARCHAR(80),
	vcEstado VARCHAR(2),
	blStatus BOOL
);

CREATE TABLE rt_departamento(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,	
	vcTitulo VARCHAR(40),
	txtDescriacao TEXT,
	txtSlug TEXT,
	blStatus BOOL
);

CREATE TABLE rt_categoria(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	idDepartamento INT(10),
	vcTitulo VARCHAR(40),
	txtDescriacao TEXT,
	txtSlug TEXT,
	blStatus BOOL
);

CREATE TABLE rt_subCategoria(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	idCategoria INT(10),
	vcTitulo VARCHAR(40),
	txtDescriacao TEXT,
	txtSlug TEXT,
	blStatus BOOL
);

CREATE TABLE rt_opcionais(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,	
	vcTitulo VARCHAR(40),
	txtDescriacao TEXT,
	blStatus BOOL
);

CREATE TABLE rt_tipoEmpreendimento(
	id INT(100) AUTO_INCREMENT PRIMARY KEY,
	vcTitulo VARCHAR(200),
	blStatus BOOL
);

CREATE TABLE rt_empreendimento(
	id INT(100) AUTO_INCREMENT PRIMARY KEY,
	idEmpresa INT(100),
	idTipo INT(10),
	vcTitulo VARCHAR(100),
	vcBreveDescricao VARCHAR(200),
	txtDescriacao TEXT,
	vcQtdQuartos INT(2),
	txtDescricaoQuarto TEXT,
	vcQtdBanheiro INT(2),
	txtDescricaoBanheiro TEXT,
	vcEstadiaMinima VARCHAR(20),
	vcValorPadrao VARCHAR(100),
	vcRua VARCHAR(100),
	idNumero INT(10),
	vcBairro VARCHAR(80),
	vcCidade VARCHAR(80),
	vcEstado VARCHAR(2),
	vcLatitude VARCHAR(200),
	vcLongitute VARCHAR(200),
	blStatus BOOL
);

CREATE TABLE rt_opcionais_empreendimento(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,	
	idEmpreendimento INT(10),
	idOpcional INT(10)
);

CREATE TABLE rt_fotosEmpreendimento(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	txtNomeArquivo TEXT,
	idOdenacao INT(10),
	blStatus BOOL
);

CREATE TABLE rt_planosEmpreendimento(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	idEmpreendimento INT(10),
	vcValor VARCHAR(100),
	dtPlanoDe DATETIME,
	dtPlanoAte DATETIME,
	blStatus BOOL
);

CREATE TABLE rt_avalicaoEmpreendimento(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	idEmpreendimento INT(10),
	idCliente INT(10),
	idQtd INT(2),
	vcTitulo VARCHAR(200),
	txtDescriacao TEXT
);

CREATE TABLE rt_contatos(
	id INT(200) AUTO_INCREMENT PRIMARY KEY,
	idEmpreendimento INT(10),
	idCliente INT(10),
	dtChegada DATETIME,
	dtSaida DATETIME,
	qtdAdultos VARCHAR(200),
	qtdCriancas VARCHAR(200)
);

CREATE TABLE rt_locacao(
	id INT(200) AUTO_INCREMENT PRIMARY KEY,
	idEmpreendimento INT(10),
	idCliente INT(10),
	idPlano INT(10),
	dtChegada DATETIME,
	dtSaida DATETIME,
	vcStatusPagamento VARCHAR(10),
	vcVoucher VARCHAR(100)
);