--01
CREATE TABLE perfil (
idperfil INT(10) AUTO_INCREMENT PRIMARY KEY,
perfil VARCHAR(30),
dscPerfil VARCHAR(30)
)
--02
CREATE TABLE tipoStatus (
idstatus INT(6) AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
dscStatus VARCHAR(30) NOT NULL
)

--03
CREATE TABLE usuario (
idUsuario INT(6) AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
lastName VARCHAR(30) NOT NULL,
email VARCHAR(50),
password VARCHAR(50),
regdate TIMESTAMP,
lastacess TIMESTAMP,
idperfil int (10),
idstatus int (10),
FOREIGN KEY (idperfil) REFERENCES perfil(idperfil),
FOREIGN KEY (idstatus) REFERENCES tipoStatus(idstatus)
)
--04
CREATE TABLE produtos
(
   idProduto        int(10) PRIMARY KEY auto_increment,
   nameProd         varchar(250),
   descriptionProd  varchar(250),
   commentProd      varchar(250),
   imageProd        varchar(250),
   idusuario        int(10),
   idstatus         int(10),
  FOREIGN KEY (idusuario) REFERENCES usuario(idUsuario),
  FOREIGN KEY (idstatus) REFERENCES tipoStatus(idstatus)
)

-- status
insert into tipostatus (name,dscStatus)values('Ativo','Ativo');
insert into tipostatus (name,dscStatus)values('Excluido','Excluido');
insert into tipostatus (name,dscStatus)values('Editada','Editada');

-- usuario
insert into usuario (name,lastname,email,regdate,lastacess,password)values('eduardo','sa','nofrereis@gmail.com',now(),now(),'123senha')



-- perfil
insert into perfil (perfil,dscPerfil)values('Admin','Administrador');
insert into perfil (perfil,dscPerfil)values('Alteracoa','Alteração');
insert into perfil (perfil,dscPerfil)values('Inclusao','Inclusão');