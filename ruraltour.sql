CREATE TABLE pr_usuarios(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	vcNome  VARCHAR(200),
	vcUsuario VARCHAR(100),
	vcSenha VARCHAR(200),
	blStatus BOOL
);

CREATE TABLE pr_clientes(
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

CREATE TABLE pr_anuciante(
	id INT(100) AUTO_INCREMENT PRIMARY KEY,
	vcNome VARCHAR(100),
	vcRua VARCHAR(100),
	idNumero INT(10),
	vcComplemento VARCHAR(100),
	vcBairro VARCHAR(100),
	vcMunicipio VARCHAR(100),
	vcEstado VARCHAR(2),
	vcCep VARCHAR(20),
	vcCaixaPostal VARCHAR(100),
	vcCnpj VARCHAR(100),
	vcInscricaoEstadual VARCHAR(100),
	vcFoneComercial VARCHAR(20),
	vcCelular VARCHAR(20),
	vcEmail VARCHAR(200),
	vcSite VARCHAR(200),
	vcBlog VARCHAR(200),
	vcFacebook VARCHAR(100),
	vcInstagran VARCHAR(100),
	vcNomeResponsavel VARCHAR(200),
	blStatus BOOL
);

CREATE TABLE pr_departamento(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,	
	vcTitulo VARCHAR(40),
	txtDescriacao TEXT,
	txtSlug TEXT,
	blStatus BOOL
);

CREATE TABLE pr_categoria(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	idDepartamento INT(10),
	vcTitulo VARCHAR(40),
	txtDescriacao TEXT,
	txtSlug TEXT,
	blStatus BOOL
);

CREATE TABLE pr_subCategoria(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	idCategoria INT(10),
	vcTitulo VARCHAR(40),
	txtDescriacao TEXT,
	txtSlug TEXT,
	blStatus BOOL
);

CREATE TABLE pr_opcionais(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,	
	vcTitulo VARCHAR(40),
	txtDescriacao TEXT,
	blStatus BOOL
);

CREATE TABLE pr_tipoEmpreendimento(
	id INT(100) AUTO_INCREMENT PRIMARY KEY,
	vcTitulo VARCHAR(200),
	blStatus BOOL
);

CREATE TABLE pr_empreendimento(
	id INT(100) AUTO_INCREMENT PRIMARY KEY,
	idAnuciante INT(100),
	idTipo INT(10),
	vcTitulo VARCHAR(100),
	vcBreveDescricao VARCHAR(200),
	txtDescriacao TEXT,
	vcRua VARCHAR(100),
	idNumero INT(10),
	vcBairro VARCHAR(80),
	vcCidade VARCHAR(80),
	vcEstado VARCHAR(2),
	vcLatitude VARCHAR(200),
	vcLongitute VARCHAR(200),
	blStatus BOOL
);

CREATE TABLE pr_opcionais_empreendimento(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,	
	idEmpreendimento INT(10),
	idOpcional INT(10)
);

CREATE TABLE pr_fotosEmpreendimento(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	txtNomeArquivo TEXT,
	idOdenacao INT(10),
	blStatus BOOL
);

CREATE TABLE pr_quartosEmpreendimento(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	idEmpreendimento INT(10),
	vcEstadiaMinima VARCHAR(20),
	blStatus BOOL
);

CREATE TABLE pr_valoresQuartos(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	vcValor VARCHAR(100),
	vcTipoDiaria VARCHAR(100),
	dtDe DATETIME,
	dtAte DATETIME,
);

CREATE TABLE pr_avalicaoEmpreendimento(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
	idEmpreendimento INT(10),
	idCliente INT(10),
	idQtd INT(2),
	vcTitulo VARCHAR(200),
	txtDescriacao TEXT
);

CREATE TABLE pr_contatos(
	id INT(200) AUTO_INCREMENT PRIMARY KEY,
	idEmpreendimento INT(10),
	idCliente INT(10),
	dtChegada DATETIME,
	dtSaida DATETIME,
	qtdAdultos VARCHAR(200),
	qtdCriancas VARCHAR(200)
);

CREATE TABLE pr_locacao(
	id INT(200) AUTO_INCREMENT PRIMARY KEY,
	idEmpreendimento INT(10),
	idCliente INT(10),
	idPlano INT(10),
	dtChegada DATETIME,
	dtSaida DATETIME,
	vcStatusPagamento VARCHAR(10),
	vcVoucher VARCHAR(100)
);