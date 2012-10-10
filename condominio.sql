/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : condominio

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2012-10-10 15:50:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `apartamento`
-- ----------------------------
DROP TABLE IF EXISTS `apartamento`;
CREATE TABLE `apartamento` (
  `id_apartamento` int(4) NOT NULL AUTO_INCREMENT,
  `nombre_apt` varchar(50) NOT NULL,
  `tipo_apt` int(2) NOT NULL,
  `alicuota` float(6,4) NOT NULL DEFAULT '0.0000',
  `id_piso` int(4) unsigned DEFAULT NULL,
  `estatus` varchar(1) NOT NULL DEFAULT 'S',
  PRIMARY KEY (`id_apartamento`),
  UNIQUE KEY `id_apartamento` (`id_apartamento`),
  KEY `relationship27` (`id_piso`),
  KEY `relationship29` (`tipo_apt`),
  CONSTRAINT `relationship27` FOREIGN KEY (`id_piso`) REFERENCES `piso` (`id_piso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `relationship29` FOREIGN KEY (`tipo_apt`) REFERENCES `tipo_apartamento` (`tipo_apt`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of apartamento
-- ----------------------------
INSERT INTO `apartamento` VALUES ('1', 'A', '1', '0.0000', '1', 'S');
INSERT INTO `apartamento` VALUES ('2', 'B', '1', '0.0000', '1', 'S');
INSERT INTO `apartamento` VALUES ('3', 'C', '1', '0.0000', '1', 'S');
INSERT INTO `apartamento` VALUES ('4', 'A', '1', '0.0000', '2', 'S');
INSERT INTO `apartamento` VALUES ('5', 'B', '1', '0.0000', '2', 'S');
INSERT INTO `apartamento` VALUES ('6', 'C', '1', '0.0000', '2', 'S');
INSERT INTO `apartamento` VALUES ('7', 'A', '1', '0.0000', '3', 'S');
INSERT INTO `apartamento` VALUES ('8', 'B', '1', '0.0000', '3', 'S');
INSERT INTO `apartamento` VALUES ('9', 'C', '1', '0.0000', '3', 'S');
INSERT INTO `apartamento` VALUES ('10', 'A', '1', '0.0000', '4', 'S');
INSERT INTO `apartamento` VALUES ('11', 'B', '1', '0.0000', '4', 'S');
INSERT INTO `apartamento` VALUES ('12', 'C', '1', '0.0000', '4', 'S');
INSERT INTO `apartamento` VALUES ('13', 'PH', '1', '0.0000', '5', 'S');
INSERT INTO `apartamento` VALUES ('14', 'A', '1', '0.0000', '6', 'S');
INSERT INTO `apartamento` VALUES ('15', 'B', '1', '0.0000', '6', 'S');
INSERT INTO `apartamento` VALUES ('16', 'C', '1', '0.0000', '6', 'S');
INSERT INTO `apartamento` VALUES ('17', 'A', '1', '0.0000', '7', 'S');
INSERT INTO `apartamento` VALUES ('18', 'B', '1', '0.0000', '7', 'S');
INSERT INTO `apartamento` VALUES ('19', 'C', '1', '0.0000', '7', 'S');
INSERT INTO `apartamento` VALUES ('20', 'A', '1', '0.0000', '8', 'S');
INSERT INTO `apartamento` VALUES ('21', 'B', '1', '0.0000', '8', 'S');
INSERT INTO `apartamento` VALUES ('22', 'C', '1', '0.0000', '8', 'S');
INSERT INTO `apartamento` VALUES ('23', 'A', '1', '0.0000', '9', 'S');
INSERT INTO `apartamento` VALUES ('24', 'B', '1', '0.0000', '9', 'S');
INSERT INTO `apartamento` VALUES ('25', 'C', '1', '0.0000', '9', 'S');
INSERT INTO `apartamento` VALUES ('26', 'A', '1', '0.0000', '11', 'S');
INSERT INTO `apartamento` VALUES ('27', 'B', '1', '0.0000', '11', 'S');
INSERT INTO `apartamento` VALUES ('28', 'C', '1', '0.0000', '11', 'S');
INSERT INTO `apartamento` VALUES ('29', 'A', '1', '0.0000', '12', 'S');
INSERT INTO `apartamento` VALUES ('30', 'B', '1', '0.0000', '12', 'S');
INSERT INTO `apartamento` VALUES ('31', 'C', '1', '0.0000', '12', 'S');
INSERT INTO `apartamento` VALUES ('32', 'A', '1', '0.0000', '13', 'S');
INSERT INTO `apartamento` VALUES ('33', 'B', '1', '0.0000', '13', 'S');
INSERT INTO `apartamento` VALUES ('34', 'C', '1', '0.0000', '13', 'S');
INSERT INTO `apartamento` VALUES ('35', 'A', '1', '0.0000', '14', 'S');
INSERT INTO `apartamento` VALUES ('36', 'B', '1', '0.0000', '14', 'S');
INSERT INTO `apartamento` VALUES ('37', 'C', '1', '0.0000', '14', 'S');
INSERT INTO `apartamento` VALUES ('38', 'PH', '1', '0.0000', '15', 'S');
INSERT INTO `apartamento` VALUES ('39', 'A', '1', '0.0000', '16', 'S');
INSERT INTO `apartamento` VALUES ('40', 'B', '1', '0.0000', '16', 'S');
INSERT INTO `apartamento` VALUES ('41', 'C', '1', '0.0000', '16', 'S');
INSERT INTO `apartamento` VALUES ('42', 'A', '1', '0.0000', '17', 'S');
INSERT INTO `apartamento` VALUES ('43', 'B', '1', '0.0000', '17', 'S');
INSERT INTO `apartamento` VALUES ('44', 'C', '1', '0.0000', '17', 'S');
INSERT INTO `apartamento` VALUES ('45', 'A', '1', '0.0000', '18', 'S');
INSERT INTO `apartamento` VALUES ('46', 'B', '1', '0.0000', '18', 'S');
INSERT INTO `apartamento` VALUES ('47', 'C', '1', '0.0000', '18', 'S');
INSERT INTO `apartamento` VALUES ('48', 'A', '1', '0.0000', '19', 'S');
INSERT INTO `apartamento` VALUES ('49', 'B', '1', '0.0000', '19', 'S');
INSERT INTO `apartamento` VALUES ('50', 'C', '1', '0.0000', '19', 'S');
INSERT INTO `apartamento` VALUES ('51', 'PH', '1', '0.0000', '20', 'S');
INSERT INTO `apartamento` VALUES ('52', 'A', '1', '0.0000', '21', 'S');
INSERT INTO `apartamento` VALUES ('53', 'B', '1', '0.0000', '21', 'S');
INSERT INTO `apartamento` VALUES ('54', 'C', '1', '0.0000', '21', 'S');
INSERT INTO `apartamento` VALUES ('55', 'A', '1', '0.0000', '22', 'S');
INSERT INTO `apartamento` VALUES ('56', 'B', '1', '0.0000', '22', 'S');
INSERT INTO `apartamento` VALUES ('57', 'C', '1', '0.0000', '22', 'S');
INSERT INTO `apartamento` VALUES ('58', 'A', '1', '0.0000', '23', 'S');
INSERT INTO `apartamento` VALUES ('59', 'B', '1', '0.0000', '23', 'S');
INSERT INTO `apartamento` VALUES ('60', 'C', '1', '0.0000', '23', 'S');
INSERT INTO `apartamento` VALUES ('61', 'A', '1', '0.0000', '24', 'S');
INSERT INTO `apartamento` VALUES ('62', 'B', '1', '0.0000', '24', 'S');
INSERT INTO `apartamento` VALUES ('63', 'C', '1', '0.0000', '24', 'S');
INSERT INTO `apartamento` VALUES ('64', 'A', '1', '0.0000', '26', 'S');
INSERT INTO `apartamento` VALUES ('65', 'B', '1', '0.0000', '26', 'S');
INSERT INTO `apartamento` VALUES ('66', 'C', '1', '0.0000', '26', 'S');
INSERT INTO `apartamento` VALUES ('67', 'A', '1', '0.0000', '27', 'S');
INSERT INTO `apartamento` VALUES ('68', 'B', '1', '0.0000', '27', 'S');
INSERT INTO `apartamento` VALUES ('69', 'C', '1', '0.0000', '27', 'S');
INSERT INTO `apartamento` VALUES ('70', 'A', '1', '0.0000', '28', 'S');
INSERT INTO `apartamento` VALUES ('71', 'B', '1', '0.0000', '28', 'S');
INSERT INTO `apartamento` VALUES ('72', 'C', '1', '0.0000', '28', 'S');
INSERT INTO `apartamento` VALUES ('73', 'A', '1', '0.0000', '29', 'S');
INSERT INTO `apartamento` VALUES ('74', 'B', '1', '0.0000', '29', 'S');
INSERT INTO `apartamento` VALUES ('75', 'C', '1', '0.0000', '29', 'S');
INSERT INTO `apartamento` VALUES ('76', 'A', '1', '0.0000', '31', 'S');
INSERT INTO `apartamento` VALUES ('77', 'B', '1', '0.0000', '31', 'S');
INSERT INTO `apartamento` VALUES ('78', 'C', '1', '0.0000', '31', 'S');
INSERT INTO `apartamento` VALUES ('79', 'A', '1', '0.0000', '32', 'S');
INSERT INTO `apartamento` VALUES ('80', 'B', '1', '0.0000', '32', 'S');
INSERT INTO `apartamento` VALUES ('81', 'C', '1', '0.0000', '32', 'S');
INSERT INTO `apartamento` VALUES ('82', 'A', '1', '0.0000', '33', 'S');
INSERT INTO `apartamento` VALUES ('83', 'B', '1', '0.0000', '33', 'S');
INSERT INTO `apartamento` VALUES ('84', 'C', '1', '0.0000', '33', 'S');
INSERT INTO `apartamento` VALUES ('85', 'A', '1', '0.0000', '34', 'S');
INSERT INTO `apartamento` VALUES ('86', 'B', '1', '0.0000', '34', 'S');
INSERT INTO `apartamento` VALUES ('87', 'C', '1', '0.0000', '34', 'S');
INSERT INTO `apartamento` VALUES ('88', 'A', '1', '0.0000', '36', 'S');
INSERT INTO `apartamento` VALUES ('89', 'B', '1', '0.0000', '36', 'S');
INSERT INTO `apartamento` VALUES ('90', 'C', '1', '0.0000', '36', 'S');
INSERT INTO `apartamento` VALUES ('91', 'A', '1', '0.0000', '37', 'S');
INSERT INTO `apartamento` VALUES ('92', 'B', '1', '0.0000', '37', 'S');
INSERT INTO `apartamento` VALUES ('93', 'C', '1', '0.0000', '37', 'S');
INSERT INTO `apartamento` VALUES ('94', 'A', '1', '0.0000', '38', 'S');
INSERT INTO `apartamento` VALUES ('95', 'B', '1', '0.0000', '38', 'S');
INSERT INTO `apartamento` VALUES ('96', 'C', '1', '0.0000', '38', 'S');
INSERT INTO `apartamento` VALUES ('97', 'A', '1', '0.0000', '39', 'S');
INSERT INTO `apartamento` VALUES ('98', 'B', '1', '0.0000', '39', 'S');
INSERT INTO `apartamento` VALUES ('99', 'C', '1', '0.0000', '39', 'S');
INSERT INTO `apartamento` VALUES ('100', 'A', '1', '0.0000', '41', 'S');
INSERT INTO `apartamento` VALUES ('101', 'B', '1', '0.0000', '41', 'S');
INSERT INTO `apartamento` VALUES ('102', 'C', '1', '0.0000', '41', 'S');
INSERT INTO `apartamento` VALUES ('103', 'A', '1', '0.0000', '42', 'S');
INSERT INTO `apartamento` VALUES ('104', 'B', '1', '0.0000', '42', 'S');
INSERT INTO `apartamento` VALUES ('105', 'C', '1', '0.0000', '42', 'S');
INSERT INTO `apartamento` VALUES ('106', 'A', '1', '0.0000', '43', 'S');
INSERT INTO `apartamento` VALUES ('107', 'B', '1', '0.0000', '43', 'S');
INSERT INTO `apartamento` VALUES ('108', 'C', '1', '0.0000', '43', 'S');
INSERT INTO `apartamento` VALUES ('109', 'A', '1', '0.0000', '44', 'S');
INSERT INTO `apartamento` VALUES ('110', 'B', '1', '0.0000', '44', 'S');
INSERT INTO `apartamento` VALUES ('111', 'C', '1', '0.0000', '44', 'S');
INSERT INTO `apartamento` VALUES ('112', 'PH', '1', '0.0000', '45', 'S');
INSERT INTO `apartamento` VALUES ('113', 'A', '1', '0.0000', '46', 'S');
INSERT INTO `apartamento` VALUES ('114', 'B', '1', '0.0000', '46', 'S');
INSERT INTO `apartamento` VALUES ('115', 'C', '1', '0.0000', '46', 'S');
INSERT INTO `apartamento` VALUES ('116', 'A', '1', '0.0000', '47', 'S');
INSERT INTO `apartamento` VALUES ('117', 'B', '1', '0.0000', '47', 'S');
INSERT INTO `apartamento` VALUES ('118', 'C', '1', '0.0000', '47', 'S');
INSERT INTO `apartamento` VALUES ('119', 'A', '1', '0.0000', '48', 'S');
INSERT INTO `apartamento` VALUES ('120', 'B', '1', '0.0000', '48', 'S');
INSERT INTO `apartamento` VALUES ('121', 'C', '1', '0.0000', '48', 'S');
INSERT INTO `apartamento` VALUES ('122', 'A', '1', '0.0000', '49', 'S');
INSERT INTO `apartamento` VALUES ('123', 'B', '1', '0.0000', '49', 'S');
INSERT INTO `apartamento` VALUES ('124', 'C', '1', '0.0000', '49', 'S');
INSERT INTO `apartamento` VALUES ('125', 'A', '1', '0.0000', '51', 'S');
INSERT INTO `apartamento` VALUES ('126', 'B', '1', '0.0000', '51', 'S');
INSERT INTO `apartamento` VALUES ('127', 'C', '1', '0.0000', '51', 'S');
INSERT INTO `apartamento` VALUES ('128', 'A', '1', '0.0000', '52', 'S');
INSERT INTO `apartamento` VALUES ('129', 'B', '1', '0.0000', '52', 'S');
INSERT INTO `apartamento` VALUES ('130', 'C', '1', '0.0000', '52', 'S');
INSERT INTO `apartamento` VALUES ('131', 'A', '1', '0.0000', '53', 'S');
INSERT INTO `apartamento` VALUES ('132', 'B', '1', '0.0000', '53', 'S');
INSERT INTO `apartamento` VALUES ('133', 'C', '1', '0.0000', '53', 'S');
INSERT INTO `apartamento` VALUES ('134', 'A', '1', '0.0000', '54', 'S');
INSERT INTO `apartamento` VALUES ('135', 'B', '1', '0.0000', '54', 'S');
INSERT INTO `apartamento` VALUES ('136', 'C', '1', '0.0000', '54', 'S');
INSERT INTO `apartamento` VALUES ('137', 'PH', '1', '0.0000', '55', 'S');
INSERT INTO `apartamento` VALUES ('138', 'A', '1', '0.0000', '56', 'S');
INSERT INTO `apartamento` VALUES ('139', 'B', '1', '0.0000', '56', 'S');
INSERT INTO `apartamento` VALUES ('140', 'C', '1', '0.0000', '56', 'S');
INSERT INTO `apartamento` VALUES ('141', 'A', '1', '0.0000', '57', 'S');
INSERT INTO `apartamento` VALUES ('142', 'B', '1', '0.0000', '57', 'S');
INSERT INTO `apartamento` VALUES ('143', 'C', '1', '0.0000', '57', 'S');
INSERT INTO `apartamento` VALUES ('144', 'A', '1', '0.0000', '58', 'S');
INSERT INTO `apartamento` VALUES ('145', 'B', '1', '0.0000', '58', 'S');
INSERT INTO `apartamento` VALUES ('146', 'C', '1', '0.0000', '58', 'S');
INSERT INTO `apartamento` VALUES ('147', 'A', '1', '0.0000', '59', 'S');
INSERT INTO `apartamento` VALUES ('148', 'B', '1', '0.0000', '59', 'S');
INSERT INTO `apartamento` VALUES ('149', 'C', '1', '0.0000', '59', 'S');
INSERT INTO `apartamento` VALUES ('150', 'A', '1', '0.0000', '62', 'S');
INSERT INTO `apartamento` VALUES ('151', 'B', '1', '0.0000', '62', 'S');
INSERT INTO `apartamento` VALUES ('152', 'C', '1', '0.0000', '62', 'S');
INSERT INTO `apartamento` VALUES ('153', 'A', '1', '0.0000', '63', 'S');
INSERT INTO `apartamento` VALUES ('154', 'B', '1', '0.0000', '63', 'S');
INSERT INTO `apartamento` VALUES ('155', 'C', '1', '0.0000', '63', 'S');
INSERT INTO `apartamento` VALUES ('156', 'A', '1', '0.0000', '64', 'S');
INSERT INTO `apartamento` VALUES ('157', 'B', '1', '0.0000', '64', 'S');
INSERT INTO `apartamento` VALUES ('158', 'C', '1', '0.0000', '64', 'S');
INSERT INTO `apartamento` VALUES ('159', 'A', '1', '0.0000', '65', 'S');
INSERT INTO `apartamento` VALUES ('160', 'B', '1', '0.0000', '65', 'S');
INSERT INTO `apartamento` VALUES ('161', 'C', '1', '0.0000', '65', 'S');
INSERT INTO `apartamento` VALUES ('162', 'PH', '1', '0.0000', '66', 'S');
INSERT INTO `apartamento` VALUES ('163', 'B', '1', '0.0000', '67', 'S');

-- ----------------------------
-- Table structure for `condominios`
-- ----------------------------
DROP TABLE IF EXISTS `condominios`;
CREATE TABLE `condominios` (
  `id_condominio` int(3) NOT NULL AUTO_INCREMENT,
  `nombre_cond` varchar(250) NOT NULL,
  `rif` varchar(13) NOT NULL,
  `porc_fondo` float(4,2) unsigned NOT NULL DEFAULT '0.00',
  `porc_interes` float(4,2) unsigned NOT NULL DEFAULT '0.00',
  `mes_para_interes` int(2) unsigned NOT NULL DEFAULT '0',
  `logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_condominio`),
  UNIQUE KEY `id_condominio` (`id_condominio`),
  UNIQUE KEY `nombre_cond` (`nombre_cond`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of condominios
-- ----------------------------
INSERT INTO `condominios` VALUES ('1', 'Conjunto Recidencial Las Trinitarias', 'J-31737501-7', '0.00', '0.00', '0', null);

-- ----------------------------
-- Table structure for `facturas`
-- ----------------------------
DROP TABLE IF EXISTS `facturas`;
CREATE TABLE `facturas` (
  `id_factura` int(9) NOT NULL AUTO_INCREMENT,
  `id_rubro` int(3) NOT NULL,
  `fac_num` varchar(15) DEFAULT NULL,
  `fac_fecha` date NOT NULL,
  `fac_descripcion` varchar(255) NOT NULL,
  `fac_monto` float(9,2) NOT NULL,
  `fac_periodo` int(6) NOT NULL,
  `fac_fec_crea` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fac_user_crea` int(4) NOT NULL,
  `fac_estatus` varchar(1) NOT NULL DEFAULT 's',
  PRIMARY KEY (`id_factura`,`id_rubro`),
  UNIQUE KEY `id_factura` (`id_factura`),
  KEY `relationship13` (`id_rubro`),
  CONSTRAINT `relationship13` FOREIGN KEY (`id_rubro`) REFERENCES `rubro_gastos` (`id_rubro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facturas
-- ----------------------------

-- ----------------------------
-- Table structure for `formularios`
-- ----------------------------
DROP TABLE IF EXISTS `formularios`;
CREATE TABLE `formularios` (
  `id` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `accion` varchar(50) NOT NULL DEFAULT 'form_process.php',
  `metodo` varchar(4) NOT NULL DEFAULT 'post',
  `tipo` varchar(40) NOT NULL DEFAULT 'application/x-www-form-urlencoded',
  `clase` varchar(20) NOT NULL DEFAULT 'form',
  `form` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of formularios
-- ----------------------------
INSERT INTO `formularios` VALUES ('frm_evento', 'Agregar Evento', 'form_process.php', 'post', 'application/x-www-form-urlencoded', 'form', 'datbas-evento');
INSERT INTO `formularios` VALUES ('frm_fevento', 'Filtro de Busqueda', 'eventos.php', 'GET', 'application/x-www-form-urlencoded', 'form', 'datbas-fevento');
INSERT INTO `formularios` VALUES ('frm_filtro', 'Filtro de busqueda', 'servicios.php', 'GET\n', 'application/x-www-form-urlencoded', 'form', 'form-filtro');
INSERT INTO `formularios` VALUES ('frm_fnoticia', 'Filtro de busqueda', 'noticia.php', 'GET', 'application/x-www-form-urlencoded', 'form', 'form-filtro');
INSERT INTO `formularios` VALUES ('frm_ftestimonio', 'Filtro de Busqueda', 'testimonio.php', 'GET', 'application/x-www-form-urlencoded', 'form', 'datbas-ftestimonio');
INSERT INTO `formularios` VALUES ('frm_instalaciones', 'Agregar Instalaciòn', 'form_process.php', 'post', 'application/x-www-form-urlencoded', 'form', 'datbas-instalacion');
INSERT INTO `formularios` VALUES ('frm_noticias', 'Datos de la Noticia', 'form_process.php', 'post', 'application/x-www-form-urlencoded', 'form', 'datbas-noticia');
INSERT INTO `formularios` VALUES ('frm_rubro', 'Datos del Rubro', 'form_process.php', 'post', 'application/x-www-form-urlencoded', 'form', 'datbas-rubro');
INSERT INTO `formularios` VALUES ('frm_servicio', 'Agregar Servicio', 'form_process.php', 'post', 'application/x-www-form-urlencoded', 'form', 'datbas-servicio');
INSERT INTO `formularios` VALUES ('frm_testimonio', 'Agregar Testimonio', 'form_process.php', 'post', 'application/x-www-form-urlencoded', 'form', 'datbas-testimonio');
INSERT INTO `formularios` VALUES ('frm_torres', 'Torres del Condominio', 'form_process.php', 'post', 'application/x-www-form-urlencoded', 'form', 'datbas-torres');
INSERT INTO `formularios` VALUES ('frm_trubro', 'Rubro por torre', 'form_process.php', 'post', 'application/x-www-form-urlencoded', 'form', 'datbas-trubro');

-- ----------------------------
-- Table structure for `formularios_adicional`
-- ----------------------------
DROP TABLE IF EXISTS `formularios_adicional`;
CREATE TABLE `formularios_adicional` (
  `id_adicional` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_campo` int(10) unsigned NOT NULL,
  `id` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `class` varchar(100) NOT NULL DEFAULT '',
  `value` varchar(50) NOT NULL,
  `deshabilitado` int(1) NOT NULL DEFAULT '0',
  `orden` int(2) NOT NULL,
  PRIMARY KEY (`id_adicional`),
  KEY `formularios_adicional-formulario_campos` (`id_campo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of formularios_adicional
-- ----------------------------
INSERT INTO `formularios_adicional` VALUES ('1', '10', 'btn_verificar', 'button', '', 'gg-icon-buscar adicional', '', '0', '1');
INSERT INTO `formularios_adicional` VALUES ('3', '16', 'btn_verificar', 'button', '', 'gg-icon-buscar adicional', '', '0', '1');
INSERT INTO `formularios_adicional` VALUES ('4', '17', 'btn_verificar', 'button', '', 'gg-icon-buscar adicional', '', '0', '1');
INSERT INTO `formularios_adicional` VALUES ('5', '228', 'btn_verificar', 'button', '', 'gg-icon-buscar adicional', '', '0', '1');
INSERT INTO `formularios_adicional` VALUES ('6', '232', 'btn_verificar', 'button', '', 'gg-icon-buscar adicional', '', '0', '1');
INSERT INTO `formularios_adicional` VALUES ('7', '236', 'btn_verificar', 'button', '', 'gg-icon-buscar adicional', '', '0', '1');

-- ----------------------------
-- Table structure for `formularios_botones`
-- ----------------------------
DROP TABLE IF EXISTS `formularios_botones`;
CREATE TABLE `formularios_botones` (
  `id_boton` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_formulario` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'submit',
  `nombre` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT 'gg-button',
  `deshabilitado` int(1) NOT NULL,
  `orden` int(2) NOT NULL,
  PRIMARY KEY (`id_boton`),
  KEY `fk_formulario_botones-formulario` (`id_formulario`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of formularios_botones
-- ----------------------------
INSERT INTO `formularios_botones` VALUES ('1', 'frm_torres', 'submit', 'submit', 'Guardar', 'gg-button', '1', '1');
INSERT INTO `formularios_botones` VALUES ('2', 'frm_empresa', 'btn_modificar', 'button', 'Modificar', 'gg-button', '0', '1');
INSERT INTO `formularios_botones` VALUES ('3', 'frm_filtro', 'btn_agregar', 'button', 'Agregar', 'gg-button', '0', '1');
INSERT INTO `formularios_botones` VALUES ('4', 'frm_rubro', 'submit', 'submit', 'Guardar', 'gg-button', '0', '1');
INSERT INTO `formularios_botones` VALUES ('5', 'frm_fevento', 'btn_agregar', 'button', 'Agregar', 'gg-button', '0', '1');
INSERT INTO `formularios_botones` VALUES ('6', 'frm_ftestimonio', 'btn_agregar', 'button', 'Agregar', 'gg-button', '0', '1');
INSERT INTO `formularios_botones` VALUES ('7', 'frm_testimonio', 'btn_agregar', 'submit', 'Agregar', 'gg-button', '0', '1');
INSERT INTO `formularios_botones` VALUES ('8', 'frm_evento', 'btn_agregar', 'submit', 'Guardar', 'gg-button', '0', '1');
INSERT INTO `formularios_botones` VALUES ('9', 'frm_trubro', 'btn_agregar', 'submit', 'Guardar', 'gg-button', '0', '1');
INSERT INTO `formularios_botones` VALUES ('10', 'frm_cobertura', 'btn_agregar', 'submit', 'Guardar', 'gg-button', '0', '1');
INSERT INTO `formularios_botones` VALUES ('11', 'frm_servicio', 'btn_agregar', 'submit', 'Guardar', 'gg-button', '0', '1');
INSERT INTO `formularios_botones` VALUES ('13', 'frm_fnoticia', 'btn_agregar', 'button', 'Agregar', 'gg-button', '0', '1');

-- ----------------------------
-- Table structure for `formularios_campos`
-- ----------------------------
DROP TABLE IF EXISTS `formularios_campos`;
CREATE TABLE `formularios_campos` (
  `id_campo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_formulario` varchar(50) NOT NULL,
  `tipo` varchar(20) NOT NULL DEFAULT 'text',
  `legend` varchar(50) NOT NULL,
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `label` varchar(50) NOT NULL,
  `value` varchar(100) NOT NULL,
  `clase` varchar(200) NOT NULL DEFAULT 'text',
  `info` varchar(50) NOT NULL,
  `obligatorio` int(1) NOT NULL,
  `deshabilitado` int(1) NOT NULL,
  `solo_lectura` int(1) NOT NULL,
  `orden` int(2) NOT NULL,
  `datos` varchar(50) NOT NULL,
  `datos_value` varchar(20) NOT NULL,
  PRIMARY KEY (`id_campo`),
  KEY `fk_formularios_campos-formulario` (`id_formulario`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of formularios_campos
-- ----------------------------
INSERT INTO `formularios_campos` VALUES ('1', 'frm_torres', 'text', 'Datos de la Torre', 'txt_nomb', 'txt_nomb', 'Nombre de la Torre', '', 'text vobli', '', '1', '0', '0', '1', '', '');
INSERT INTO `formularios_campos` VALUES ('2', 'frm_torres', 'hidden', 'Datos de la Torre', 'txt_id_torre', 'txt_id_torre', 'id torre', '', 'text', '', '1', '0', '0', '2', '', '');
INSERT INTO `formularios_campos` VALUES ('3', 'frm_rubro', 'text', 'Datos del Rubro', 'txt_rubro', 'txt_rubro', 'Descripcion del Rubro', '', 'text', '', '1', '0', '0', '1', '', '');
INSERT INTO `formularios_campos` VALUES ('4', 'frm_trubro', 'select', 'Datos del Rubro', 'slt_rubro', 'slt_rubro', 'Rubro', '', 'text', '', '1', '0', '0', '1', 'rubro_gastos', 'id_rubro');
INSERT INTO `formularios_campos` VALUES ('5', 'frm_trubro', 'select', 'Datos del Rubro', 'slt_torre', 'slt_torre', 'Torre', '', 'text', '', '1', '0', '0', '2', '', '');
INSERT INTO `formularios_campos` VALUES ('6', 'frm_rubro', 'hidden', 'Datos del Rubro', 'form', 'form', '', 'guarda-rubro', 'text', '', '1', '0', '0', '2', '', '');
INSERT INTO `formularios_campos` VALUES ('7', 'frm_trubro', 'hidden', 'Datos del Rubro', 'form', 'form', '', 'guarda-trubro', 'text', '', '1', '0', '0', '2', '', '');
INSERT INTO `formularios_campos` VALUES ('8', 'frm_rubro', 'hidden', 'Datos del Rubro', 'rubro', 'rubro', 'rubro', '', 'text', '', '1', '0', '0', '2', '', '');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_acceso` int(10) unsigned NOT NULL,
  `id` varchar(20) NOT NULL,
  `clase` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `target` varchar(20) NOT NULL,
  `orden` int(2) NOT NULL,
  `tipo` int(1) NOT NULL COMMENT '0.- Menu principal, # de id para sub menu del id.',
  `session` int(1) NOT NULL COMMENT '0: desabilitado, 1: solo no session, 2: session y no session, 3: solo session.',
  PRIMARY KEY (`id_menu`),
  UNIQUE KEY `orden` (`orden`,`tipo`) USING BTREE,
  KEY `fk_menu_acceso` (`id_acceso`) USING BTREE,
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_acceso`) REFERENCES `usuarios_accesos` (`id_acceso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '1', 'menu_torres', '', 'Torres / Edificios', 'wpanel/torres.php', '', '1', '0', '1');
INSERT INTO `menu` VALUES ('2', '2', 'menu_pisos', '', 'Pisos', 'wpanel/piso.php', '', '2', '0', '1');
INSERT INTO `menu` VALUES ('3', '3', 'menu_apartamento', '', 'Apartamento', 'wpanel/apartamento.php', '', '3', '0', '1');
INSERT INTO `menu` VALUES ('4', '4', 'menu_propietario', '', 'Propietarios', 'wpanel/propietario.php', '', '4', '0', '1');
INSERT INTO `menu` VALUES ('8', '5', 'menu_rubro', ' ', 'Tipos de Gastos', 'wpanel/rubro.php', '', '5', '0', '1');
INSERT INTO `menu` VALUES ('9', '5', 'menu_rubro_torre', ' ', 'Rubros por Torre', 'wpanel/trubro.php', '', '6', '0', '1');

-- ----------------------------
-- Table structure for `personas`
-- ----------------------------
DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas` (
  `id_persona` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_estado` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fecha_nacimiento` int(10) DEFAULT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `id_ciudad` int(10) unsigned DEFAULT NULL,
  `identificacion` varchar(50) NOT NULL,
  `telefono2` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `correo2` varchar(100) NOT NULL,
  `creado` varchar(100) NOT NULL,
  `modificado` varchar(100) NOT NULL,
  `fecha_creacion` int(12) NOT NULL,
  `fecha_modificacion` int(12) NOT NULL,
  `id_grupo` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `in_identificacion` (`identificacion`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of personas
-- ----------------------------
INSERT INTO `personas` VALUES ('1', '1', 'Jhojna', 'Jimenez', '474352200', '', '04262411899', '1', '16595338', ' ', '', ' ', '16595338', ' ', '1347424200', '1347424200', '1');

-- ----------------------------
-- Table structure for `piso`
-- ----------------------------
DROP TABLE IF EXISTS `piso`;
CREATE TABLE `piso` (
  `id_piso` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `id_torre` int(3) NOT NULL,
  `descripcion_piso` varchar(20) NOT NULL,
  PRIMARY KEY (`id_piso`),
  UNIQUE KEY `id_piso` (`id_piso`),
  UNIQUE KEY `piso_unico` (`id_torre`,`descripcion_piso`),
  KEY `relationship25` (`id_torre`),
  CONSTRAINT `relationship25` FOREIGN KEY (`id_torre`) REFERENCES `torres` (`id_torre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of piso
-- ----------------------------
INSERT INTO `piso` VALUES ('2', '1', '1');
INSERT INTO `piso` VALUES ('3', '1', '2');
INSERT INTO `piso` VALUES ('4', '1', '3');
INSERT INTO `piso` VALUES ('5', '1', 'P-H');
INSERT INTO `piso` VALUES ('1', '1', 'PB');
INSERT INTO `piso` VALUES ('7', '2', '1');
INSERT INTO `piso` VALUES ('8', '2', '2');
INSERT INTO `piso` VALUES ('9', '2', '3');
INSERT INTO `piso` VALUES ('6', '2', 'PB');
INSERT INTO `piso` VALUES ('12', '3', '1');
INSERT INTO `piso` VALUES ('13', '3', '2');
INSERT INTO `piso` VALUES ('14', '3', '3');
INSERT INTO `piso` VALUES ('15', '3', 'P-H');
INSERT INTO `piso` VALUES ('11', '3', 'PB');
INSERT INTO `piso` VALUES ('17', '4', '1');
INSERT INTO `piso` VALUES ('18', '4', '2');
INSERT INTO `piso` VALUES ('19', '4', '3');
INSERT INTO `piso` VALUES ('20', '4', 'P-H');
INSERT INTO `piso` VALUES ('16', '4', 'PB');
INSERT INTO `piso` VALUES ('22', '5', '1');
INSERT INTO `piso` VALUES ('23', '5', '2');
INSERT INTO `piso` VALUES ('24', '5', '3');
INSERT INTO `piso` VALUES ('21', '5', 'PB');
INSERT INTO `piso` VALUES ('27', '6', '1');
INSERT INTO `piso` VALUES ('28', '6', '2');
INSERT INTO `piso` VALUES ('29', '6', '3');
INSERT INTO `piso` VALUES ('26', '6', 'PB');
INSERT INTO `piso` VALUES ('32', '7', '1');
INSERT INTO `piso` VALUES ('33', '7', '2');
INSERT INTO `piso` VALUES ('34', '7', '3');
INSERT INTO `piso` VALUES ('31', '7', 'PB');
INSERT INTO `piso` VALUES ('37', '8', '1');
INSERT INTO `piso` VALUES ('38', '8', '2');
INSERT INTO `piso` VALUES ('39', '8', '3');
INSERT INTO `piso` VALUES ('36', '8', 'PB');
INSERT INTO `piso` VALUES ('42', '9', '1');
INSERT INTO `piso` VALUES ('43', '9', '2');
INSERT INTO `piso` VALUES ('44', '9', '3');
INSERT INTO `piso` VALUES ('45', '9', 'P-H');
INSERT INTO `piso` VALUES ('41', '9', 'PB');
INSERT INTO `piso` VALUES ('47', '10', '1');
INSERT INTO `piso` VALUES ('48', '10', '2');
INSERT INTO `piso` VALUES ('49', '10', '3');
INSERT INTO `piso` VALUES ('46', '10', 'PB');
INSERT INTO `piso` VALUES ('52', '11', '1');
INSERT INTO `piso` VALUES ('53', '11', '2');
INSERT INTO `piso` VALUES ('54', '11', '3');
INSERT INTO `piso` VALUES ('55', '11', 'P-H');
INSERT INTO `piso` VALUES ('51', '11', 'PB');
INSERT INTO `piso` VALUES ('57', '12', '1');
INSERT INTO `piso` VALUES ('58', '12', '2');
INSERT INTO `piso` VALUES ('59', '12', '3');
INSERT INTO `piso` VALUES ('56', '12', 'PB');
INSERT INTO `piso` VALUES ('63', '13', '1');
INSERT INTO `piso` VALUES ('64', '13', '2');
INSERT INTO `piso` VALUES ('65', '13', '3');
INSERT INTO `piso` VALUES ('66', '13', 'P-H');
INSERT INTO `piso` VALUES ('62', '13', 'PB');
INSERT INTO `piso` VALUES ('68', '14', '1');
INSERT INTO `piso` VALUES ('69', '14', '2');
INSERT INTO `piso` VALUES ('70', '14', '3');
INSERT INTO `piso` VALUES ('67', '14', 'PB');

-- ----------------------------
-- Table structure for `propietario`
-- ----------------------------
DROP TABLE IF EXISTS `propietario`;
CREATE TABLE `propietario` (
  `id_propietario` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `tipo_documento` varchar(1) DEFAULT 'v',
  `cedula` int(9) DEFAULT NULL,
  `estatus` varchar(1) NOT NULL DEFAULT 's',
  PRIMARY KEY (`id_propietario`),
  UNIQUE KEY `id_propietario` (`id_propietario`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of propietario
-- ----------------------------
INSERT INTO `propietario` VALUES ('1', 'YENACARY VERGARA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('2', 'MARIELA HERNANDEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('3', 'BARTOLO BLANCO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('4', 'DORIS BLANCO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('5', 'MARIA SACALUSKA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('6', 'YOLINDA SUMOZA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('7', 'RAMON SANCHEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('8', 'MARCOS HERNANDEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('9', 'JOSE MEDINA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('10', 'KATIUSKA RAMIREZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('11', 'YELITZA MARQUEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('12', 'AURA GOMEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('13', 'LUIS RODRIGUEZ/JORGE CALLE\n', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('14', 'ELADIA TOVAR', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('15', 'YACKELIN DE BRICEÑO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('16', 'SERGIO DIEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('17', 'CRISOLA HENRIQUEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('18', 'DULCE PADRON', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('19', 'CARLOS RAMOS', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('20', 'IRMA RAMON', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('21', 'MARLENI PINTO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('22', 'PATRICIA ZAMBRANO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('23', 'GREGORIA RODRIGUEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('24', 'GLADIS MELO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('25', 'LAURA SAAVEDRA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('26', 'ANGELA DE CHAVEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('27', 'LUCIA CAZORLA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('28', 'YULEIDY DE FREITAS', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('29', 'PATRICIA DE CASTRO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('30', 'JOSE CABALLERO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('31', 'RUDOLFO MATHEUS', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('32', 'RAFAEL ARANA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('33', 'JUAN CARLOS AGUILAR', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('34', 'PATRICIA ZAMBRANO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('35', 'NIURKA ESIS', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('36', 'PASCUAL TERLIZZI', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('37', 'DEYANIRA CASTILLO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('38', 'YURIROSI CHIRINOS', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('39', 'YEMIN RAMIREZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('40', 'ANA MONTES', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('41', 'LUISAIDE DE GOMEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('42', 'CARMEN HEREDIA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('43', 'ERIKA LEON', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('44', 'GUASARET HERNANDEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('45', 'NEISA MORENO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('46', 'ALEJANDRO SANCHEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('47', 'GERARDO SANCHEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('48', 'GONZALO BORGUES', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('49', 'HECTOR ESQUEDA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('50', 'DANI GALICIA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('51', 'CELSA RONDON', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('52', 'CESAR GIRALDO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('53', 'CARLOS ISTILLARTE', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('54', 'ELIZABETH BATISTA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('55', 'AQUILES TOVAR', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('56', 'JULIO QUINTERO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('57', 'FERNANDO MARCOVICH', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('58', 'INGRID SANTANA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('59', 'EUDOMAR VARGAS', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('60', 'ALFONSO MILANES', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('61', 'BLANCA MOLINA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('62', 'MIGUEL RIVEIRO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('63', 'ALISON REYES', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('64', 'AURELIO ROBLEDO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('65', 'RAUL ALVAREZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('66', 'SANDRO CARRERO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('67', 'MARIA SABINO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('68', 'GIANNA D`ONOFRIO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('69', 'MONSERRAT RODRIGUEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('70', 'PAUL WIESINGER', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('71', 'ROBERT RODRIGUEZ ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('72', 'DARLING SEQUERA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('73', 'TRINA MOTA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('74', 'MARIAPIA DÒNOFRIO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('75', 'CARLOS PINTO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('76', 'NAIBELIN RODRIGUEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('77', 'ANIELLO DE VITA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('78', 'ANIELLO DE VITA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('79', 'JUAN VILLASANA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('80', 'ROBERT MARIN', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('81', 'ANIELLO DE VITA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('82', 'MARLIN VILLALONGA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('83', 'JULIO COLMENARES', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('84', 'ANIELLO DE VITA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('85', 'ANIELLO DE VITA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('86', 'ANGELINA MAMMARELLA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('87', 'ANIELLO DE VITA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('88', 'GERARDO BRITO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('89', 'FANNY SALINAS ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('90', 'HUGO CANELA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('91', 'DOMINGO PEREZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('92', 'IGOR PEREZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('93', 'DAILI ANARE', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('94', 'ANIELLO DE VITA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('95', 'ELIAN CABRERA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('96', 'ANIELLO DE VITA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('97', 'MARIA TORTOLERO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('98', 'RAFAEL VELASQUEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('99', 'ANIELLO DE VITA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('100', 'SUSAN DIAZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('101', 'MARIELA RAMBOST', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('102', 'PATRICIA SUAREZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('103', 'JHOJANA GUIMENEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('104', 'GONZALO DAVILA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('105', 'TANIA CHACON', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('106', 'DOMINGO HERNANDEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('107', 'ROSA GARCIA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('108', 'INGRID RODRIGUEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('109', 'LUSMARINA DIERCHE', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('110', 'EDUARDO ALCANTARA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('111', 'ANIELLO DE VITA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('112', 'FRANCYS MALDONADO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('113', 'LESBIA CASTILLO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('114', 'ZULAY CEBALLOS', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('115', 'SOL SANCHEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('116', 'CESAR HERRERA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('117', 'JOSE CASTILLO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('118', 'ZAIDE HERRERA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('119', 'ANGELICA MICHELENA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('120', 'ARMANDO MASSARONI', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('121', 'YOLANDA FERNANDEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('122', 'CRISTINA BERMUDEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('123', 'EDUAR MARQUEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('124', 'REINIERO PEÑALOZA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('125', 'JEAN FRANCO MILANO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('126', 'DANY DIAS', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('127', 'JUAN PEROZO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('128', 'GABRIELA NAVARRO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('129', 'MAGDA AROCHA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('130', 'DEISY PERDOMO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('131', 'LILIBERTH TESTA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('132', 'BERBIS BANDRES', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('133', 'JOSE BELLO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('134', 'ELSY ALFINGER', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('135', 'ANIELLO DE VITA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('136', 'INES MARTINES', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('137', 'MIGUEL TORRENCE', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('138', 'SARA FRNACO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('139', 'ARGENIS ORTIZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('140', 'ANGEL DIEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('141', 'JOSE TORRES', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('142', 'NELISSE QUIROJA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('143', 'JOSE ACEVEDO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('144', 'FRANCISCO RANGEL', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('145', 'JORGE CORDOVA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('146', 'DAVID OGAYA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('147', 'IXIA FLORES', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('148', 'YOSBEL RODRIGUEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('149', 'ANA MATUTE', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('150', 'YORGUEN JIMENEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('151', 'VLADIMIR HERNANDEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('152', 'NANCY PARRA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('153', 'FLOR MARIA LOPEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('154', 'DANIELA MARTINEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('155', 'ALEINES MARTINEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('156', 'MARYERI RONDON', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('157', 'FRANCA GRACIANO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('158', 'WILLIANS ISARRA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('159', 'MARCO DE LEONES', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('160', 'RUFINA PARRA', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('161', 'JOSE PINTO', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('162', 'FRANKILN FAGUNDEZ', null, 'v', null, '1');
INSERT INTO `propietario` VALUES ('163', 'ANIELLO DE VITA', null, 'v', null, '1');

-- ----------------------------
-- Table structure for `propietario_apartamento`
-- ----------------------------
DROP TABLE IF EXISTS `propietario_apartamento`;
CREATE TABLE `propietario_apartamento` (
  `id_propietario_apartamento` int(5) NOT NULL AUTO_INCREMENT,
  `id_propietario` int(5) NOT NULL,
  `id_apartamento` int(4) NOT NULL,
  `estatus` varchar(1) NOT NULL DEFAULT 's',
  PRIMARY KEY (`id_propietario_apartamento`),
  UNIQUE KEY `id_propietario_apartamento` (`id_propietario_apartamento`),
  KEY `habitante_apartamen` (`id_propietario`),
  KEY `relationship28` (`id_apartamento`),
  CONSTRAINT `habitante_apartamen` FOREIGN KEY (`id_propietario`) REFERENCES `propietario` (`id_propietario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `relationship28` FOREIGN KEY (`id_apartamento`) REFERENCES `apartamento` (`id_apartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of propietario_apartamento
-- ----------------------------
INSERT INTO `propietario_apartamento` VALUES ('1', '1', '1', '1');
INSERT INTO `propietario_apartamento` VALUES ('2', '2', '2', '1');
INSERT INTO `propietario_apartamento` VALUES ('3', '3', '3', '1');
INSERT INTO `propietario_apartamento` VALUES ('4', '4', '4', '1');
INSERT INTO `propietario_apartamento` VALUES ('5', '5', '5', '1');
INSERT INTO `propietario_apartamento` VALUES ('6', '6', '6', '1');
INSERT INTO `propietario_apartamento` VALUES ('7', '7', '7', '1');
INSERT INTO `propietario_apartamento` VALUES ('8', '8', '8', '1');
INSERT INTO `propietario_apartamento` VALUES ('9', '9', '9', '1');
INSERT INTO `propietario_apartamento` VALUES ('10', '10', '10', '1');
INSERT INTO `propietario_apartamento` VALUES ('11', '11', '11', '1');
INSERT INTO `propietario_apartamento` VALUES ('12', '12', '12', '1');
INSERT INTO `propietario_apartamento` VALUES ('13', '13', '13', '1');
INSERT INTO `propietario_apartamento` VALUES ('14', '14', '14', '1');
INSERT INTO `propietario_apartamento` VALUES ('15', '15', '15', '1');
INSERT INTO `propietario_apartamento` VALUES ('16', '16', '16', '1');
INSERT INTO `propietario_apartamento` VALUES ('17', '17', '17', '1');
INSERT INTO `propietario_apartamento` VALUES ('18', '18', '18', '1');
INSERT INTO `propietario_apartamento` VALUES ('19', '19', '19', '1');
INSERT INTO `propietario_apartamento` VALUES ('20', '20', '20', '1');
INSERT INTO `propietario_apartamento` VALUES ('21', '21', '21', '1');
INSERT INTO `propietario_apartamento` VALUES ('22', '22', '22', '1');
INSERT INTO `propietario_apartamento` VALUES ('23', '23', '23', '1');
INSERT INTO `propietario_apartamento` VALUES ('24', '24', '24', '1');
INSERT INTO `propietario_apartamento` VALUES ('25', '25', '25', '1');
INSERT INTO `propietario_apartamento` VALUES ('26', '26', '26', '1');
INSERT INTO `propietario_apartamento` VALUES ('27', '27', '27', '1');
INSERT INTO `propietario_apartamento` VALUES ('28', '28', '28', '1');
INSERT INTO `propietario_apartamento` VALUES ('29', '29', '29', '1');
INSERT INTO `propietario_apartamento` VALUES ('30', '30', '30', '1');
INSERT INTO `propietario_apartamento` VALUES ('31', '31', '31', '1');
INSERT INTO `propietario_apartamento` VALUES ('32', '32', '32', '1');
INSERT INTO `propietario_apartamento` VALUES ('33', '33', '33', '1');
INSERT INTO `propietario_apartamento` VALUES ('34', '34', '34', '1');
INSERT INTO `propietario_apartamento` VALUES ('35', '35', '35', '1');
INSERT INTO `propietario_apartamento` VALUES ('36', '36', '36', '1');
INSERT INTO `propietario_apartamento` VALUES ('37', '37', '37', '1');
INSERT INTO `propietario_apartamento` VALUES ('38', '38', '38', '1');
INSERT INTO `propietario_apartamento` VALUES ('39', '39', '39', '1');
INSERT INTO `propietario_apartamento` VALUES ('40', '40', '40', '1');
INSERT INTO `propietario_apartamento` VALUES ('41', '41', '41', '1');
INSERT INTO `propietario_apartamento` VALUES ('42', '42', '42', '1');
INSERT INTO `propietario_apartamento` VALUES ('43', '43', '43', '1');
INSERT INTO `propietario_apartamento` VALUES ('44', '44', '44', '1');
INSERT INTO `propietario_apartamento` VALUES ('45', '45', '45', '1');
INSERT INTO `propietario_apartamento` VALUES ('46', '46', '46', '1');
INSERT INTO `propietario_apartamento` VALUES ('47', '47', '47', '1');
INSERT INTO `propietario_apartamento` VALUES ('48', '48', '48', '1');
INSERT INTO `propietario_apartamento` VALUES ('49', '49', '49', '1');
INSERT INTO `propietario_apartamento` VALUES ('50', '50', '50', '1');
INSERT INTO `propietario_apartamento` VALUES ('51', '51', '51', '1');
INSERT INTO `propietario_apartamento` VALUES ('52', '52', '52', '1');
INSERT INTO `propietario_apartamento` VALUES ('53', '53', '53', '1');
INSERT INTO `propietario_apartamento` VALUES ('54', '54', '54', '1');
INSERT INTO `propietario_apartamento` VALUES ('55', '55', '55', '1');
INSERT INTO `propietario_apartamento` VALUES ('56', '56', '56', '1');
INSERT INTO `propietario_apartamento` VALUES ('57', '57', '57', '1');
INSERT INTO `propietario_apartamento` VALUES ('58', '58', '58', '1');
INSERT INTO `propietario_apartamento` VALUES ('59', '59', '59', '1');
INSERT INTO `propietario_apartamento` VALUES ('60', '60', '60', '1');
INSERT INTO `propietario_apartamento` VALUES ('61', '61', '61', '1');
INSERT INTO `propietario_apartamento` VALUES ('62', '62', '62', '1');
INSERT INTO `propietario_apartamento` VALUES ('63', '63', '63', '1');
INSERT INTO `propietario_apartamento` VALUES ('64', '64', '64', '1');
INSERT INTO `propietario_apartamento` VALUES ('65', '65', '65', '1');
INSERT INTO `propietario_apartamento` VALUES ('66', '66', '66', '1');
INSERT INTO `propietario_apartamento` VALUES ('67', '67', '67', '1');
INSERT INTO `propietario_apartamento` VALUES ('68', '68', '68', '1');
INSERT INTO `propietario_apartamento` VALUES ('69', '69', '69', '1');
INSERT INTO `propietario_apartamento` VALUES ('70', '70', '70', '1');
INSERT INTO `propietario_apartamento` VALUES ('71', '71', '71', '1');
INSERT INTO `propietario_apartamento` VALUES ('72', '72', '72', '1');
INSERT INTO `propietario_apartamento` VALUES ('73', '73', '73', '1');
INSERT INTO `propietario_apartamento` VALUES ('74', '74', '74', '1');
INSERT INTO `propietario_apartamento` VALUES ('75', '75', '75', '1');
INSERT INTO `propietario_apartamento` VALUES ('76', '76', '76', '1');
INSERT INTO `propietario_apartamento` VALUES ('77', '77', '77', '1');
INSERT INTO `propietario_apartamento` VALUES ('78', '78', '78', '1');
INSERT INTO `propietario_apartamento` VALUES ('79', '79', '79', '1');
INSERT INTO `propietario_apartamento` VALUES ('80', '80', '80', '1');
INSERT INTO `propietario_apartamento` VALUES ('81', '81', '81', '1');
INSERT INTO `propietario_apartamento` VALUES ('82', '82', '82', '1');
INSERT INTO `propietario_apartamento` VALUES ('83', '83', '83', '1');
INSERT INTO `propietario_apartamento` VALUES ('84', '84', '84', '1');
INSERT INTO `propietario_apartamento` VALUES ('85', '85', '85', '1');
INSERT INTO `propietario_apartamento` VALUES ('86', '86', '86', '1');
INSERT INTO `propietario_apartamento` VALUES ('87', '87', '87', '1');
INSERT INTO `propietario_apartamento` VALUES ('88', '88', '88', '1');
INSERT INTO `propietario_apartamento` VALUES ('89', '89', '89', '1');
INSERT INTO `propietario_apartamento` VALUES ('90', '90', '90', '1');
INSERT INTO `propietario_apartamento` VALUES ('91', '91', '91', '1');
INSERT INTO `propietario_apartamento` VALUES ('92', '92', '92', '1');
INSERT INTO `propietario_apartamento` VALUES ('93', '93', '93', '1');
INSERT INTO `propietario_apartamento` VALUES ('94', '94', '94', '1');
INSERT INTO `propietario_apartamento` VALUES ('95', '95', '95', '1');
INSERT INTO `propietario_apartamento` VALUES ('96', '96', '96', '1');
INSERT INTO `propietario_apartamento` VALUES ('97', '97', '97', '1');
INSERT INTO `propietario_apartamento` VALUES ('98', '98', '98', '1');
INSERT INTO `propietario_apartamento` VALUES ('99', '99', '99', '1');
INSERT INTO `propietario_apartamento` VALUES ('100', '100', '100', '1');
INSERT INTO `propietario_apartamento` VALUES ('101', '101', '101', '1');
INSERT INTO `propietario_apartamento` VALUES ('102', '102', '102', '1');
INSERT INTO `propietario_apartamento` VALUES ('103', '103', '103', '1');
INSERT INTO `propietario_apartamento` VALUES ('104', '104', '104', '1');
INSERT INTO `propietario_apartamento` VALUES ('105', '105', '105', '1');
INSERT INTO `propietario_apartamento` VALUES ('106', '106', '106', '1');
INSERT INTO `propietario_apartamento` VALUES ('107', '107', '107', '1');
INSERT INTO `propietario_apartamento` VALUES ('108', '108', '108', '1');
INSERT INTO `propietario_apartamento` VALUES ('109', '109', '109', '1');
INSERT INTO `propietario_apartamento` VALUES ('110', '110', '110', '1');
INSERT INTO `propietario_apartamento` VALUES ('111', '111', '111', '1');
INSERT INTO `propietario_apartamento` VALUES ('112', '112', '112', '1');
INSERT INTO `propietario_apartamento` VALUES ('113', '113', '113', '1');
INSERT INTO `propietario_apartamento` VALUES ('114', '114', '114', '1');
INSERT INTO `propietario_apartamento` VALUES ('115', '115', '115', '1');
INSERT INTO `propietario_apartamento` VALUES ('116', '116', '116', '1');
INSERT INTO `propietario_apartamento` VALUES ('117', '117', '117', '1');
INSERT INTO `propietario_apartamento` VALUES ('118', '118', '118', '1');
INSERT INTO `propietario_apartamento` VALUES ('119', '119', '119', '1');
INSERT INTO `propietario_apartamento` VALUES ('120', '120', '120', '1');
INSERT INTO `propietario_apartamento` VALUES ('121', '121', '121', '1');
INSERT INTO `propietario_apartamento` VALUES ('122', '122', '122', '1');
INSERT INTO `propietario_apartamento` VALUES ('123', '123', '123', '1');
INSERT INTO `propietario_apartamento` VALUES ('124', '124', '124', '1');
INSERT INTO `propietario_apartamento` VALUES ('125', '125', '125', '1');
INSERT INTO `propietario_apartamento` VALUES ('126', '126', '126', '1');
INSERT INTO `propietario_apartamento` VALUES ('127', '127', '127', '1');
INSERT INTO `propietario_apartamento` VALUES ('128', '128', '128', '1');
INSERT INTO `propietario_apartamento` VALUES ('129', '129', '129', '1');
INSERT INTO `propietario_apartamento` VALUES ('130', '130', '130', '1');
INSERT INTO `propietario_apartamento` VALUES ('131', '131', '131', '1');
INSERT INTO `propietario_apartamento` VALUES ('132', '132', '132', '1');
INSERT INTO `propietario_apartamento` VALUES ('133', '133', '133', '1');
INSERT INTO `propietario_apartamento` VALUES ('134', '134', '134', '1');
INSERT INTO `propietario_apartamento` VALUES ('135', '135', '135', '1');
INSERT INTO `propietario_apartamento` VALUES ('136', '136', '136', '1');
INSERT INTO `propietario_apartamento` VALUES ('137', '137', '137', '1');
INSERT INTO `propietario_apartamento` VALUES ('138', '138', '138', '1');
INSERT INTO `propietario_apartamento` VALUES ('139', '139', '139', '1');
INSERT INTO `propietario_apartamento` VALUES ('140', '140', '140', '1');
INSERT INTO `propietario_apartamento` VALUES ('141', '141', '141', '1');
INSERT INTO `propietario_apartamento` VALUES ('142', '142', '142', '1');
INSERT INTO `propietario_apartamento` VALUES ('143', '143', '143', '1');
INSERT INTO `propietario_apartamento` VALUES ('144', '144', '144', '1');
INSERT INTO `propietario_apartamento` VALUES ('145', '145', '145', '1');
INSERT INTO `propietario_apartamento` VALUES ('146', '146', '146', '1');
INSERT INTO `propietario_apartamento` VALUES ('147', '147', '147', '1');
INSERT INTO `propietario_apartamento` VALUES ('148', '148', '148', '1');
INSERT INTO `propietario_apartamento` VALUES ('149', '149', '149', '1');
INSERT INTO `propietario_apartamento` VALUES ('150', '150', '150', '1');
INSERT INTO `propietario_apartamento` VALUES ('151', '151', '151', '1');
INSERT INTO `propietario_apartamento` VALUES ('152', '152', '152', '1');
INSERT INTO `propietario_apartamento` VALUES ('153', '153', '153', '1');
INSERT INTO `propietario_apartamento` VALUES ('154', '154', '154', '1');
INSERT INTO `propietario_apartamento` VALUES ('155', '155', '155', '1');
INSERT INTO `propietario_apartamento` VALUES ('156', '156', '156', '1');
INSERT INTO `propietario_apartamento` VALUES ('157', '157', '157', '1');
INSERT INTO `propietario_apartamento` VALUES ('158', '158', '158', '1');
INSERT INTO `propietario_apartamento` VALUES ('159', '159', '159', '1');
INSERT INTO `propietario_apartamento` VALUES ('160', '160', '160', '1');
INSERT INTO `propietario_apartamento` VALUES ('161', '161', '161', '1');
INSERT INTO `propietario_apartamento` VALUES ('162', '162', '162', '1');
INSERT INTO `propietario_apartamento` VALUES ('163', '163', '163', '1');

-- ----------------------------
-- Table structure for `recibos`
-- ----------------------------
DROP TABLE IF EXISTS `recibos`;
CREATE TABLE `recibos` (
  `id_recibo` int(11) NOT NULL,
  `id_propietario_apartamento` int(5) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `periodo` int(6) NOT NULL,
  `estatus_recibo` char(1) NOT NULL DEFAULT 's',
  `alicuota_apartamento` float(6,4) NOT NULL,
  PRIMARY KEY (`id_recibo`,`id_propietario_apartamento`),
  UNIQUE KEY `id_recibo` (`id_recibo`),
  UNIQUE KEY `periodo_apartemento` (`id_propietario_apartamento`,`periodo`),
  CONSTRAINT `relationship30` FOREIGN KEY (`id_propietario_apartamento`) REFERENCES `propietario_apartamento` (`id_propietario_apartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of recibos
-- ----------------------------

-- ----------------------------
-- Table structure for `recibo_det`
-- ----------------------------
DROP TABLE IF EXISTS `recibo_det`;
CREATE TABLE `recibo_det` (
  `id_recibo_det` int(11) NOT NULL AUTO_INCREMENT,
  `id_recibo` int(11) NOT NULL,
  `id_factura` int(9) NOT NULL,
  `fac_descripcion` varchar(20) NOT NULL,
  `monto_conjunto` float(7,2) NOT NULL,
  `monto_edificio` float(7,2) NOT NULL COMMENT 'monto = (monto_fac / cant_rubro_torre) * alicuota',
  `monto_apartamento` varchar(20) NOT NULL,
  PRIMARY KEY (`id_recibo_det`,`id_recibo`),
  UNIQUE KEY `id_recibo_det` (`id_recibo_det`),
  KEY `relationship19` (`id_recibo`),
  KEY `relationship31` (`id_factura`),
  CONSTRAINT `relationship19` FOREIGN KEY (`id_recibo`) REFERENCES `recibos` (`id_recibo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `relationship31` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of recibo_det
-- ----------------------------

-- ----------------------------
-- Table structure for `rubro_gastos`
-- ----------------------------
DROP TABLE IF EXISTS `rubro_gastos`;
CREATE TABLE `rubro_gastos` (
  `id_rubro` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `id_condominio` int(3) NOT NULL,
  PRIMARY KEY (`id_rubro`),
  UNIQUE KEY `descripcion_rubro` (`nombre`),
  KEY `relationship22` (`id_condominio`),
  CONSTRAINT `relationship22` FOREIGN KEY (`id_condominio`) REFERENCES `condominios` (`id_condominio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rubro_gastos
-- ----------------------------
INSERT INTO `rubro_gastos` VALUES ('1', 'rubro de pruebas', '1');

-- ----------------------------
-- Table structure for `rubro_torre`
-- ----------------------------
DROP TABLE IF EXISTS `rubro_torre`;
CREATE TABLE `rubro_torre` (
  `id_rubro` int(3) NOT NULL,
  `id_torre` int(3) NOT NULL,
  PRIMARY KEY (`id_torre`,`id_rubro`),
  KEY `rubros_x_torres` (`id_rubro`),
  CONSTRAINT `rubros_x_torres` FOREIGN KEY (`id_rubro`) REFERENCES `rubro_gastos` (`id_rubro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `torres_x_rubros` FOREIGN KEY (`id_torre`) REFERENCES `torres` (`id_torre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rubro_torre
-- ----------------------------
INSERT INTO `rubro_torre` VALUES ('1', '1');
INSERT INTO `rubro_torre` VALUES ('1', '2');

-- ----------------------------
-- Table structure for `status`
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id_estatus` int(2) NOT NULL DEFAULT '0',
  `nombre` varchar(20) DEFAULT NULL,
  `estatus` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('1', 'Inactivo', '0');
INSERT INTO `status` VALUES ('2', 'Activo', '1');
INSERT INTO `status` VALUES ('3', 'Terminado', '2');

-- ----------------------------
-- Table structure for `tipo_apartamento`
-- ----------------------------
DROP TABLE IF EXISTS `tipo_apartamento`;
CREATE TABLE `tipo_apartamento` (
  `tipo_apt` int(2) NOT NULL AUTO_INCREMENT,
  `desc_tipo_apart` varchar(30) NOT NULL,
  PRIMARY KEY (`tipo_apt`),
  UNIQUE KEY `id_tipo_aparta` (`tipo_apt`),
  UNIQUE KEY `desc_tipo_apart` (`desc_tipo_apart`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipo_apartamento
-- ----------------------------
INSERT INTO `tipo_apartamento` VALUES ('1', 'Apartamento');

-- ----------------------------
-- Table structure for `tipo_usr`
-- ----------------------------
DROP TABLE IF EXISTS `tipo_usr`;
CREATE TABLE `tipo_usr` (
  `id_tipo` int(2) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipo_usr
-- ----------------------------

-- ----------------------------
-- Table structure for `torres`
-- ----------------------------
DROP TABLE IF EXISTS `torres`;
CREATE TABLE `torres` (
  `id_torre` int(3) NOT NULL AUTO_INCREMENT,
  `nombre_torre` varchar(50) NOT NULL,
  `id_condominio` int(3) NOT NULL,
  PRIMARY KEY (`id_torre`),
  UNIQUE KEY `id_torre` (`id_torre`),
  UNIQUE KEY `torre_unica` (`nombre_torre`,`id_condominio`) USING BTREE,
  KEY `condo_torre` (`id_condominio`),
  CONSTRAINT `condo_torre` FOREIGN KEY (`id_condominio`) REFERENCES `condominios` (`id_condominio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of torres
-- ----------------------------
INSERT INTO `torres` VALUES ('1', 'I', '1');
INSERT INTO `torres` VALUES ('2', 'II', '1');
INSERT INTO `torres` VALUES ('3', 'III', '1');
INSERT INTO `torres` VALUES ('4', 'IV', '1');
INSERT INTO `torres` VALUES ('9', 'IX', '1');
INSERT INTO `torres` VALUES ('5', 'V', '1');
INSERT INTO `torres` VALUES ('6', 'VI', '1');
INSERT INTO `torres` VALUES ('7', 'VII', '1');
INSERT INTO `torres` VALUES ('8', 'VIII', '1');
INSERT INTO `torres` VALUES ('10', 'X', '1');
INSERT INTO `torres` VALUES ('11', 'XI', '1');
INSERT INTO `torres` VALUES ('12', 'XII', '1');
INSERT INTO `torres` VALUES ('13', 'XIII', '1');
INSERT INTO `torres` VALUES ('14', 'XIV', '1');

-- ----------------------------
-- Table structure for `usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_persona` int(10) unsigned NOT NULL,
  `id_grupo` int(10) unsigned NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `clave` varchar(32) NOT NULL,
  `fecha_registro` int(12) NOT NULL,
  `ultima_entrada` int(10) NOT NULL,
  `estatus` varchar(1) NOT NULL DEFAULT '1' COMMENT '1:activo, 2:inactivo, 3:contrato_vencido',
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `in_usuario` (`usuario`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', '1', 'jhojana', '81dc9bdb52d04dc20036dbd8313ed055', '1347424200', '1349891584', '1');

-- ----------------------------
-- Table structure for `usuarios_accesos`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios_accesos`;
CREATE TABLE `usuarios_accesos` (
  `id_acceso` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `seguridad` int(4) NOT NULL,
  PRIMARY KEY (`id_acceso`),
  UNIQUE KEY `in_nombre` (`nombre`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of usuarios_accesos
-- ----------------------------
INSERT INTO `usuarios_accesos` VALUES ('1', 'Torres / Edificios', '2222');
INSERT INTO `usuarios_accesos` VALUES ('2', 'Pisos', '2222');
INSERT INTO `usuarios_accesos` VALUES ('3', 'Apartamento', '2222');
INSERT INTO `usuarios_accesos` VALUES ('4', 'Propietarios', '2222');
INSERT INTO `usuarios_accesos` VALUES ('5', 'Intalaciones', '2222');
INSERT INTO `usuarios_accesos` VALUES ('6', 'Servicios', '2222');
INSERT INTO `usuarios_accesos` VALUES ('7', 'Cobertura', '2222');

-- ----------------------------
-- Table structure for `usuarios_config`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios_config`;
CREATE TABLE `usuarios_config` (
  `id_persona` int(10) unsigned NOT NULL,
  `grado` int(2) NOT NULL,
  `datos_actualizados` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_persona`),
  CONSTRAINT `usuarios_config_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of usuarios_config
-- ----------------------------
INSERT INTO `usuarios_config` VALUES ('1', '1', '0');

-- ----------------------------
-- Table structure for `usuarios_grupos`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios_grupos`;
CREATE TABLE `usuarios_grupos` (
  `id_grupo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_grupo`),
  UNIQUE KEY `in_nombre` (`nombre`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of usuarios_grupos
-- ----------------------------
INSERT INTO `usuarios_grupos` VALUES ('1', 'Super Admin');

-- ----------------------------
-- Table structure for `usuarios_grupos_permisos`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios_grupos_permisos`;
CREATE TABLE `usuarios_grupos_permisos` (
  `id_grupo` int(10) unsigned NOT NULL,
  `id_acceso` int(10) unsigned NOT NULL,
  `seguridad` int(4) NOT NULL,
  PRIMARY KEY (`id_grupo`,`id_acceso`),
  KEY `fk_grupo_permisos-acceso` (`id_acceso`) USING BTREE,
  CONSTRAINT `usuarios_grupos_permisos_ibfk_1` FOREIGN KEY (`id_acceso`) REFERENCES `usuarios_accesos` (`id_acceso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuarios_grupos_permisos_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `usuarios_grupos` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of usuarios_grupos_permisos
-- ----------------------------
INSERT INTO `usuarios_grupos_permisos` VALUES ('1', '1', '2222');
INSERT INTO `usuarios_grupos_permisos` VALUES ('1', '2', '2222');
INSERT INTO `usuarios_grupos_permisos` VALUES ('1', '3', '2222');
INSERT INTO `usuarios_grupos_permisos` VALUES ('1', '4', '2222');
INSERT INTO `usuarios_grupos_permisos` VALUES ('1', '5', '2222');
INSERT INTO `usuarios_grupos_permisos` VALUES ('1', '6', '2222');
INSERT INTO `usuarios_grupos_permisos` VALUES ('1', '7', '2222');

-- ----------------------------
-- View structure for `vmenu`
-- ----------------------------
DROP VIEW IF EXISTS `vmenu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vmenu` AS select `menu`.`id_menu` AS `id_menu`,`usuarios_grupos`.`id_grupo` AS `id_grupo`,`usuarios_accesos`.`id_acceso` AS `id_acceso`,`usuarios_grupos`.`nombre` AS `grupo`,`usuarios_grupos_permisos`.`seguridad` AS `grupo_seguridad`,`usuarios_accesos`.`nombre` AS `acceso`,`usuarios_accesos`.`seguridad` AS `acceso_seguridad`,`menu`.`id` AS `id`,`menu`.`clase` AS `clase`,`menu`.`nombre` AS `nombre`,`menu`.`url` AS `url`,`menu`.`orden` AS `orden`,`menu`.`tipo` AS `tipo`,`menu`.`session` AS `session`,`menu`.`target` AS `target` from (((`menu` join `usuarios_grupos_permisos` on((`menu`.`id_acceso` = `usuarios_grupos_permisos`.`id_acceso`))) join `usuarios_grupos` on((`usuarios_grupos_permisos`.`id_grupo` = `usuarios_grupos`.`id_grupo`))) join `usuarios_accesos` on((`usuarios_grupos_permisos`.`id_acceso` = `usuarios_accesos`.`id_acceso`))) ;

-- ----------------------------
-- View structure for `vusuarios`
-- ----------------------------
DROP VIEW IF EXISTS `vusuarios`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vusuarios` AS select `personas`.`id_persona` AS `id_persona`,`usuarios_grupos`.`id_grupo` AS `id_grupo`,`personas`.`id_grupo` AS `id_grupo_persona`,`personas`.`identificacion` AS `identificacion`,`personas`.`nombre` AS `nombre`,`personas`.`apellido` AS `apellido`,`usuarios_grupos`.`nombre` AS `grupo`,`usuarios`.`usuario` AS `usuario`,`usuarios`.`clave` AS `clave`,`usuarios`.`ultima_entrada` AS `ultima_entrada`,`usuarios_config`.`datos_actualizados` AS `datos_actualizados`,`usuarios`.`estatus` AS `estatus`,`personas`.`correo` AS `correo`,'1' AS `id_condominio` from (((`usuarios` join `usuarios_grupos` on((`usuarios`.`id_grupo` = `usuarios_grupos`.`id_grupo`))) join `personas` on((`usuarios`.`id_persona` = `personas`.`id_persona`))) left join `usuarios_config` on((`personas`.`id_persona` = `usuarios_config`.`id_persona`))) ;

-- ----------------------------
-- View structure for `v_cant_torres`
-- ----------------------------
DROP VIEW IF EXISTS `v_cant_torres`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cant_torres` AS select `torres`.`id_condominio` AS `id_condominio`,count(0) AS `count(*)` from `torres` group by `torres`.`id_condominio` ;

-- ----------------------------
-- View structure for `v_cant_torres_rubros`
-- ----------------------------
DROP VIEW IF EXISTS `v_cant_torres_rubros`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cant_torres_rubros` AS select `rubro_torre`.`id_torre` AS `id_torre`,`rubro_torre`.`id_rubro` AS `id_rubro`,count(0) AS `count(*)` from `rubro_torre` group by `rubro_torre`.`id_torre`,`rubro_torre`.`id_rubro` ;

-- ----------------------------
-- View structure for `v_facturas_x_torre`
-- ----------------------------
DROP VIEW IF EXISTS `v_facturas_x_torre`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_facturas_x_torre` AS select `facturas`.`id_factura` AS `id_factura`,`facturas`.`fac_descripcion` AS `fac_descripcion`,`facturas`.`fac_monto` AS `fac_monto`,`facturas`.`fac_periodo` AS `fac_periodo`,`rubro_torre`.`id_rubro` AS `id_rubro`,`rubro_torre`.`id_torre` AS `id_torre`,`rubro_gastos`.`id_condominio` AS `id_condominio` from ((`facturas` join `rubro_gastos`) join `rubro_torre`) where ((`facturas`.`id_rubro` = `rubro_gastos`.`id_rubro`) and (`rubro_gastos`.`id_rubro` = `rubro_torre`.`id_rubro`)) group by `rubro_torre`.`id_torre`,`rubro_torre`.`id_rubro` order by `rubro_torre`.`id_torre`,`rubro_torre`.`id_rubro`,`facturas`.`fac_descripcion`,`facturas`.`fac_periodo` ;

-- ----------------------------
-- View structure for `v_habitantes_x_torre`
-- ----------------------------
DROP VIEW IF EXISTS `v_habitantes_x_torre`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_habitantes_x_torre` AS select `torres`.`nombre_torre` AS `NOMBRE_TORRE`,`piso`.`descripcion_piso` AS `DESCRIPCION_PISO`,`propietario_apartamento`.`id_propietario_apartamento` AS `ID_PROPIETARIO_APARTAMENTO`,`apartamento`.`nombre_apt` AS `NOMBRE_APT`,`apartamento`.`alicuota` AS `ALICUOTA`,`propietario`.`nombre` AS `NOMBRE_PROPIETARIO`,`torres`.`id_condominio` AS `ID_CONDOMINIO` from ((((`piso` join `propietario_apartamento`) join `apartamento`) join `propietario`) join `torres`) where ((`torres`.`id_torre` = `piso`.`id_torre`) and (`apartamento`.`id_piso` = `piso`.`id_piso`) and (`apartamento`.`id_apartamento` = `propietario_apartamento`.`id_apartamento`) and (`propietario_apartamento`.`id_propietario` = `propietario`.`id_propietario`)) order by `torres`.`nombre_torre`,`piso`.`descripcion_piso`,`apartamento`.`nombre_apt` ;
