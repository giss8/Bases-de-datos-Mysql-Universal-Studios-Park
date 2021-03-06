-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema park
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `park` ;
SET GLOBAL time_zone = '-3:00';
-- -----------------------------------------------------
-- Schema park
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `park` ;
USE `park` ;

drop table parques;
drop table paquetes;
drop table cliente;
drop table compra_boletos;
drop table compra_estadia;
drop table compra_hoteles;
drop table evento;
drop table hoteles;
drop table nacionalidad;
drop table parques_boletos;
drop table tipo;
drop table complementos;
-- -----------------------------------------------------
-- Table `park`.`parques`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`parques` (
  `nombre_parque` VARCHAR(100) NOT NULL,
  `horario` VARCHAR(100) NOT NULL,
  `ubicacion` VARCHAR(100) NULL,
  `idparques` INT(10) NOT NULL,
  PRIMARY KEY (`idparques`),
  UNIQUE INDEX `idparques_UNIQUE` (`idparques` ASC))
ENGINE = InnoDB;

insert into parques values
	("Universal Studios Florida","9:00-17:00","6000 Universal Blvd, Orlando, FL 32819, Estados Unidos",123),
    ("Universal's Islands of Adventure","10:00-18:00","Universal Blvd, Orlando, FL 32819, Estados Unidos",124),
    ("Universal's Volcano Bay","9:00-17:00","6000 Universal Blvd, Orlando, FL 32819, Estados Unidos",125),
    ("Universal CityWalk","8:00-22:00","6000 Universal Blvd, Orlando, FL 32819, Estados Unidos",126);
select * from parques;
-- -----------------------------------------------------
-- Table `park`.`hoteles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`hoteles` (
  `nombre_hotel` VARCHAR(100) NOT NULL,
  `beneficios` VARCHAR(10000) NOT NULL,
  `idhotel` INT(10) NOT NULL,
  PRIMARY KEY (`idhotel`),
  UNIQUE INDEX `idhotel_UNIQUE` (`idhotel` ASC))
ENGINE = InnoDB;

insert into hoteles values
	("Universal's Cabana Bay Beach Resort","Encuentros de personajes,Piscina,Alquiler caba??as,Gimnasio,Sala de juegos",607),
    ("Loews Sapphire Falls Resort","Rum Dinner,Acceso a la playa,Piscina,Gimnasio,Servicio de bodas",608),
	("Universal???s Aventura Hotel","Restaurante,Gimnasio,Piscina,Zona azuatica para ni??os,Campamentos para ni??os",609),
    ("Loews Royal Pacific Resort","Piscina estilo laguna,Gimnasio,Ceremonia de antorchas,Servicio de bodas",610),
    ("Hard Rock Hotel","Conciertos,Escuchar musica bajo el agua,Museo del Rock,Gimnasio,Servicio de bodas",611),
    ("Loews Portofino Bay Hotel","Servicio de caba??a,Jacuzzi,Sala de juego,Tienda Italiana,Servicio de bodas,Spa",612),
    ("Universal???s Endless  Summer Resort???Surfside Inn and Suites","Piscina,Gimnasio,Sala de juegos",613),
    ("Universal???s Endless  Summer Resort-Dockside Inn and Suites","Piscina,Gimnasio,Sala de juegos",614);
select * from hoteles;
-- -----------------------------------------------------
-- Table `park`.`paquetes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`paquetes` (
  `nombre_paquete` VARCHAR(100) NOT NULL,
  `precio_dls_por_persona` DOUBLE NOT NULL,
  `idpaquete` INT(10) NOT NULL,
  `beneficios` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`idpaquete`),
  UNIQUE INDEX `idpaquete_UNIQUE` (`idpaquete` ASC))
ENGINE = InnoDB;

