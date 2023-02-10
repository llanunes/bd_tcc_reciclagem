# retorna a data no formato brasileiro
SELECT DATE_FORMAT (data_nascimento, '%d/%m/%y') AS data_nascimento FROM tbl_pessoa_fisica;

# retorna todos os dados de um usuario gerador pessoa física por id
SELECT tbl_usuario.telefone, tbl_usuario.email, tbl_usuario.senha,
tbl_pessoa_fisica.nome, tbl_pessoa_fisica.cpf, tbl_pessoa_fisica.data_nascimento,
tbl_endereco.logradouro,tbl_endereco.bairro,tbl_endereco.cidade, tbl_endereco.estado,tbl_endereco.cep, tbl_endereco.complemento,
tbl_usuario_endereco.id_usuario, tbl_usuario_endereco.id_endereco
FROM tbl_usuario
INNER JOIN tbl_pessoa_fisica 
	ON tbl_usuario.id = tbl_pessoa_fisica.id_usuario
INNER JOIN tbl_gerador
	ON tbl_usuario.id = tbl_gerador.id_usuario
INNER JOIN tbl_usuario_endereco
	ON tbl_usuario.id = tbl_usuario_endereco.id_usuario
INNER JOIN tbl_endereco
	ON tbl_endereco.id = tbl_usuario_endereco.id_endereco
WHERE tbl_gerador.id = 1;

# retorna todos os dados de um usuario gerador pessoa juridica por id
SELECT tbl_usuario.telefone, tbl_usuario.email, tbl_usuario.senha,
tbl_pessoa_juridica.nome_fantasia, tbl_pessoa_juridica.cnpj,
tbl_endereco.logradouro,tbl_endereco.bairro,tbl_endereco.cidade, tbl_endereco.estado,tbl_endereco.cep, tbl_endereco.complemento,
tbl_usuario_endereco.id_usuario, tbl_usuario_endereco.id_endereco
FROM tbl_usuario
INNER JOIN tbl_pessoa_juridica 
	ON tbl_usuario.id = tbl_pessoa_juridica.id_usuario
INNER JOIN tbl_gerador
	ON tbl_usuario.id = tbl_gerador.id_usuario
INNER JOIN tbl_usuario_endereco
	ON tbl_usuario.id = tbl_usuario_endereco.id_usuario
INNER JOIN tbl_endereco
	ON tbl_endereco.id = tbl_usuario_endereco.id_endereco
WHERE tbl_gerador.id = 1;

# retorna todos os dados de um usuario catador pessoa física por id
SELECT tbl_usuario.telefone, tbl_usuario.email, tbl_usuario.senha,
tbl_pessoa_fisica.nome, tbl_pessoa_fisica.cpf, tbl_pessoa_fisica.data_nascimento,
tbl_endereco.logradouro,tbl_endereco.bairro,tbl_endereco.cidade, tbl_endereco.estado,tbl_endereco.cep, tbl_endereco.complemento,
tbl_usuario_endereco.id_usuario, tbl_usuario_endereco.id_endereco
FROM tbl_usuario
INNER JOIN tbl_pessoa_fisica 
	ON tbl_usuario.id = tbl_pessoa_fisica.id_usuario
INNER JOIN tbl_catador
	ON tbl_usuario.id = tbl_catador.id_usuario
INNER JOIN tbl_usuario_endereco
	ON tbl_usuario.id = tbl_usuario_endereco.id_usuario
INNER JOIN tbl_endereco
	ON tbl_endereco.id = tbl_usuario_endereco.id_endereco
WHERE tbl_catador.id = 1;

# retorna todos os dados de um usuario catador pessoa juridica por id
SELECT tbl_usuario.telefone, tbl_usuario.email, tbl_usuario.senha,
tbl_pessoa_juridica.nome_fantasia, tbl_pessoa_juridica.cnpj,
tbl_endereco.logradouro,tbl_endereco.bairro,tbl_endereco.cidade, tbl_endereco.estado,tbl_endereco.cep, tbl_endereco.complemento,
tbl_usuario_endereco.id_usuario, tbl_usuario_endereco.id_endereco
FROM tbl_usuario
INNER JOIN tbl_pessoa_juridica 
	ON tbl_usuario.id = tbl_pessoa_juridica.id_usuario
INNER JOIN tbl_catador
	ON tbl_usuario.id = tbl_catador.id_usuario
INNER JOIN tbl_usuario_endereco
	ON tbl_usuario.id = tbl_usuario_endereco.id_usuario
INNER JOIN tbl_endereco
	ON tbl_endereco.id = tbl_usuario_endereco.id_endereco
WHERE tbl_catador.id = 1;

