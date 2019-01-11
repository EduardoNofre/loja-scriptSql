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
nome VARCHAR(30) NOT NULL,
ultimoNome VARCHAR(30) NOT NULL,
email VARCHAR(50),
senha VARCHAR(250),
foto VARCHAR(250),
dtregistro TIMESTAMP,
ultimoAcesso TIMESTAMP,
idperfil int (10),
idstatus int (10),
FOREIGN KEY (idperfil) REFERENCES perfil(idperfil),
FOREIGN KEY (idstatus) REFERENCES tipoStatus(idstatus)
)
--04
CREATE TABLE produtos
(
   idProduto        int(10) PRIMARY KEY auto_increment,
   nomeProd         varchar(250),
   descProduto      varchar(250),
   comentarioPord   varchar(250),
   imagemProd       varchar(250),
   linkVideo        varchar(250),
   whatsApp         varchar(250),
   email            varchar(250),
   comprarLink      varchar(250),
   idusuario        int(10),
   idstatus         int(10),
  FOREIGN KEY (idusuario) REFERENCES usuario(idUsuario),
  FOREIGN KEY (idstatus) REFERENCES tipoStatus(idstatus)
)

--05
CREATE TABLE configView
(
   idconfigView             int(10) PRIMARY KEY auto_increment,
   -- text head x footer
   headText                 varchar(250),
   footerText               varchar(250),
   -- color  head x footer
   headColor                varchar(250),
   footerColor              varchar(250),
   -- fonte  head x footer
   headFont                 varchar(250),
   footerFont               varchar(250),
   -- fonte size  head x footer
   headFontSize             varchar(250),
   footerFontSize           varchar(250),
   -- img log path
   imgLogo                  varchar(250),
   -- fonte
   registroAutoralText      varchar(250),
   -- coluna x linha
   gridColum                int(10),
   gridLinha                int(10),
   idusuario                int(10),
   idstatus                 int(10),
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