insert into paquetes values
	("Universal Express",69.99,450,"Incluye 1 parque,Evita filas"),
    ("Universal Express Unlimited",90.00,451,"Acceso ilimitado a todos los parques,Evita filas"),
    ("Volcano Bay Express",67.00,452,"Acceso ilimitado a 3 parques,Dura 14 dias"),
    ("Paquete vacacional exclusivo para The Wizarding World of Harry Potter",105.00,453,"Acceso a The Wizarding World of Harry Potter,Hospedaje 5 noches"),
    ("Paquete vacacional Premium",175.00,454,"Hospedaje 5 noches,Acceso a 2 parques"),
    ("Paquete Vacacional Exclusivo Star-Worthy de American Express",105.00,455,"Hospedaje 4 noches,Ahorro al comprar con American Express"),
    ("Pase anual 1",269.00,456,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques"),
    ("Pase anual 2",319.00,457,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento"),
    ("Pase anual 3",359.00,458,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento y comidas"),
    ("Pase anual 4",509.00,459,"Entrada a todos los parques,Descuento en estacionamiento,Entrada temprana al parque,Descuento en habitaciones y comida"),
    ("Pase anual 5",199.00,460,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Servicio de videojuegos"),
    ("Pase anual 6",519.00,461,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento"),
    ("Pase anual 7",389.00,462,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento y comidas"),
    ("Pase anual 8",340.00,463,"Entrada a todos los parques,Descuento en estacionamiento,Entrada temprana al parque,Descuento en habitaciones y comida"),
     ("Pase anual 9",558.00,464,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques"),
    ("Pase anual 10",799.00,465,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento"),
    ("Pase anual 11",880.00,466,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento y comidas"),
    ("Pase anual 12",956.00,467,"Entrada a todos los parques,Descuento en estacionamiento,Entrada temprana al parque,Descuento en habitaciones y comida"),
	("Pase anual 13",100.00,468,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques"),
    ("Pase vacacional 1",455.00,469,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento"),
    ("Pase vacacional 2",390.00,470,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento y comidas"),
    ("Pase vacacional 3",229.00,471,"Entrada a todos los parques,Descuento en estacionamiento,Entrada temprana al parque,Descuento en habitaciones y comida"),
    ("Pase vacacional 4",196.00,472,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques"),
    ("Pase vacacional 5",628.00,473,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento"),
    ("Pase vacacional 6",820.00,474,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento y comidas"),
    ("Pase vacacional 7",411.00,475,"Entrada a todos los parques,Descuento en estacionamiento,Entrada temprana al parque,Descuento en habitaciones y comida"),
    ("Pase vacacional 8",150.00,476,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques"),
    ("Pase vacacional 9",872.00,477,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento"),
    ("Pase vacacional 10",225.00,478,"Descuentos para Habitaciones del Hotel,Acceso a 2 parques,Descuento en estacionamiento y comidas"),
    ("Pase Happy Happy",370.00,479,"Entrada a todos los parques,Descuento en estacionamiento,Entrada temprana al parque,Descuento en habitaciones y comida");

-- -----------------------------------------------------
-- Table `park`.`nacionalidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`nacionalidad` (
  `idNacionalidad` INT(10) NOT NULL,
  `nombreNacionalidad` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idNacionalidad`))
ENGINE = InnoDB;
insert into nacionalidad values (400,"ALEMAN"),(401,"MEXICANO"),(402,"JAPONES"),(403,"RUSO"),(404,"ARABE"),(405,"BRASILE??O"),(406,"TURCO"),(407,"ARGENTINO"),
(800,"FILIPINO"),(801,"COREANO"),(802,"CUBANO"),(803,"CHINO"),(804,"PERUANO"),(805,"ESTADOUNIDENSE"),(806,"EGIPCIO"),(900,"HOLANDES"),(901,"ESPA??OL"),(902,"AUSTRALIANO"),(903,"NORUEGO"),
(100,"PARAGUAYO"),(101,"SUECO"),(102,"TAILANDES"),(103,"SUIZO"),(104,"BELGA"),(105,"BOLIVIANO"),(106,"CANADIENSE"),(107,"POLACO"),(108,"ITALIANO"),(109,"FRANCES"),(110,"CHILENO");
select * from nacionalidad;
select * from nacionalidad;
drop table nacionalidad;
drop table cliente;
show tables;
-- -----------------------------------------------------
-- Table `park`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`cliente` (
  `idCliente` INT(10) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `apellido` VARCHAR(100) NOT NULL,
  `idNacionalidad` INT(10) NOT NULL,
  PRIMARY KEY (`idCliente`),
  INDEX `idNacionalidad_idx` (`idNacionalidad` ASC),
  CONSTRAINT `idNacionalidad`
    FOREIGN KEY (`idNacionalidad`)
    REFERENCES `park`.`nacionalidad` (`idNacionalidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into cliente values (34350,"TERESA","RIVERS",100),(34351,"JESUS","JAMES",101),(34352,"TANIA","ZUCKERY",102),(34353,"LUCY","TINO",103),(34150,"TERRENCE","RIUS",104),
(34789,"JAMES","TRIS",105),(34765,"TANIO","GONZZI",106),(32789,"LUIS","JUISCE",107),(38360,"TOCUI","RIGS",108),(37398,"GUILLEN","GILI",109),(44560,"TEREMI","SALLAMI",110),(68950,"ROCIO","MORA",400),
(80050,"EZEQUIEL","JIMENEZ",401),(79050,"JOSELIT","TENIR",402),(78650,"ERIKA","GLEZ",403),(78965,"PIOCHO","TINSR",404),(84536,"GILY","TONS",405),(78654,"OJEIN","JOJO",406),(23456,"LIZA","RIZZONS",407),(78954,"KIKIS","JAMIU",800),
(12378,"YUYI","TRUIS",801),(45637,"ZEQUI","TENNIS",802),(70602,"TATIANA","TAKES",803),(76444,"AGIO","GISSU",804),(30306,"HUIN","TUIN",805),(38850,"JUINK","KIKI",806),(38760,"INGO","JAMES",900),(34450,"CAROLINA","JIJIS",901),
(35440,"KUKIS","RUUUS",902),(39980,"ZIXI","JUJI",903);

select c.nombre,n.nombreNacionalidad from cliente c,nacionalidad n where c.idNacionalidad=n.idNacionalidad and c.nombre like "JUNPYO";
-- -----------------------------------------------------
-- Table `park`.`compra_boletos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`compra_boletos` (
  `numBoletos` INT NOT NULL,
  `precioUnitario` DOUBLE NOT NULL,
  `idpaquete` INT(10),
  `idcompraBoleto` INT(10) NOT NULL,
  `idCliente` INT(10) NOT NULL,
  PRIMARY KEY (`idcompraBoleto`),
  UNIQUE INDEX `idcompra_UNIQUE` (`idcompraBoleto` ASC),
  INDEX `idpaquete _idx` (`idpaquete` ASC),
  INDEX `idCliente_idx` (`idCliente` ASC),
  CONSTRAINT `idpaquete `
    FOREIGN KEY (`idpaquete`)
    REFERENCES `park`.`paquetes` (`idpaquete`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idCliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `park`.`cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
show tables;
insert into compra_boletos values (1,109,450,100,12378),(2,109,451,101,23456),(2,109,452,102,30306),(1,109,453,103,32789),
(3,109,454,104,34150),(3,109,455,105,34350),(2,109,456,106,34351),(1,109,457,107,34352),
(2,109,458,108,34353),(5,109,459,109,34450),(5,109,460,110,34765),(6,109,461,111,34789),
(6,109,462,112,35440),(6,109,463,113,37398),(4,109,464,114,38360),(4,109,465,115,38760),
(4,109,466,116,38850),(4,109,467,117,39980),(1,109,468,118,44560),(1,109,469,119,45637),
(1,109,470,120,68950),(2,109,471,121,70602),(2,109,472,122,76444),(2,109,473,123,78650),
(2,109,474,124,78654),(2,109,475,125,78954),(2,109,476,126,78965),(2,109,477,127,79050),
(2,109,478,128,80050),(2,109,479,129,84536);


-- -----------------------------------------------------
-- Table `park`.`parques_boletos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`parques_boletos` (
  `idparques` INT(10) NOT NULL,
  `idcompraBoleto` INT(10) NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`idparques`, `idcompraBoleto`),
  CONSTRAINT `idparques`
    FOREIGN KEY (`idparques`)
    REFERENCES `park`.`parques` (`idparques`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idcompraBoleto`
    FOREIGN KEY (`idcompraBoleto`)
    REFERENCES `park`.`compra_boletos` (`idcompraBoleto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
insert into parques_boletos values (123,100,'2020/03/15'),(124,101,'2020/03/16'),(125,102,'2020/03/19'),(126,103,'2020/03/22'),
(123,104,'2020/03/15'),(124,105,'2020/03/25'),(125,106,'2020/03/05'),(126,107,'2020/03/05'),
(126,108,'2020/03/19'),(125,109,'2020/03/20'),(124,110,'2020/03/04'),(123,111,'2020/03/17'),
(126,112,'2020/03/13'),(125,113,'2020/03/11'),(124,114,'2020/03/12'),(123,115,'2020/03/10'),
(123,116,'2020/03/01'),(124,117,'2020/03/25'),(125,118,'2020/03/28'),(126,119,'2020/03/11'),
(123,120,'2020/03/15'),(124,121,'2020/03/12'),(125,122,'2020/03/10'),(126,123,'2020/03/19'),
(126,124,'2020/03/01'),(125,125,'2020/03/17'),(124,126,'2020/03/19'),(123,127,'2020/03/18'),
(123,128,'2020/03/21'),(124,129,'2020/03/14');
select * from parques_boletos;
-- -----------------------------------------------------
-- Table `park`.`compra_estadia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`compra_estadia` (
  `idCompra` INT(10) NOT NULL,
  `tiempoHospedaje` VARCHAR(45) NOT NULL,
  `precioUnitario` DOUBLE NOT NULL,
  `idpaquete` INT(10),
  `idCliente` INT(10) NOT NULL,
  PRIMARY KEY (`idCompra`),
  INDEX `idpaquete_idx` (`idpaquete` ASC),
  INDEX `idCliente_idx` (`idCliente` ASC),
  CONSTRAINT `clavepaquete`
    FOREIGN KEY (`idpaquete`)
    REFERENCES `park`.`paquetes` (`idpaquete`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idClientesito`
    FOREIGN KEY (`idCliente`)
    REFERENCES `park`.`cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
SET FOREIGN_KEY_CHECKS=0;
insert into compra_estadia values (330,"5 dias",129.99,450,12378),(331,"3 d??as",129.99,451,23456),(332,"5 dias",129.99,452,30306),(333,"5 dias",129.99,453,32789),
(334,"3 dias",129.99,454,34150),(335,"5 dias",129.99,455,34350),(336,"3 dias",129.99,456,34351),(337,"5 dias",129.99,457,34352),
(338,"3 dias",129.99,458,34353),(339,"3 dias",129.99,459,34450),(340,"3 dias",129.99,460,34765),(341,"5 dias",129.99,461,34789),
(342,"5 dias",129.99,462,34440),(343,"3 dias",129.99,463,37398),(344,"5 dias",129.99,464,38360),(345,"5 dias",129.99,465,38760),
(346,"3 dias",129.99,466,38850),(347,"3 dias",129.99,467,39980),(348,"5 dias",129.99,468,44560),(349,"3 dias",129.99,469,45637),
(350,"3 dias",129.99,470,68950),(351,"3 dias",129.99,471,70602),(352,"3 dias",129.99,472,76444),(353,"3 dias",129.99,473,78650),
(354,"3 dias",129.99,474,78654),(355,"5 dias",129.99,475,78954),(356,"3 dias",129.99,476,78965),(357,"5 dias",129.99,477,79050),
(358,"3 dias",129.99,478,80050),(359,"3 dias",129.99,479,84536);

-- -----------------------------------------------------
-- Table `park`.`compra_hoteles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`compra_hoteles` (
  `idhotel` INT(10) NOT NULL,
  `idCompra` INT(10) NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`idhotel`, `idCompra`),
  CONSTRAINT `idhotel`
    FOREIGN KEY (`idhotel`)
    REFERENCES `park`.`hoteles` (`idhotel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idCompra`
    FOREIGN KEY (`idCompra`)
    REFERENCES `park`.`compra_estadia` (`idCompra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
insert into compra_hoteles values (607,330,'2020/03/05'),(608,331,'2020/03/15'),(609,332,'2020/03/10'),(610,333,'2020/03/11'),
(611,334,'2020/03/05'),(612,335,'2020/03/12'),(613,336,'2020/03/09'),(614,337,'2020/03/15'),
(614,338,'2020/03/15'),(613,339,'2020/03/05'),(612,340,'2020/03/05'),(611,341,'2020/03/11'),
(610,342,'2020/03/18'),(609,343,'2020/03/08'),(608,344,'2020/03/16'),(607,345,'2020/03/07'),
(607,346,'2020/03/09'),(608,347,'2020/03/09'),(609,348,'2020/03/15'),(610,349,'2020/03/04'),
(611,350,'2020/03/08'),(612,351,'2020/03/14'),(613,352,'2020/03/11'),(614,353,'2020/03/07'),
(614,354,'2020/03/12'),(613,355,'2020/03/06'),(612,356,'2020/03/04'),(611,357,'2020/03/13'),
(610,358,'2020/03/05'),(609,359,'2020/03/05');

-- -----------------------------------------------------
-- Table `park`.`evento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`evento` (
  `idevento` INT(10) NOT NULL,
  `nombre_evento` VARCHAR(100) NOT NULL,
  `temporada` VARCHAR(45) NOT NULL,
  `idparques` INT(10) NOT NULL,
  PRIMARY KEY (`idevento`),
  INDEX `idparques_idx` (`idparques` ASC),
  CONSTRAINT `idparquesote`
    FOREIGN KEY (`idparques`)
    REFERENCES `park`.`parques` (`idparques`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into evento values (800,"Halloween Horrors Nights","OTO??O",123),(801,"Grinchmas","INVIERNO",124),(802,"Mardi Gras","PRIMAVERA",125),(803,"Fiestas Navide??as","INVIERNO",126),
(804," Rock the Universe","PRIMAVERA",123),(805,"Marvel Character Dinner","PRIMAVERA",124),(806,"Mardi Gras","PRIMAVERA",123),(807,"Cena Fiestas Navide??as","INVIERNO",126),
(808,"Las Navidades en The Wizarding World of Harry Potter","INVIERNO",123),(809,"The Grich and Friends Character Breakfast","INVIERNO",124),(810,"Dia de beneficios para los portadores de Pase Universal","PRIMAVERA",125),(811,"Harbor Nights","PRIMAVERA",126),
(812,"Cena Fiestas Navide??as","INVIERNO",123),(813,"The Grich and Friends Character Breakfast","INVIERNO",126),(814,"Cena Fiestas Navide??as","INVIERNO",125),(815,"Hard Rock Live Orlando","PRIMAVERA",126),
(816,"Globos y Carrozas de Macy??s","INVIERNO",126),(817,"Marvel Character Dinner","PRIMAVERA",125),(818,"Cena Fiestas Navide??as","INVIERNO",124),(819,"Harbor Nights","OTO??O",123),
(820,"Running Universal","PRIMAVERA",123),(821,"Wine Riffs","INVIERNO",124),(822,"Rum Dinner en Sapphire Falls","INVIERNO",125),(823,"Harbor Nights","INVIERNO",126),
(824,"Mardi Gras","PRIMAVERA",126),(825,"Bayou Boil Mardi Gras","VERANO",125),(826,"Harbor Nights","INVIERNO",124),(827,"The Grich and Friends Character Breakfast","INVIERNO",123),
(828,"The Grich and Friends Character Breakfast","INVIERNO",125),(829,"The Grich and Friends Character Breakfast","INVIERNO",124);
-- -----------------------------------------------------
-- Table `park`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`tipo` (
  `idTipo` INT(10) NOT NULL,
  `nombreTipo` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idTipo`))
ENGINE = InnoDB;

insert into tipo values (1100,"ATRACCION"),
(1102,"RESTAURANTE"),(1103,"ESPECTACULOS"),
(1104,"ENTRETENIMIENTO"),(1105,"Universal Orlando Store");

-- -----------------------------------------------------
-- Table `park`.`complementos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `park`.`complementos` (
  `idComplementos` INT(10) NOT NULL,
  `nombreComplemento` VARCHAR(100) NOT NULL,
  `horario_entrada_Complemento` TIME NOT NULL,
  `horario_salida_Complemento` TIME NOT NULL,
  `idparques` INT(10) NOT NULL,
  `idTipo` INT(10) NOT NULL,
  PRIMARY KEY (`idComplementos`),
  INDEX `idparques_idx` (`idparques` ASC),
  INDEX `idTipo_idx` (`idTipo` ASC),
  CONSTRAINT `IDparquesito`
    FOREIGN KEY (`idparques`)
    REFERENCES `park`.`parques` (`idparques`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idTipo`
    FOREIGN KEY (`idTipo`)
    REFERENCES `park`.`tipo` (`idTipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
insert into complementos values (2000,"Harry Potter and the Escape from Gringotts ",'13:30:00','14:30:00',123,1100),(2001,"Hagrid???s Magical Creatures Motorbike Adventure",'11:30:00','12:30:00',124,1100),
(2002,"Krakatau Aqua Coaster",'13:30:00','14:30:00',125,1100),(2003,"NO TIENE ATRACIONES",'00:00:00','00:00:00',126,1100),
(2004,"Harry Potter and the Escape from Gringotts ",'13:30:00','14:30:00',125,1100),(2005,"Hagrid???s Magical Creatures Motorbike Adventure",'11:30:00','12:30:00',123,1100),
(2006,"Krakatau Aqua Coaster",'13:30:00','14:30:00',124,1100),(2007,"NO TIENE ATRACIONES",'00:00:00','00:00:00',126,1100),
(2008,"Despicable Me Minion Mayhem",'13:30:00','14:30:00',123,1100),(2009,"Jurassic Park River Adventure",'11:30:00','12:30:00',124,1100),
(2010,"Waturi Beach",'13:30:00','14:30:00',125,1100),(2011,"NO TIENE ATRACIONES",'00:00:00','00:00:00',126,1100),
(2012,"Lombards Seafood Grille",'09:30:00','22:30:00',123,1102),(2013,"Mythos Restaurant",'09:30:00','22:30:00',124,1102),
(2014,"Dr. Seuss Character Zone",'10:00:00','12:30:00',125,1103),(2015,"Frog Choir Hogsmeade",'11:00:00','12:00:00',126,1103),
(2016,"Marvel Villains",'10:00:00','18:30:00',123,1104),(2017,"Oh Stories",'11:15:00','12:15:00',124,1104),
(2018,"Raptor Encounter",'10:00:00','12:30:00',125,1104),(2019,"Animal Actors on Location",'11:30:00','12:45:00',126,1104),
(2020,"Beat Builders",'10:00:00','12:30:00',123,1104),(2021,"The Blues Brothers",'11:00:00','12:00:00',124,1104),
(2022,"TIENDA NUMERO 1",'10:00:00','17:00:00',125,1104),(2023,"TIENDA NUMERO 2",'11:00:00','17:00:00',126,1105),
(2024,"TIENDA NUMERO 3",'10:00:00','17:00:00',123,1105),(2025,"TIENDA NUMERO 4",'11:00:00','17:00:00',124,1105),
(2026,"TIENDA NUMERO 5",'10:00:00','17:00:00',125,1105),(2027,"TIENDA NUMERO 6",'11:00:00','17:00:00',126,1105),
(2028,"TIENDA NUMERO 1",'10:00:00','17:00:00',123,1105),(2029,"TIENDA NUMERO 7",'11:00:00','17:00:00',124,1105);
show tables;
drop table complementos;
drop table tipo;
drop table evento;
drop table parques;