# retorna os dados de cadastro de todos os geradores pessoa física
SELECT tbl_gerador.id_usuario, tbl_pessoa_fisica.nome, tbl_pessoa_fisica.cpf, tbl_usuario.email, tbl_usuario.telefone, tbl_pessoa_fisica.data_nascimento, tbl_usuario.senha
FROM tbl_gerador
INNER JOIN tbl_usuario
	ON tbl_usuario.id = tbl_gerador.id_usuario
INNER JOIN tbl_pessoa_fisica
	ON tbl_usuario.id = tbl_pessoa_fisica.id_usuario;
    
# retorna os dados de cadastro de todos os geradores pessoa juridica
SELECT tbl_gerador.id_usuario, tbl_pessoa_juridica.nome_fantasia, tbl_pessoa_juridica.cnpj, tbl_usuario.email, tbl_usuario.telefone, tbl_usuario.senha
FROM tbl_gerador
INNER JOIN tbl_usuario
	ON tbl_usuario.id = tbl_gerador.id_usuario
INNER JOIN tbl_pessoa_juridica
	ON tbl_usuario.id = tbl_pessoa_juridica.id_usuario;
    
# retorna os dados de cadastro de todos os catadores pessoa fisica
SELECT tbl_catador.id_usuario, tbl_pessoa_fisica.nome, tbl_pessoa_fisica.cpf, tbl_usuario.email, tbl_usuario.telefone, tbl_pessoa_fisica.data_nascimento, tbl_usuario.senha
FROM tbl_catador
INNER JOIN tbl_usuario
	ON tbl_usuario.id = tbl_catador.id_usuario
INNER JOIN tbl_pessoa_fisica
	ON tbl_usuario.id = tbl_pessoa_fisica.id_usuario;
     
# retorna os dados de cadastro de todos os catadores pessoa juridica
SELECT tbl_catador.id_usuario, tbl_pessoa_juridica.nome_fantasia, tbl_pessoa_juridica.cnpj, tbl_usuario.email, tbl_usuario.telefone, tbl_usuario.senha
FROM tbl_catador
INNER JOIN tbl_usuario
	ON tbl_usuario.id = tbl_catador.id_usuario
INNER JOIN tbl_pessoa_juridica
	ON tbl_usuario.id = tbl_pessoa_juridica.id_usuario;    

# retorna todos os dados dos geradores    
SELECT tbl_usuario_endereco.id_usuario, tbl_usuario_endereco.id_endereco, 
tbl_usuario.telefone, tbl_usuario.email, tbl_usuario.senha,
tbl_pessoa_fisica.nome, tbl_pessoa_fisica.cpf, tbl_pessoa_fisica.data_nascimento,
tbl_endereco.logradouro,tbl_endereco.bairro,tbl_endereco.cidade, tbl_endereco.estado,tbl_endereco.cep, tbl_endereco.complemento,
tbl_pessoa_juridica.nome_fantasia, tbl_pessoa_juridica.cnpj, tbl_usuario.email, tbl_usuario.telefone, tbl_usuario.senha
FROM tbl_gerador
INNER JOIN tbl_usuario
	ON tbl_usuario.id = tbl_gerador.id_usuario
LEFT JOIN tbl_pessoa_fisica
		ON tbl_usuario.id = tbl_pessoa_fisica.id_usuario
LEFT JOIN tbl_pessoa_juridica
	ON tbl_usuario.id = tbl_pessoa_juridica.id_usuario   
INNER JOIN tbl_usuario_endereco
	ON tbl_usuario.id = tbl_usuario_endereco.id_usuario
INNER JOIN tbl_endereco
	ON tbl_endereco.id = tbl_usuario_endereco.id_endereco;
    
# retorna todos os dados dos catadores    
SELECT tbl_usuario_endereco.id_usuario, tbl_usuario_endereco.id_endereco, 
tbl_usuario.telefone, tbl_usuario.email, tbl_usuario.senha,
tbl_pessoa_fisica.nome, tbl_pessoa_fisica.cpf, tbl_pessoa_fisica.data_nascimento,
tbl_endereco.logradouro,tbl_endereco.bairro,tbl_endereco.cidade, tbl_endereco.estado,tbl_endereco.cep, tbl_endereco.complemento,
tbl_pessoa_juridica.nome_fantasia, tbl_pessoa_juridica.cnpj, tbl_usuario.email, tbl_usuario.telefone, tbl_usuario.senha
FROM tbl_catador
INNER JOIN tbl_usuario
	ON tbl_usuario.id = tbl_catador.id_usuario
LEFT JOIN tbl_pessoa_fisica
		ON tbl_usuario.id = tbl_pessoa_fisica.id_usuario
LEFT JOIN tbl_pessoa_juridica
	ON tbl_usuario.id = tbl_pessoa_juridica.id_usuario   
INNER JOIN tbl_usuario_endereco
	ON tbl_usuario.id = tbl_usuario_endereco.id_usuario
INNER JOIN tbl_endereco
	ON tbl_endereco.id = tbl_usuario_endereco.id_endereco;
    