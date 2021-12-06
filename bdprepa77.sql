/*
 Navicat Premium Data Transfer

 Source Server         : BD
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : bdprepa77

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 05/12/2021 19:33:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alumnotrabaja
-- ----------------------------
DROP TABLE IF EXISTS `alumnotrabaja`;
CREATE TABLE `alumnotrabaja`  (
  `idAlumnoTrabaja` int NOT NULL AUTO_INCREMENT,
  `descripcionTrabaja` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idAlumnoTrabaja`) USING BTREE,
  UNIQUE INDEX `key_AlumnoTrabajaDescripcionAlumnoTrabaja`(`descripcionTrabaja`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of alumnotrabaja
-- ----------------------------
INSERT INTO `alumnotrabaja` VALUES (2, 'NO');
INSERT INTO `alumnotrabaja` VALUES (1, 'SI');

-- ----------------------------
-- Table structure for beca
-- ----------------------------
DROP TABLE IF EXISTS `beca`;
CREATE TABLE `beca`  (
  `idBeca` int NOT NULL AUTO_INCREMENT,
  `tipoBeca` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idBeca`) USING BTREE,
  UNIQUE INDEX `key_BecaTipoBeca`(`tipoBeca`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of beca
-- ----------------------------
INSERT INTO `beca` VALUES (6, NULL);
INSERT INTO `beca` VALUES (5, 'BENITO JUAREZ');
INSERT INTO `beca` VALUES (4, 'EXELENCIA');
INSERT INTO `beca` VALUES (1, 'NO');
INSERT INTO `beca` VALUES (2, 'OPORTUNIDADES');
INSERT INTO `beca` VALUES (3, 'PROSPERA');

-- ----------------------------
-- Table structure for datosalumno
-- ----------------------------
DROP TABLE IF EXISTS `datosalumno`;
CREATE TABLE `datosalumno`  (
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'a--MATRÍCULA',
  `nombreAlumno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'h--NOMBRE',
  `ape1Alumno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'g--APELLIDO PATERNO',
  `ape2Alumno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'f--APELLIDO MATERNO',
  `fechaBaja` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'c--FECHA DE BAJA',
  `numExpediente` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'd--NUMERO DE EXPEDIENTE',
  `folioAlumno` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'e--FOLIO',
  `CURPAlumno` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'i--CURP',
  `fechaNacimientoAlumno` date NULL DEFAULT NULL COMMENT 'p-q-r--FECHA DE NACIMIENTO',
  `correoPersonalAlumno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 't--CORREO ELECTRÓNICO PERSONAL',
  `correoInstitucionalAlumno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'u--CORREO ELECTRÓNICO INSTITUCIONAL DEL ALUMNO',
  `referenciaDomicilio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ad---REFERENCIA DE DOMICLIO',
  `telefonoFijoAlumno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ah--TELEFONO FIJO',
  `telefonoCelularAlumno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ag--TELÉFONO CELULAR DEL ALUMNO',
  `numSeguroSocial` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'al--NÚMERO DE SEGURIDAD SOCIAL',
  `folioBeca` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ap--FOLIO BECA',
  `aciertosExamenIngresoAlumno` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'aq--ACIERTOS DE EXAMEN DE INGRESO',
  `promSecundaria` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'au--PROMEDIO DE SECUNDARIA',
  `nombreTutor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'av--NOMBRE DEL TUTOR',
  `idSexo` int NOT NULL COMMENT 'l-m---SEXO',
  `idEdad` int NOT NULL COMMENT 's--EDAD',
  `idGrupo` int NOT NULL COMMENT 'w--GRUPO',
  `idGrado` int NOT NULL COMMENT 'v--GRADO',
  `idLocalidad` int NOT NULL COMMENT 'aa-DOMICILIO->LOCALIDAD',
  `idAlumnoTrabaja` int NOT NULL COMMENT 'ai-aj--EL ALUMNO TRABAJA',
  `idTipoSeguroSocial` int NULL DEFAULT NULL COMMENT 'ak--TIPO DE SEGURO DE SALUD',
  `idInscritoAlumnno` int NOT NULL COMMENT 'am-an--INSCRITO',
  `idParentesco` int NOT NULL COMMENT 'bi--DE QUIEN DEPENDE ECONÓMICAMENTE EL ALUMNO',
  `idBeca` int NULL DEFAULT NULL COMMENT 'ao--BECA',
  `idEntidadFederativa` int NOT NULL COMMENT 'n-o--LUGAR DE NACIMIENTO DEL ALUMNO',
  `CCTEscuela` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'as---C.C.T. SECUNDARIA',
  `numDomicilio` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'aa-y--DOMICILIO->NUMERO',
  `calleDomicilio` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'aa-x--DOMICILIO->CALLE',
  `colonia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'aa-z--DOMICILIO->COLONIA',
  `CP` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'aa-ac--DOMICILIO->CODIGO POSTAL',
  `idOcupacion` int NOT NULL COMMENT 'bj--OCUPACIÓN DE QUIEN DEPENDE ECONÓMICAMENTE EL ALUMNO',
  `folioCURPAlumno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'j--FOLIO CURP DE ALUMNO',
  `RFCAlumno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'k--RFC',
  `municipioNacimientoAlumno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaInscripcionAlumno` date NULL DEFAULT NULL,
  PRIMARY KEY (`matricula`) USING BTREE,
  INDEX `fk_SexoDatosAlumno_idSexo`(`idSexo`) USING BTREE,
  INDEX `fk_EdadDatosAlumno_idEdad`(`idEdad`) USING BTREE,
  INDEX `fk_GradoDatosAlumno_idGrado`(`idGrado`) USING BTREE,
  INDEX `fk_GrupoDatosAlumno_idGrupo`(`idGrupo`) USING BTREE,
  INDEX `fk_AlumnoTrabajaDatosAlumno_idAlumnoTrabaja`(`idAlumnoTrabaja`) USING BTREE,
  INDEX `fk_TipoSeguroSocialDatosAlumno_idSeguroSocial`(`idTipoSeguroSocial`) USING BTREE,
  INDEX `fk_InscritoAlumnoDatosAlumno_idInscritoAlumno`(`idInscritoAlumnno`) USING BTREE,
  INDEX `fk_ParentescoDatosAlumno_idParentesco`(`idParentesco`) USING BTREE,
  INDEX `fk_BecaDatosAlumno_idBeca`(`idBeca`) USING BTREE,
  INDEX `fk_EscuelaDatosAlumnos_CCTEscuela`(`CCTEscuela`) USING BTREE,
  INDEX `fk_MunicipioDatosAlumnos_idMunicipio`(`idEntidadFederativa`) USING BTREE,
  INDEX `fk_LocalidadDatosAlumno_idLocalidad`(`idLocalidad`) USING BTREE,
  INDEX `fk_Ocupacion`(`idOcupacion`) USING BTREE,
  INDEX `key_DatosAlum_numExpediente`(`numExpediente`) USING BTREE,
  INDEX `key_DatosAlum_FolioAlumno`(`folioAlumno`) USING BTREE,
  INDEX `key_DatosAlum_CURPAlumno`(`CURPAlumno`) USING BTREE,
  INDEX `key_DatosAlum_numSeguroSocial`(`numSeguroSocial`) USING BTREE,
  INDEX `key_DatosAlum_FolioBeca`(`folioBeca`) USING BTREE,
  CONSTRAINT `fk_AlumnoTrabajaDatosAlumno_idAlumnoTrabaja` FOREIGN KEY (`idAlumnoTrabaja`) REFERENCES `alumnotrabaja` (`idAlumnoTrabaja`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_BecaDatosAlumno_idBeca` FOREIGN KEY (`idBeca`) REFERENCES `beca` (`idBeca`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_EdadDatosAlumno_idEdad` FOREIGN KEY (`idEdad`) REFERENCES `edad` (`idEdad`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_EscuelaDatosAlumnos_CCTEscuela` FOREIGN KEY (`CCTEscuela`) REFERENCES `escuela` (`CCTEscuela`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_GradoDatosAlumno_idGrado` FOREIGN KEY (`idGrado`) REFERENCES `grado` (`idGrado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_GrupoDatosAlumno_idGrupo` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_InscritoAlumnoDatosAlumno_idInscritoAlumno` FOREIGN KEY (`idInscritoAlumnno`) REFERENCES `inscritoalumno` (`idInscrito`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_LocalidadDatosAlumno_idLocalidad` FOREIGN KEY (`idLocalidad`) REFERENCES `localidad` (`idLocalidad`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_MunicipioDatosAlumnos_idEntidadFederativa` FOREIGN KEY (`idEntidadFederativa`) REFERENCES `entidadfederativa` (`idEntidadFederativa`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_OcupacionDatosDocente_idOcupacion` FOREIGN KEY (`idOcupacion`) REFERENCES `ocupacion` (`idOcupacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ParentescoDatosAlumno_idParentesco` FOREIGN KEY (`idParentesco`) REFERENCES `parentesco` (`idParentesco`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_SexoDatosAlumno_idSexo` FOREIGN KEY (`idSexo`) REFERENCES `sexo` (`idSexo`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_TipoSeguroSocialDatosAlumno_idSeguroSocial` FOREIGN KEY (`idTipoSeguroSocial`) REFERENCES `tiposegurosocial` (`idSeguroSocial`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of datosalumno
-- ----------------------------
INSERT INTO `datosalumno` VALUES ('12345678665', 'JESUS', 'MONTIEL', 'ORNELAS', '2021-07-29', '2223', '232323423', 'VAMM000510MMCHJRA7', '2021-07-13', '', '', 'CERCA DE LA ESCUELA ', '', '', '23456789765', '3456789', '222', '7', 'JORGE', 1, 7, 3, 1, 9, 1, 2, 1, 4, 4, 3, '15EES0643J', '44', 'qwe23', 'AGUA CALIENTE', '54643', 5, 'VAMNSJUDI4', 'JAMR000414HHJO8', 'EKLJTJI', '2021-07-13');
INSERT INTO `datosalumno` VALUES ('20182306666', 'MATIAS', 'FRANCO', 'SANTANA', '2021-08-07', '0009', '234571788', 'CGVJFEJKDSÑOCJ890R', '2021-07-13', '', '', 'CERCA DE LA ESCUELA ', '', '', '23456', '45678', '87', '8', 'JORGE', 1, 3, 3, 2, 10, 2, 2, 1, 7, 4, 10, '15EES0163B', 'SIN NUMERO', 'SIN CALLE', 'LAS LOMAS', '54645', 8, 'CGVJFEJKDS', 'CGVJFEJKDSÑOCJ8', 'TULA', '2021-07-13');
INSERT INTO `datosalumno` VALUES ('20182308333', 'JUDAS', 'TORRECILLAS', 'MELENDEZ', '2023-05-16', '0008', '000000008', 'VAMM000510MMCHJR66', '2020-11-01', '', '', 'CERCA DEL POZO', '', '', '', '', '99', '8', 'MAURICIO GONZALEZ ', 2, 5, 2, 2, 5, 2, 6, 1, 4, 1, 15, '15EES0643J', '1121212121', 'SIN CALLE', 'OJO DE AGUA', '543675', 7, 'VAMM000510', 'VAMM000510MM666', 'TULA DE ALLENDE', '2021-07-12');
INSERT INTO `datosalumno` VALUES ('20182308432', 'MELISSA', 'DE LA O', 'JUAREZ', '2019-11-27', '8365', '385729785', 'SJKGIUWQ642367I34Y', '2003-06-17', '', '', 'CERCA DE LA PALMERA', '837528735', '7365739236', '', '', '78', '8.7', 'JUAN DE LA O MATINEZ', 2, 4, 2, 3, 15, 1, 6, 1, 3, 1, 15, '15EES0163B', 'SIN NUMERO', 'SIN CALLE', 'DENHI', '54245', 8, 'WHUWH74387', 'JDHWUHR837583', 'CHAPINGO', '2019-07-22');
INSERT INTO `datosalumno` VALUES ('2018230872', 'RODRI', 'JAVIER', 'ORNELAS', '2021-07-06', '0004', '000000004', 'JAMR000414HHJOL02', '2000-04-14', '', '', 'MILPAS Y LA AUTOPISTA', '23554664641', '5599933524', '', '111111111111111', '60', '7.7', 'REYNA MONTIEL', 1, 10, 4, 2, 38, 1, 6, 1, 7, 5, 13, '15ETV0094B', 'SIN NUMERO', 'SIN CALLE', 'AGUA FRIA', '54380', 4, '2222222222', 'JAMR000414HHJOL', 'TULA', '2021-07-13');
INSERT INTO `datosalumno` VALUES ('20182308721', 'MARIAN', 'JAVIER', 'VAZQUEZ', '2021-07-13', '0005', '000000005', 'CGVJFEJKDSÑOCJ1111', '2001-10-24', '', '', 'CERCA DEL POZO DE AGUA', '', '', '111', '222222222222222', '44', '7', 'VICTOR HUGO', 1, 5, 1, 1, 15, 2, 6, 1, 6, 1, 15, '15DES0310W', 'SIN NUMERO', 'SIN CALLE', 'AGUA CALIENTE', '54381', 3, 'AGETYWHSI1', 'VAERRGSVY888AN1', 'CHAPA', '2021-07-13');
INSERT INTO `datosalumno` VALUES ('201823192', 'MARIAN', 'VAZQUEZ', 'MONTIEL', '2021-07-07', '6666', '777', 'VAMM000510MMCZNTT8', '2000-05-10', 'MARIAN@HOTMAIL.COM', 'VAZQUEZMARIAN@PREPA77', 'CERCA DEL POZO DE AGUA', '2355466464', '4567298516', '12378267888', '444', '100', '9', 'REYNA MONTIEL', 2, 7, 2, 2, 15, 2, 2, 1, 7, 4, 15, '15DES0310W', 'SIN NUMERO', 'SIN CALLE', 'AGUA FRIA', '54380', 8, 'VAE35AG666', 'VAERRGSVY888ANN', 'CHAPA', '2021-06-28');
INSERT INTO `datosalumno` VALUES ('201823320', 'VICTOR HUGO', 'VALDEZ', 'ROBLES', '0000-00-00', '0001', '1212', 'VARV991101HCMLBC04', '1999-11-01', 'valdez@hotmail.com', 'valdez@tesji.com', 'SIN REFERENCIA', '552363542321', '5586034734', '32442331312', '123423122334222', '100', '9', 'VIRGINIA ROBLES', 1, 2, 3, 1, 8, 1, 3, 1, 7, 4, 15, '15EES0711Q', 'S/N', 'SIN CALLE', 'LA LOMA', '54385', 8, '1234567891', 'VARV991101HCML', 'SAN FELIPE', '2018-08-07');
INSERT INTO `datosalumno` VALUES ('201823674', 'MARIA', 'GONZALEZ', 'APARICIO', '2021-07-09', '7653', '74374298', 'JAMR000414HHJOL736', '2005-06-13', '', '', 'LADO DEL SUPER DON NICO', '7365823746', '6726457287', '6745564', '84398256928', '74', '9.0', 'MAURICIO GONZALEZ LUCAS', 2, 2, 2, 2, 13, 1, 4, 1, 7, 2, 15, '15DES0310W', 'SIN NUMERO', 'SIN CALLE', 'OJO DE AGUA', '54256', 5, 'UEE8392283', 'JFHUEH3932283', 'TEUPAN', '2021-07-01');
INSERT INTO `datosalumno` VALUES ('201823777', 'JORGE ALFREDO', 'TORRECILLAS', 'MELENDEZ', '0000-00-00', '5643', '65438', 'TOMJ000826HDFRLRA1', '2000-08-26', 'jorgetorrecillas4@gmail.com', 'jorgetorrecillas4@gmail.com', '', '', '5577983693', '55477656756', '', '78', '9', 'DULCE CONCEPCION MELENDEZ CASTILLO', 1, 2, 1, 1, 27, 2, 1, 2, 6, 1, 15, '15EES0643J', 'S/N', 'revolucion', 'FRESNO', '54678', 8, '764683', 'TOMJ00826', 'JILOTEPEC', '2019-08-12');
INSERT INTO `datosalumno` VALUES ('32323232323', 'MARIA', 'SARMIENTO', 'APARICIO', '2021-07-21', '3232', '323232323', 'VAMNSJUDIWO2E7UH09', '2021-07-13', '', '', 'CERCA DE LA ESCUELA ', '', '', '', '', '99', '7.7', '', 1, 5, 1, 1, 23, 2, 6, 2, 5, 1, 13, '15EES0643J', 'SIN NUMERO', 'SIN CALLE', 'LAS LOMAS', '54367', 5, 'VAMNSJUDI1', 'CGVJFEJKDSÑOCJ9', 'HSBDHSBDSHD', '2021-07-13');
INSERT INTO `datosalumno` VALUES ('34567896362', 'FELIPA', 'SARMIENTO', 'WALTER', '2021-07-13', '3456', '987654321', 'VAMNSJUDIWO2E7UHH3', '2000-12-12', '', '', 'MILPAS Y LA AUTOPIST', '', '', '23456789098', '876532098765434', '100', '6', 'MARIAN ELIZABETH VAZQUEZ MONTIEL', 1, 7, 2, 2, 17, 1, 2, 1, 1, 4, 9, '15EES0163B', 'SIN NUMERO', 'SIN CALLE', 'AGUA FRIA', '543678', 8, 'VAMNSJUDIW', 'VAMNSJUDIWO2E7U', 'NO SE PONLE LO QUE QUIERAS', '2021-07-13');
INSERT INTO `datosalumno` VALUES ('44643435463', 'JESUS', 'JAVIER', 'ORNELAS', '2021-07-11', '4635', '352456322', 'VAMNSJUDIWO2E7U222', '2000-06-28', '', '', 'NO HAY', '', '', '', '', '100', '9', 'MAURICIO GONZALEZ LUCAS', 1, 4, 3, 2, 11, 1, 6, 1, 5, 1, 12, '15EES0643J', 'SIN NUMERO', 'SIN CALLE', 'AGUA CALIENTE', '546451', 5, 'VAMNSJUDI3', 'VAMNSJUDIWO2E71', 'TEUPAN', '2021-07-12');
INSERT INTO `datosalumno` VALUES ('55555555555', 'JESUS', 'SARMIENTO', 'ORNELAS', '', '5555', '555555555', 'JAMR000414HHJOL025', '2000-03-01', '', '', 'CERCA DEL POZO DE AGUA', '', '', '', '', '74', '8', 'MAURICIO GONZALEZ LUCAS', 1, 7, 2, 1, 12, 2, 6, 1, 6, 1, 10, '15EES0163B', 'SIN NUMERO', 'SIN CALLE', 'AGUA CALIENTE', '543678', 5, 'VAMNSJUDI9', 'JAMR000414HHJO0', 'fgdgfudfus', '2021-07-06');

-- ----------------------------
-- Table structure for datosalumno_semestre1
-- ----------------------------
DROP TABLE IF EXISTS `datosalumno_semestre1`;
CREATE TABLE `datosalumno_semestre1`  (
  `idDatosAlumnoSemestre1` int NOT NULL AUTO_INCREMENT,
  `idMateria1` int NOT NULL,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `falta1ro` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta2do` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta3ero` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calParcial1ro` float NULL DEFAULT NULL,
  `calParcial2do` float NULL DEFAULT NULL,
  `calParcial3ero` float NULL DEFAULT NULL,
  `calExtra1` float NULL DEFAULT NULL,
  `fechaCalExtra1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra2` float NULL DEFAULT NULL,
  `fechaCalExtra2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra3` float NULL DEFAULT NULL,
  `fechaCalExtra3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra4` float NULL DEFAULT NULL,
  `fechaCalExtra4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calFinal` float NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosAlumnoSemestre1`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre1_DatosAlumno_matricula`(`matricula`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre1_semestre1_idMateria1`(`idMateria1`) USING BTREE,
  CONSTRAINT `fk_DatosAlumnoSemestre1_DatosAlumno_matricula` FOREIGN KEY (`matricula`) REFERENCES `datosalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosAlumnoSemestre1_semestre1_idMateria1` FOREIGN KEY (`idMateria1`) REFERENCES `semestre1` (`idMateria1`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datosalumno_semestre1
-- ----------------------------
INSERT INTO `datosalumno_semestre1` VALUES (1, 9, '201823192', '0', '0', '0', 9, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8.6);
INSERT INTO `datosalumno_semestre1` VALUES (2, 1, '20182308432', '0', '0', '0', 9, 9, 9, 0, '', 0, '', 0, '', 0, '', 9);
INSERT INTO `datosalumno_semestre1` VALUES (3, 2, '20182308432', '0', '0', '0', 8, 8, 8, 0, '', 0, '', 0, '', 0, '', 8);
INSERT INTO `datosalumno_semestre1` VALUES (4, 3, '20182308432', '0', '0', '0', 9, 8, 7, 0, '', 0, '', 0, '', 0, '', 8);
INSERT INTO `datosalumno_semestre1` VALUES (5, 4, '20182308432', '0', '0', '0', 7, 7, 8, 0, '', 0, '', 0, '', 0, '', 7.33333);
INSERT INTO `datosalumno_semestre1` VALUES (6, 5, '20182308432', '0', '0', '0', 7, 7, 6, 0, '', 0, '', 0, '', 0, '', 6.66667);
INSERT INTO `datosalumno_semestre1` VALUES (7, 6, '20182308432', '0', '1', '1', 8, 9, 9, 0, '', 0, '', 0, '', 0, '', 8.66667);
INSERT INTO `datosalumno_semestre1` VALUES (8, 7, '20182308432', '1', '0', '1', 8, 8, 9, 0, '', 0, '', 0, '', 0, '', 8.33333);
INSERT INTO `datosalumno_semestre1` VALUES (9, 8, '20182308432', '22', '1', '1', 9, 8, 9, 0, '', 0, '', 0, '', 0, '', 8.66667);
INSERT INTO `datosalumno_semestre1` VALUES (10, 9, '20182308432', '1', '1', '1', 9, 8, 9, 0, '', 0, '', 0, '', 0, '', 8.66667);
INSERT INTO `datosalumno_semestre1` VALUES (11, 10, '20182308432', '0', '1', '1', 7, 8, 9, 0, '', 0, '', 0, '', 0, '', 8);

-- ----------------------------
-- Table structure for datosalumno_semestre2
-- ----------------------------
DROP TABLE IF EXISTS `datosalumno_semestre2`;
CREATE TABLE `datosalumno_semestre2`  (
  `idDatosAlumnoSemestre2` int NOT NULL,
  `idMateria2` int NOT NULL,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `falta1ro` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta2do` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta3ero` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calParcial1ro` float NULL DEFAULT NULL,
  `calParcial2do` float NULL DEFAULT NULL,
  `calParcial3ero` float NULL DEFAULT NULL,
  `calExtra1` float NULL DEFAULT NULL,
  `fechaCalExtra1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra2` float NULL DEFAULT NULL,
  `fechaCalExtra2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra3` float NULL DEFAULT NULL,
  `fechaCalExtra3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra4` float NULL DEFAULT NULL,
  `fechaCalExtra4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calFinal` float NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosAlumnoSemestre2`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre2_DatosAlumno_matricula`(`matricula`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre2_semestre2_idMateria2`(`idMateria2`) USING BTREE,
  CONSTRAINT `fk_DatosAlumnoSemestre2_DatosAlumno_matricula` FOREIGN KEY (`matricula`) REFERENCES `datosalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosAlumnoSemestre2_semestre2_idMateria2` FOREIGN KEY (`idMateria2`) REFERENCES `semestre2` (`idMateria2`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datosalumno_semestre2
-- ----------------------------
INSERT INTO `datosalumno_semestre2` VALUES (1, 1, '20182308432', '0', '0', '0', 9, 9, 9, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 9);

-- ----------------------------
-- Table structure for datosalumno_semestre3
-- ----------------------------
DROP TABLE IF EXISTS `datosalumno_semestre3`;
CREATE TABLE `datosalumno_semestre3`  (
  `idDatosAlumnoSemestre3` int NOT NULL AUTO_INCREMENT,
  `idMateria3` int NOT NULL,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `falta1ro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta2do` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta3ero` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calParcial1ro` float NULL DEFAULT NULL,
  `calParcial2do` float NULL DEFAULT NULL,
  `calParcial3ero` float NULL DEFAULT NULL,
  `calExtra1` float NULL DEFAULT NULL,
  `fechaCalExtra1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra2` float NULL DEFAULT NULL,
  `fechaCalExtra2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra3` float NULL DEFAULT NULL,
  `fechaCalExtra3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra4` float NULL DEFAULT NULL,
  `fechaCalExtra4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calFinal` float NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosAlumnoSemestre3`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre3_DatosAlumno_matricula`(`matricula`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre3_semestre3_idMateria3`(`idMateria3`) USING BTREE,
  CONSTRAINT `fk_DatosAlumnoSemestre3_DatosAlumno_matricula` FOREIGN KEY (`matricula`) REFERENCES `datosalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosAlumnoSemestre3_semestre3_idMateria3` FOREIGN KEY (`idMateria3`) REFERENCES `semestre3` (`idMateria3`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datosalumno_semestre3
-- ----------------------------

-- ----------------------------
-- Table structure for datosalumno_semestre4
-- ----------------------------
DROP TABLE IF EXISTS `datosalumno_semestre4`;
CREATE TABLE `datosalumno_semestre4`  (
  `idDatosAlumnoSemestre4` int NOT NULL AUTO_INCREMENT,
  `idMateria4` int NOT NULL,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `falta1ro` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta2do` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta3ero` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calParcial1ro` float NULL DEFAULT NULL,
  `calParcial2do` float NULL DEFAULT NULL,
  `calParcial3ero` float NULL DEFAULT NULL,
  `calExtra1` float NULL DEFAULT NULL,
  `fechaCalExtra1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra2` float NULL DEFAULT NULL,
  `fechaCalExtra2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra3` float NULL DEFAULT NULL,
  `fechaCalExtra3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra4` float NULL DEFAULT NULL,
  `fechaCalExtra4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calFinal` float NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosAlumnoSemestre4`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre4_DatosAlumno_matricula`(`matricula`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre4_semestre4_idMateria4`(`idMateria4`) USING BTREE,
  CONSTRAINT `fk_DatosAlumnoSemestre4_DatosAlumno_matricula` FOREIGN KEY (`matricula`) REFERENCES `datosalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosAlumnoSemestre4_semestre4_idMateria4` FOREIGN KEY (`idMateria4`) REFERENCES `semestre4` (`idMateria4`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datosalumno_semestre4
-- ----------------------------

-- ----------------------------
-- Table structure for datosalumno_semestre5
-- ----------------------------
DROP TABLE IF EXISTS `datosalumno_semestre5`;
CREATE TABLE `datosalumno_semestre5`  (
  `idDatosAlumnoSemestre5` int NOT NULL AUTO_INCREMENT,
  `idMateria5` int NOT NULL,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `falta1ro` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta2do` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta3ero` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calParcial1ro` float NULL DEFAULT NULL,
  `calParcial2do` float NULL DEFAULT NULL,
  `calParcial3ero` float NULL DEFAULT NULL,
  `calExtra1` float NULL DEFAULT NULL,
  `fechaCalExtra1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra2` float NULL DEFAULT NULL,
  `fechaCalExtra2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra3` float NULL DEFAULT NULL,
  `fechaCalExtra3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra4` float NULL DEFAULT NULL,
  `fechaCalExtra4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calFinal` float NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosAlumnoSemestre5`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre5_DatosAlumno_matricula`(`matricula`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre5_semestre5_idMateria5`(`idMateria5`) USING BTREE,
  CONSTRAINT `fk_DatosAlumnoSemestre5_DatosAlumno_matricula` FOREIGN KEY (`matricula`) REFERENCES `datosalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosAlumnoSemestre5_semestre5_idMateria5` FOREIGN KEY (`idMateria5`) REFERENCES `semestre5` (`idMateria5`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datosalumno_semestre5
-- ----------------------------

-- ----------------------------
-- Table structure for datosalumno_semestre6
-- ----------------------------
DROP TABLE IF EXISTS `datosalumno_semestre6`;
CREATE TABLE `datosalumno_semestre6`  (
  `idDatosAlumnoSemestre6` int NOT NULL AUTO_INCREMENT,
  `idMateria6` int NOT NULL,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `falta1ro` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta2do` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `falta3ero` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calParcial1ro` float NULL DEFAULT NULL,
  `calParcial2do` float NULL DEFAULT NULL,
  `calParcial3ero` float NULL DEFAULT NULL,
  `calExtra1` float NULL DEFAULT NULL,
  `fechaCalExtra1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra2` float NULL DEFAULT NULL,
  `fechaCalExtra2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra3` float NULL DEFAULT NULL,
  `fechaCalExtra3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calExtra4` float NULL DEFAULT NULL,
  `fechaCalExtra4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `calFinal` float NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosAlumnoSemestre6`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre6_DatosAlumno_matricula`(`matricula`) USING BTREE,
  INDEX `fk_DatosAlumnoSemestre6_semestre6_idMateria6`(`idMateria6`) USING BTREE,
  CONSTRAINT `fk_DatosAlumnoSemestre6_DatosAlumno_matricula` FOREIGN KEY (`matricula`) REFERENCES `datosalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosAlumnoSemestre6_semestre6_idMateria6` FOREIGN KEY (`idMateria6`) REFERENCES `semestre6` (`idMateria6`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datosalumno_semestre6
-- ----------------------------

-- ----------------------------
-- Table structure for datosdocente_doctorado
-- ----------------------------
DROP TABLE IF EXISTS `datosdocente_doctorado`;
CREATE TABLE `datosdocente_doctorado`  (
  `idDatosDocenteDoctorado` int NOT NULL AUTO_INCREMENT,
  `descripcionTituladoPasante` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CURPDatosDocentes` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idDoctorado` int NOT NULL,
  `noCedulaProfesionalDoctorado` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosDocenteDoctorado`) USING BTREE,
  INDEX `fk_DatosDocentesDoctorado_idDoctorado`(`idDoctorado`) USING BTREE,
  INDEX `fk_DatosDocentesDoctorado_CURPDatosDocentes`(`CURPDatosDocentes`) USING BTREE,
  CONSTRAINT `fk_DatosDocentesDoctorado_CURPDatosDocentes` FOREIGN KEY (`CURPDatosDocentes`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosDocentesDoctorado_idDoctorado` FOREIGN KEY (`idDoctorado`) REFERENCES `doctorado` (`idDoctorado`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of datosdocente_doctorado
-- ----------------------------

-- ----------------------------
-- Table structure for datosdocente_especializacion
-- ----------------------------
DROP TABLE IF EXISTS `datosdocente_especializacion`;
CREATE TABLE `datosdocente_especializacion`  (
  `idDatosDocenteEspecializacion` int NOT NULL AUTO_INCREMENT,
  `CURPDatosDocentes` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idEspecializacion` int NOT NULL,
  `fechaEgresoEspecializacion` varbinary(10) NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosDocenteEspecializacion`) USING BTREE,
  INDEX `fk_DatosDocentesEspecializacion_idLicenciatura`(`idEspecializacion`) USING BTREE,
  INDEX `fk_DatosDocentesEspecializacion_CURPDatosDocentes`(`CURPDatosDocentes`) USING BTREE,
  CONSTRAINT `fk_DatosDocentesEspecializacion_CURPDatosDocentes` FOREIGN KEY (`CURPDatosDocentes`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosDocentesEspecializacion_idLicenciatura` FOREIGN KEY (`idEspecializacion`) REFERENCES `especializacion` (`idEspecializacion`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of datosdocente_especializacion
-- ----------------------------
INSERT INTO `datosdocente_especializacion` VALUES (9, 'JUDGFIUE76573', 1, 0x323031312D30362D3038);
INSERT INTO `datosdocente_especializacion` VALUES (10, 'HFIEUFHJ7HFUEB76', 1, 0x323030352D30332D3037);

-- ----------------------------
-- Table structure for datosdocente_licenciatura
-- ----------------------------
DROP TABLE IF EXISTS `datosdocente_licenciatura`;
CREATE TABLE `datosdocente_licenciatura`  (
  `idDatosDocenteLicenciatura` int NOT NULL AUTO_INCREMENT,
  `descripcionTituladoPasante` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CURPDatosDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idLicenciatura` int NOT NULL,
  `escuelaEgresionLicenciatura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `noCedulaProfesional` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaEscuelaEgresion` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosDocenteLicenciatura`) USING BTREE,
  INDEX `fk_DatosDocentesLicenciatura_idLicenciatura`(`idLicenciatura`) USING BTREE,
  INDEX `fk_DatosDocentesLicenciatura_CURPDatosDocentes`(`CURPDatosDocente`) USING BTREE,
  CONSTRAINT `fk_DatosDocentesLicenciatura_CURPDatosDocentes` FOREIGN KEY (`CURPDatosDocente`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosDocentesLicenciatura_idLicenciatura` FOREIGN KEY (`idLicenciatura`) REFERENCES `licenciatura` (`idLicenciatura`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of datosdocente_licenciatura
-- ----------------------------
INSERT INTO `datosdocente_licenciatura` VALUES (10, 'TITULADO', 'JUDGFIUE76573', 1, 'PREPA77', '', '');
INSERT INTO `datosdocente_licenciatura` VALUES (11, 'TITULADO', 'HFIEUFHJ7HFUEB76', 2, 'ESCUELA ANEXA A LA NORMAL', '132435', '2000-08-16');
INSERT INTO `datosdocente_licenciatura` VALUES (12, 'Titulado', 'VAMOISTEY3ENQ2344D', 1, 'TESJI', '637892323', '');
INSERT INTO `datosdocente_licenciatura` VALUES (15, 'TITULADO', 'HFIEUFHJ7HFUEB76', 2, 'ESCUELA ANEXA A LA NORMAL', '132435', '2000-08-16');

-- ----------------------------
-- Table structure for datosdocente_maestria
-- ----------------------------
DROP TABLE IF EXISTS `datosdocente_maestria`;
CREATE TABLE `datosdocente_maestria`  (
  `idDatosDocenteMaestria` int NOT NULL AUTO_INCREMENT,
  `descripcionTituladoPasante` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CURPDatosDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idMaestria` int NOT NULL,
  `noCedulaProfesionalMaestria` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosDocenteMaestria`) USING BTREE,
  INDEX `fk_DatosDatosMaestria_idMaestria`(`idMaestria`) USING BTREE,
  INDEX `fk_DatosDocenteMaestria_CURPDatosDocentes`(`CURPDatosDocente`) USING BTREE,
  CONSTRAINT `fk_DatosDatosMaestria_idMaestria` FOREIGN KEY (`idMaestria`) REFERENCES `maestria` (`idMaestria`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosDocenteMaestria_CURPDatosDocentes` FOREIGN KEY (`CURPDatosDocente`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of datosdocente_maestria
-- ----------------------------
INSERT INTO `datosdocente_maestria` VALUES (9, 'Pasante', 'JUDGFIUE76573', 1, '');
INSERT INTO `datosdocente_maestria` VALUES (10, 'Titulado', 'HFIEUFHJ7HFUEB76', 1, '');

-- ----------------------------
-- Table structure for datosdocentes
-- ----------------------------
DROP TABLE IF EXISTS `datosdocentes`;
CREATE TABLE `datosdocentes`  (
  `CURPDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombreDocente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ape1Docente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ape2Docente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaNacimientoDocente` date NOT NULL,
  `RFCDocente` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `claveISSEMYM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telefonoCelular` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telefonoFijo` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaDeIngresoSEducativoEstatal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaDeIngresoAlNivel` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaDeBaseAlNivel` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaDeIngresoAlCargo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaDeIngresoInstitucion` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaDeIngresoCarreraDocente` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `puntajeEscalafonario` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CCTEscuela` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idNivelLaboral` int NOT NULL,
  `idPuestoInstitucional` int NOT NULL,
  `idLocalidad` int NOT NULL,
  `calleDocente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `numeroDocente` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `coloniaDocente` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CPDocente` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`CURPDocente`) USING BTREE,
  UNIQUE INDEX `key_DatosDocente_RFCDocente`(`RFCDocente`) USING BTREE,
  UNIQUE INDEX `key_DatosDocente_telefonoCelular`(`telefonoCelular`) USING BTREE,
  UNIQUE INDEX `key_DatosDocente_claveISSEMYM`(`claveISSEMYM`) USING BTREE,
  INDEX `fk_EscuelaDatosDocente_CCTEscuela`(`CCTEscuela`) USING BTREE,
  INDEX `fk_NivelLaboralDatosDocente_idNivelLaboral`(`idNivelLaboral`) USING BTREE,
  INDEX `fk_PuestoInstitucionalDatosDocente_idPuestoInstitucional`(`idPuestoInstitucional`) USING BTREE,
  INDEX `kf_LocalidadDatosDocente_idLocalidad`(`idLocalidad`) USING BTREE,
  CONSTRAINT `fk_EscuelaDatosDocente_CCTEscuela` FOREIGN KEY (`CCTEscuela`) REFERENCES `escuela` (`CCTEscuela`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_NivelLaboralDatosDocente_idNivelLaboral` FOREIGN KEY (`idNivelLaboral`) REFERENCES `nivellaboral` (`idNivelLaboral`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_PuestoInstitucionalDatosDocente_idPuestoInstitucional` FOREIGN KEY (`idPuestoInstitucional`) REFERENCES `puestoinstitucional` (`idPuestoInstitucional`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `kf_LocalidadDatosDocente_idLocalidad` FOREIGN KEY (`idLocalidad`) REFERENCES `localidad` (`idLocalidad`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of datosdocentes
-- ----------------------------
INSERT INTO `datosdocentes` VALUES ('HFIEUFHJ7HFUEB76', 'JORGE', 'MARTINEZ', 'GONZALES ', '1978-08-13', 'HJDHFUE7', '857VHHR873', '5576348723', '5576324323', '2001-12-23', '2003-03-04', '2004-09-05', '2004-04-20', '2005-03-15', '2005-04-11', '3113', '15EES0643J', 3, 5, 20, 'LOMAS ARCOIRIS', 'S/N', 'TEMPLO', '54673');
INSERT INTO `datosdocentes` VALUES ('JUDGFIUE76573', 'MARIA', 'CAMACHO', 'MARTINEZ', '1998-09-23', 'JGFU756HFI', 'HFGYIEY746', '5546387434', '', '2012-08-23', '2011-11-12', '2015-02-12', '2016-05-23', '2016-05-23', '2015-07-07', '342', '15EBH0164Y', 2, 5, 9, 'LOPEZ MATEOS', 'S/N', 'REHENES', '54763');
INSERT INTO `datosdocentes` VALUES ('VAMOISTEY3ENQ2344D', 'MARCELO', 'PEREZ', 'MARTINEZ ', '2021-05-06', 'JGFU756HF3', 'HFGYIEY742', '5546387433', '13452678190', '2021-07-07', '2021-04-01', '2021-03-11', '2021-03-12', '2021-04-14', '2021-03-29', '1234', '15EBH0164Y', 2, 5, 1, 'LAS LOMAS', '234', 'SAN PEDRO', '54380');
INSERT INTO `datosdocentes` VALUES ('VASDMDEJNYUGWBH357', 'ANA', 'SOLIZ', 'LOPEZ ', '1999-06-29', '1234567890', 'FFSD3R6R74', '5637892072', '', '', '', '', '', '', '', '789', '15EBH0164Y', 3, 2, 11, 'SIN CALLE', 'SIN NUMERO', 'LAS PEÑAS', '54366');

-- ----------------------------
-- Table structure for datosdocentes_diplomado
-- ----------------------------
DROP TABLE IF EXISTS `datosdocentes_diplomado`;
CREATE TABLE `datosdocentes_diplomado`  (
  `idDatosDocenteDiplomado` int NOT NULL AUTO_INCREMENT,
  `CURPDatosDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idDiplomado` int NOT NULL,
  `fechaEgresoDiplomado` varbinary(10) NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosDocenteDiplomado`) USING BTREE,
  INDEX `fk_DatosDocentesDiplomado_idDiplomado`(`idDiplomado`) USING BTREE,
  INDEX `fk_DatosDocentesDiplomado_CURPDatosDocentes`(`CURPDatosDocente`) USING BTREE,
  CONSTRAINT `fk_DatosDocentesDiplomado_CURPDatosDocentes` FOREIGN KEY (`CURPDatosDocente`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosDocentesDiplomado_idDiplomado` FOREIGN KEY (`idDiplomado`) REFERENCES `diplomado` (`idDiplomado`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of datosdocentes_diplomado
-- ----------------------------
INSERT INTO `datosdocentes_diplomado` VALUES (5, 'JUDGFIUE76573', 1, 0x323031372D30382D3037);
INSERT INTO `datosdocentes_diplomado` VALUES (6, 'HFIEUFHJ7HFUEB76', 1, '');

-- ----------------------------
-- Table structure for diplomado
-- ----------------------------
DROP TABLE IF EXISTS `diplomado`;
CREATE TABLE `diplomado`  (
  `idDiplomado` int NOT NULL AUTO_INCREMENT,
  `descripcionDiplomado` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idDiplomado`) USING BTREE,
  UNIQUE INDEX `key_Diplomado_DescDiplomado`(`descripcionDiplomado`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of diplomado
-- ----------------------------
INSERT INTO `diplomado` VALUES (1, 'FILOSOFIA Y LETRAS');

-- ----------------------------
-- Table structure for doctorado
-- ----------------------------
DROP TABLE IF EXISTS `doctorado`;
CREATE TABLE `doctorado`  (
  `idDoctorado` int NOT NULL AUTO_INCREMENT,
  `descripcionDoctorado` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idDoctorado`) USING BTREE,
  UNIQUE INDEX `key_Doctorado_DesDoctorado`(`descripcionDoctorado`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doctorado
-- ----------------------------
INSERT INTO `doctorado` VALUES (2, 'CIENCIAS METALURGICAS');
INSERT INTO `doctorado` VALUES (1, 'PSICOLOGIA DE LAS MASAS');

-- ----------------------------
-- Table structure for documentoalumno
-- ----------------------------
DROP TABLE IF EXISTS `documentoalumno`;
CREATE TABLE `documentoalumno`  (
  `idDocumento` int NOT NULL,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idNombreArchivo` int NOT NULL,
  `documento` blob NULL,
  PRIMARY KEY (`idDocumento`) USING BTREE,
  INDEX `fk_matri`(`matricula`) USING BTREE,
  INDEX `fk_NombreArchivo`(`idNombreArchivo`) USING BTREE,
  CONSTRAINT `fk_archivo` FOREIGN KEY (`idNombreArchivo`) REFERENCES `nombrearchivo` (`idNombreArchivo`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_matri` FOREIGN KEY (`matricula`) REFERENCES `datosalumno` (`matricula`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documentoalumno
-- ----------------------------

-- ----------------------------
-- Table structure for documentodocente
-- ----------------------------
DROP TABLE IF EXISTS `documentodocente`;
CREATE TABLE `documentodocente`  (
  `idDocumento` int NOT NULL,
  `CURPDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idNombreArchivo` int NOT NULL,
  `documento` blob NULL,
  PRIMARY KEY (`idDocumento`) USING BTREE,
  INDEX `fk_docenteCurp`(`CURPDocente`) USING BTREE,
  INDEX `fk_NombreArchivo`(`idNombreArchivo`) USING BTREE,
  CONSTRAINT `fk_docenteCurp` FOREIGN KEY (`CURPDocente`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_NombreArchivo` FOREIGN KEY (`idNombreArchivo`) REFERENCES `nombrearchivo` (`idNombreArchivo`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documentodocente
-- ----------------------------

-- ----------------------------
-- Table structure for edad
-- ----------------------------
DROP TABLE IF EXISTS `edad`;
CREATE TABLE `edad`  (
  `idEdad` int NOT NULL AUTO_INCREMENT,
  `edad` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idEdad`) USING BTREE,
  UNIQUE INDEX `key_Edad_Edad`(`edad`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of edad
-- ----------------------------
INSERT INTO `edad` VALUES (1, '13');
INSERT INTO `edad` VALUES (2, '14');
INSERT INTO `edad` VALUES (3, '15');
INSERT INTO `edad` VALUES (4, '16');
INSERT INTO `edad` VALUES (5, '17');
INSERT INTO `edad` VALUES (7, '18');
INSERT INTO `edad` VALUES (8, '19');
INSERT INTO `edad` VALUES (9, '20');
INSERT INTO `edad` VALUES (10, '21');
INSERT INTO `edad` VALUES (11, '22');
INSERT INTO `edad` VALUES (12, '23');
INSERT INTO `edad` VALUES (13, '24');
INSERT INTO `edad` VALUES (14, '25');
INSERT INTO `edad` VALUES (15, '26');
INSERT INTO `edad` VALUES (16, '27');
INSERT INTO `edad` VALUES (17, '28');
INSERT INTO `edad` VALUES (18, '29');
INSERT INTO `edad` VALUES (19, '30');

-- ----------------------------
-- Table structure for entidadfederativa
-- ----------------------------
DROP TABLE IF EXISTS `entidadfederativa`;
CREATE TABLE `entidadfederativa`  (
  `idEntidadFederativa` int NOT NULL AUTO_INCREMENT,
  `descripcionEntidad` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idEntidadFederativa`) USING BTREE,
  UNIQUE INDEX `key_EntidadFederativa_DesEntidad`(`descripcionEntidad`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of entidadfederativa
-- ----------------------------
INSERT INTO `entidadfederativa` VALUES (4, ' CAMPECHE');
INSERT INTO `entidadfederativa` VALUES (1, 'AGUASCALIENTES');
INSERT INTO `entidadfederativa` VALUES (2, 'BAJA CALIFORNIA');
INSERT INTO `entidadfederativa` VALUES (3, 'BAJA CALIFORNIA SUR');
INSERT INTO `entidadfederativa` VALUES (7, 'CHIAPAS');
INSERT INTO `entidadfederativa` VALUES (8, 'CHIHUAHUA');
INSERT INTO `entidadfederativa` VALUES (9, 'CIUDAD DE MÉXICO');
INSERT INTO `entidadfederativa` VALUES (5, 'COAHUILA');
INSERT INTO `entidadfederativa` VALUES (6, 'COLIMA');
INSERT INTO `entidadfederativa` VALUES (10, 'DURANGO');
INSERT INTO `entidadfederativa` VALUES (11, 'GUANAJUATO');
INSERT INTO `entidadfederativa` VALUES (12, 'GUERRERO');
INSERT INTO `entidadfederativa` VALUES (13, 'HIDALGO');
INSERT INTO `entidadfederativa` VALUES (14, 'JALISCO');
INSERT INTO `entidadfederativa` VALUES (15, 'MÉXICO');
INSERT INTO `entidadfederativa` VALUES (16, 'MICHOACÁN');
INSERT INTO `entidadfederativa` VALUES (17, 'MORELOS');
INSERT INTO `entidadfederativa` VALUES (18, 'NAYARIT');
INSERT INTO `entidadfederativa` VALUES (19, 'NUEVO LEÓN');
INSERT INTO `entidadfederativa` VALUES (20, 'OAXACA');
INSERT INTO `entidadfederativa` VALUES (21, 'PUEBLA');
INSERT INTO `entidadfederativa` VALUES (22, 'QUERÉTARO');
INSERT INTO `entidadfederativa` VALUES (23, 'QUINTANA ROO');
INSERT INTO `entidadfederativa` VALUES (24, 'SAN LUIS POTOSÍ');
INSERT INTO `entidadfederativa` VALUES (25, 'SINALOA');
INSERT INTO `entidadfederativa` VALUES (26, 'SONORA');
INSERT INTO `entidadfederativa` VALUES (27, 'TABASCO');
INSERT INTO `entidadfederativa` VALUES (28, 'TAMAULIPAS');
INSERT INTO `entidadfederativa` VALUES (29, 'TLAXCALA');
INSERT INTO `entidadfederativa` VALUES (30, 'VERACRUZ');
INSERT INTO `entidadfederativa` VALUES (31, 'YUCATÁN');
INSERT INTO `entidadfederativa` VALUES (32, 'ZACATECAS');

-- ----------------------------
-- Table structure for escuela
-- ----------------------------
DROP TABLE IF EXISTS `escuela`;
CREATE TABLE `escuela`  (
  `CCTEscuela` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombreEscuela` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idTurno` int NOT NULL,
  `idLocalidad` int NOT NULL,
  `idNivelEscolar` int NOT NULL,
  `calleEscuela` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `numeroEscuela` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `coloniaEscuela` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CPEscuela` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telefonoEscuela` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CCTEscuela`) USING BTREE,
  INDEX `fk_escNivid_idNiv`(`idNivelEscolar`) USING BTREE,
  INDEX `fk_EscuelaLocalidad_idLocalidad`(`idLocalidad`) USING BTREE,
  INDEX `fk_Escuela_Turno`(`idTurno`) USING BTREE,
  CONSTRAINT `fk_escNivid_idNiv` FOREIGN KEY (`idNivelEscolar`) REFERENCES `nivelescolar` (`idNivelEscolar`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_Escuela_Turno` FOREIGN KEY (`idTurno`) REFERENCES `turno` (`idTurno`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_EscuelaLocalidad_idLocalidad` FOREIGN KEY (`idLocalidad`) REFERENCES `localidad` (`idLocalidad`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of escuela
-- ----------------------------
INSERT INTO `escuela` VALUES ('15DES0310W', 'CHIAPAN', 1, 10, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `escuela` VALUES ('15EBH0164Y', 'PREPARATORIA OFICIAL NO. 77', 1, 18, 4, 'KM 9, CARRETERA CHAPA DE MOT-EL QUINTE', 'S/N', NULL, '55543', '746464622');
INSERT INTO `escuela` VALUES ('15EES0163B', 'ANDRES  MOLINA ENRIQUEZ', 1, 35, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `escuela` VALUES ('15EES0643J', 'DOS DE MARZO', 2, 18, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `escuela` VALUES ('15EES0711Q', 'DOS DE MARZO', 1, 18, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `escuela` VALUES ('15ETV0094B', 'LIC. GABRIEL RAMOS', 1, 8, 3, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for escuelaslabora
-- ----------------------------
DROP TABLE IF EXISTS `escuelaslabora`;
CREATE TABLE `escuelaslabora`  (
  `idEscuelasLabora` int NOT NULL AUTO_INCREMENT,
  `CURPDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CCTEscuela` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idPuestoInstitucional` int NOT NULL,
  `numeroHoras` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idEscuelasLabora`) USING BTREE,
  INDEX `fk_DatosDocenteEscuelasLabora_CURPDocente`(`CURPDocente`) USING BTREE,
  INDEX `fk_EscuelaEscuelasLabora_CCTEscuela`(`CCTEscuela`) USING BTREE,
  INDEX `fk_DatosPuestoInsEscuelasLabora_idPuestoInstitucional`(`idPuestoInstitucional`) USING BTREE,
  CONSTRAINT `fk_DatosDocenteEscuelasLabora_CURPDocente` FOREIGN KEY (`CURPDocente`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosPuestoInsEscuelasLabora_idPuestoInstitucional` FOREIGN KEY (`idPuestoInstitucional`) REFERENCES `puestoinstitucional` (`idPuestoInstitucional`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_EscuelaEscuelasLabora_CCTEscuela` FOREIGN KEY (`CCTEscuela`) REFERENCES `escuela` (`CCTEscuela`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of escuelaslabora
-- ----------------------------
INSERT INTO `escuelaslabora` VALUES (13, 'JUDGFIUE76573', '15EBH0164Y', 1, '23');
INSERT INTO `escuelaslabora` VALUES (14, 'JUDGFIUE76573', '15EES0643J', 3, '12');
INSERT INTO `escuelaslabora` VALUES (15, 'HFIEUFHJ7HFUEB76', '15EBH0164Y', 4, '13');
INSERT INTO `escuelaslabora` VALUES (16, 'VAMOISTEY3ENQ2344D', '15ETV0094B', 1, '');
INSERT INTO `escuelaslabora` VALUES (17, 'VAMOISTEY3ENQ2344D', '15DES0310W', 2, '9');

-- ----------------------------
-- Table structure for escuelasnumeros
-- ----------------------------
DROP TABLE IF EXISTS `escuelasnumeros`;
CREATE TABLE `escuelasnumeros`  (
  `idEscuelaNumeros` int NOT NULL AUTO_INCREMENT,
  `numPlaza` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `numPrelacion` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `numHoras` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CCTEscuela` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CURPDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idEscuelaNumeros`) USING BTREE,
  INDEX `fk_EscuelaEscuelaNumero_CCTEscuela`(`CCTEscuela`) USING BTREE,
  INDEX `fk_EscuelaEscuelaNumero_CURPDocente`(`CURPDocente`) USING BTREE,
  CONSTRAINT `fk_EscuelaEscuelaNumero_CCTEscuela` FOREIGN KEY (`CCTEscuela`) REFERENCES `escuela` (`CCTEscuela`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_EscuelaEscuelaNumero_CURPDocente` FOREIGN KEY (`CURPDocente`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of escuelasnumeros
-- ----------------------------
INSERT INTO `escuelasnumeros` VALUES (3, '23', '2453', '34', '15EBH0164Y', 'JUDGFIUE76573');
INSERT INTO `escuelasnumeros` VALUES (4, '4', '257', '35', '15EBH0164Y', 'HFIEUFHJ7HFUEB76');

-- ----------------------------
-- Table structure for especializacion
-- ----------------------------
DROP TABLE IF EXISTS `especializacion`;
CREATE TABLE `especializacion`  (
  `idEspecializacion` int NOT NULL AUTO_INCREMENT,
  `descripcionEspecializacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idEspecializacion`) USING BTREE,
  UNIQUE INDEX `key_Especializacion_DesEspe`(`descripcionEspecializacion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of especializacion
-- ----------------------------
INSERT INTO `especializacion` VALUES (1, 'TECNICAS DE LA EDUCACION');

-- ----------------------------
-- Table structure for grado
-- ----------------------------
DROP TABLE IF EXISTS `grado`;
CREATE TABLE `grado`  (
  `idGrado` int NOT NULL AUTO_INCREMENT,
  `grado` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idGrado`) USING BTREE,
  UNIQUE INDEX `key_Grado_Grado`(`grado`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of grado
-- ----------------------------
INSERT INTO `grado` VALUES (1, '1RO');
INSERT INTO `grado` VALUES (2, '2DO');
INSERT INTO `grado` VALUES (3, '3RO');

-- ----------------------------
-- Table structure for grupo
-- ----------------------------
DROP TABLE IF EXISTS `grupo`;
CREATE TABLE `grupo`  (
  `idGrupo` int NOT NULL AUTO_INCREMENT,
  `grupo` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idGrupo`) USING BTREE,
  UNIQUE INDEX `key_Grupo_Grupo`(`grupo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of grupo
-- ----------------------------
INSERT INTO `grupo` VALUES (1, 'I');
INSERT INTO `grupo` VALUES (2, 'II');
INSERT INTO `grupo` VALUES (3, 'III');
INSERT INTO `grupo` VALUES (4, 'IV');

-- ----------------------------
-- Table structure for inscritoalumno
-- ----------------------------
DROP TABLE IF EXISTS `inscritoalumno`;
CREATE TABLE `inscritoalumno`  (
  `idInscrito` int NOT NULL AUTO_INCREMENT,
  `descripcionInscrito` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idInscrito`) USING BTREE,
  UNIQUE INDEX `key_Inscrito_desInscrito`(`descripcionInscrito`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of inscritoalumno
-- ----------------------------
INSERT INTO `inscritoalumno` VALUES (2, 'NO');
INSERT INTO `inscritoalumno` VALUES (1, 'SI');

-- ----------------------------
-- Table structure for licenciatura
-- ----------------------------
DROP TABLE IF EXISTS `licenciatura`;
CREATE TABLE `licenciatura`  (
  `idLicenciatura` int NOT NULL AUTO_INCREMENT,
  `descripcionLicenciatura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idLicenciatura`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of licenciatura
-- ----------------------------
INSERT INTO `licenciatura` VALUES (1, 'INGENIERIA EN SISTEMAS COMPUTACIONALES');
INSERT INTO `licenciatura` VALUES (2, 'LICENCIATURA  EN EDUCACION MEDIA EN EL AREA DE CIENCIAS SOCIALES');
INSERT INTO `licenciatura` VALUES (3, 'LICECIATURA EN PEDAGOGIA');
INSERT INTO `licenciatura` VALUES (4, 'INGENIERIA EN SALUD');

-- ----------------------------
-- Table structure for localidad
-- ----------------------------
DROP TABLE IF EXISTS `localidad`;
CREATE TABLE `localidad`  (
  `idLocalidad` int NOT NULL AUTO_INCREMENT,
  `localidad` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idMunicipio` int NOT NULL,
  PRIMARY KEY (`idLocalidad`) USING BTREE,
  INDEX `fk_Municipio_idMunicipio`(`idMunicipio`) USING BTREE,
  CONSTRAINT `fk_Municipio_idMunicipio` FOREIGN KEY (`idMunicipio`) REFERENCES `municipio` (`idMunicipio`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of localidad
-- ----------------------------
INSERT INTO `localidad` VALUES (1, 'BARAJAS', 21);
INSERT INTO `localidad` VALUES (2, 'CADENQUI', 21);
INSERT INTO `localidad` VALUES (3, 'CHAPA DE MOTA CENTRO', 21);
INSERT INTO `localidad` VALUES (4, 'DAMATE', 21);
INSERT INTO `localidad` VALUES (5, 'DANXHO', 21);
INSERT INTO `localidad` VALUES (6, 'DHALLE(DONGU)', 21);
INSERT INTO `localidad` VALUES (8, 'DONGU', 21);
INSERT INTO `localidad` VALUES (9, 'EL PUERTO', 21);
INSERT INTO `localidad` VALUES (10, 'EL QUINTE', 21);
INSERT INTO `localidad` VALUES (11, 'EL SALTO', 21);
INSERT INTO `localidad` VALUES (12, 'LA ESPERANZA', 21);
INSERT INTO `localidad` VALUES (13, 'LA LADERA', 21);
INSERT INTO `localidad` VALUES (14, 'LA LOMA', 21);
INSERT INTO `localidad` VALUES (15, 'MACAVACA', 21);
INSERT INTO `localidad` VALUES (17, 'MEFI', 21);
INSERT INTO `localidad` VALUES (18, 'SAN FELIPE COAMANGO', 21);
INSERT INTO `localidad` VALUES (19, 'SAN FRANCISCO DE LAS TABLAS', 21);
INSERT INTO `localidad` VALUES (20, 'SAN GABRIEL', 21);
INSERT INTO `localidad` VALUES (21, 'SAN JUAN TUXTEPEC', 21);
INSERT INTO `localidad` VALUES (22, 'SANTA ELENA', 21);
INSERT INTO `localidad` VALUES (23, 'SANTA MARIA', 21);
INSERT INTO `localidad` VALUES (24, 'TENJAY', 21);
INSERT INTO `localidad` VALUES (25, 'VENTEY', 21);
INSERT INTO `localidad` VALUES (27, 'VENÚ', 21);
INSERT INTO `localidad` VALUES (28, 'XHOÑE', 21);
INSERT INTO `localidad` VALUES (29, 'XHOTE', 21);
INSERT INTO `localidad` VALUES (30, 'BUENAVISTA', 46);
INSERT INTO `localidad` VALUES (31, 'CALPULALPAN', 46);
INSERT INTO `localidad` VALUES (32, 'LAS HUERTAS', 46);
INSERT INTO `localidad` VALUES (33, 'XHIMÓJAY', 46);
INSERT INTO `localidad` VALUES (34, 'EL DURAZNO', 46);
INSERT INTO `localidad` VALUES (35, 'EJIDO DE JILOTEPEC', 46);
INSERT INTO `localidad` VALUES (36, 'DENHI', 46);
INSERT INTO `localidad` VALUES (37, 'DANXHO', 46);
INSERT INTO `localidad` VALUES (38, 'CANALEJAS', 46);
INSERT INTO `localidad` VALUES (39, 'DEXCANI BAJO', 46);
INSERT INTO `localidad` VALUES (41, 'XHISDA', 46);
INSERT INTO `localidad` VALUES (42, 'ACTOPAN', 126);

-- ----------------------------
-- Table structure for madre
-- ----------------------------
DROP TABLE IF EXISTS `madre`;
CREATE TABLE `madre`  (
  `idMadre` int NOT NULL AUTO_INCREMENT,
  `nombreMadre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ape1Madre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ape2Madre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telefonoCelularMadre` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CURPMadre` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `claveElectorMadre` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `idOcupacion` int NOT NULL,
  `idNivelEscolar` int NULL DEFAULT NULL,
  `idParentesco` int NULL DEFAULT NULL,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idMadre`) USING BTREE,
  INDEX `fk_DatosAlumnoMadre_Matricula`(`matricula`) USING BTREE,
  INDEX `fk_NivelEscolarMadre_idNivelEscolar`(`idNivelEscolar`) USING BTREE,
  INDEX `fk_OcupacionMadre_idOcupacion`(`idOcupacion`) USING BTREE,
  INDEX `fk_ParentescoMadre_idParentesco`(`idParentesco`) USING BTREE,
  CONSTRAINT `fk_DatosAlumnoMadre_Matricula` FOREIGN KEY (`matricula`) REFERENCES `datosalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_NivelEscolarMadre_idNivelEscolar` FOREIGN KEY (`idNivelEscolar`) REFERENCES `nivelescolar` (`idNivelEscolar`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_OcupacionMadre_idOcupacion` FOREIGN KEY (`idOcupacion`) REFERENCES `ocupacion` (`idOcupacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ParentescoMadre_idParentesco` FOREIGN KEY (`idParentesco`) REFERENCES `parentesco` (`idParentesco`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of madre
-- ----------------------------
INSERT INTO `madre` VALUES (16, 'DULCE CONCEPCION', 'MELENDEZ', 'CASTILLO', '5564053181', 'BJFHEHURHJKFBEH763', 'HSJGUWHRUW67828', 8, 3, 6, '201823777');
INSERT INTO `madre` VALUES (22, 'VIRGINIA', 'ROBLES', 'VIDAL', '55447272626', 'VVDHJIUEIUYUYUU636', 'VASTWRETYSBBSU3635', 2, 2, 6, '201823320');
INSERT INTO `madre` VALUES (42, 'REYNA', 'MONTIEL', 'FLORES', '3456789980', 'VARWUNSRY66HDY2G', 'REYA98SNHBWHJ1', 2, 3, 6, '201823192');
INSERT INTO `madre` VALUES (47, 'REYNA', 'MARTINEZ', '', '', 'VARWUNSRY66HDY2GV2', 'REYA98SNHBWHJ12WS2', 8, 3, 6, '2018230872');

-- ----------------------------
-- Table structure for maestria
-- ----------------------------
DROP TABLE IF EXISTS `maestria`;
CREATE TABLE `maestria`  (
  `idMaestria` int NOT NULL AUTO_INCREMENT,
  `descripcionMaestria` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idMaestria`) USING BTREE,
  UNIQUE INDEX `key_Maestria_desMaestria`(`descripcionMaestria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of maestria
-- ----------------------------
INSERT INTO `maestria` VALUES (1, 'LIDERAZGO Y GESTIÓN DE LA EDUCACIÓN');
INSERT INTO `maestria` VALUES (2, 'QUIMICA METALURGICA');

-- ----------------------------
-- Table structure for municipio
-- ----------------------------
DROP TABLE IF EXISTS `municipio`;
CREATE TABLE `municipio`  (
  `idMunicipio` int NOT NULL AUTO_INCREMENT,
  `descripcionMunicipio` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idEntidadFederativa` int NOT NULL,
  PRIMARY KEY (`idMunicipio`) USING BTREE,
  UNIQUE INDEX `key_Municipio_desMunicipio`(`descripcionMunicipio`) USING BTREE,
  INDEX `fk_munEntid_idEnt`(`idEntidadFederativa`) USING BTREE,
  CONSTRAINT `fk_munEntid_idEnt` FOREIGN KEY (`idEntidadFederativa`) REFERENCES `entidadfederativa` (`idEntidadFederativa`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of municipio
-- ----------------------------
INSERT INTO `municipio` VALUES (1, 'ACAMBAY DE RUÍZ CASTAÑEDA', 15);
INSERT INTO `municipio` VALUES (2, 'ACOLMAN', 15);
INSERT INTO `municipio` VALUES (3, 'ACULCO', 15);
INSERT INTO `municipio` VALUES (4, 'ALMOLOYA DE ALQUISIRAS', 15);
INSERT INTO `municipio` VALUES (5, 'ALMOLOYA DE JUÁREZ', 15);
INSERT INTO `municipio` VALUES (6, 'ALMOLOYA DEL RÍO', 15);
INSERT INTO `municipio` VALUES (7, 'AMANALCO', 15);
INSERT INTO `municipio` VALUES (8, 'AMATEPEC', 15);
INSERT INTO `municipio` VALUES (9, 'AMECAMECA', 15);
INSERT INTO `municipio` VALUES (10, 'APAXCO', 15);
INSERT INTO `municipio` VALUES (11, 'ATENCO', 15);
INSERT INTO `municipio` VALUES (12, 'ATIZAPÁN', 15);
INSERT INTO `municipio` VALUES (13, 'ATIZAPÁN DE ZARAGOZA', 15);
INSERT INTO `municipio` VALUES (14, 'ATLACOMULCO', 15);
INSERT INTO `municipio` VALUES (15, 'ATLAUTLA', 15);
INSERT INTO `municipio` VALUES (16, 'AXAPUSCO', 15);
INSERT INTO `municipio` VALUES (17, 'AYAPANGO', 15);
INSERT INTO `municipio` VALUES (18, 'CALIMAYA', 15);
INSERT INTO `municipio` VALUES (19, 'CAPULHUAC', 15);
INSERT INTO `municipio` VALUES (20, 'CHALCO', 15);
INSERT INTO `municipio` VALUES (21, 'CHAPA DE MOTA', 15);
INSERT INTO `municipio` VALUES (22, 'CHAPULTEPEC', 15);
INSERT INTO `municipio` VALUES (23, 'CHIAUTLA', 15);
INSERT INTO `municipio` VALUES (24, 'CHICOLOAPAN', 15);
INSERT INTO `municipio` VALUES (25, 'CHICONCUAC', 15);
INSERT INTO `municipio` VALUES (26, 'CHIMALHUACÁN', 15);
INSERT INTO `municipio` VALUES (27, 'COACALCO DE BERRIOZÁBAL', 15);
INSERT INTO `municipio` VALUES (28, 'COATEPEC HARINAS', 15);
INSERT INTO `municipio` VALUES (29, 'COCOTITLÁN', 15);
INSERT INTO `municipio` VALUES (30, 'COYOTEPEC', 15);
INSERT INTO `municipio` VALUES (31, 'CUAUTITLÁN', 15);
INSERT INTO `municipio` VALUES (32, 'CUAUTITLÁN IZCALLI', 15);
INSERT INTO `municipio` VALUES (33, 'DONATO GUERRA', 15);
INSERT INTO `municipio` VALUES (34, 'ECATEPEC DE MORELOS', 15);
INSERT INTO `municipio` VALUES (35, 'ECATZINGO', 15);
INSERT INTO `municipio` VALUES (36, 'EL ORO', 15);
INSERT INTO `municipio` VALUES (37, 'HUEHUETOCA', 15);
INSERT INTO `municipio` VALUES (38, 'HUEYPOXTLA', 15);
INSERT INTO `municipio` VALUES (39, 'HUIXQUILUCAN', 15);
INSERT INTO `municipio` VALUES (40, 'ISIDRO FABELA', 15);
INSERT INTO `municipio` VALUES (41, 'IXTAPALUCA', 15);
INSERT INTO `municipio` VALUES (42, 'IXTAPAN DE LA SAL', 15);
INSERT INTO `municipio` VALUES (43, 'IXTAPAN DEL ORO', 15);
INSERT INTO `municipio` VALUES (44, 'IXTLAHUACA', 15);
INSERT INTO `municipio` VALUES (45, 'JALTENCO', 15);
INSERT INTO `municipio` VALUES (46, 'JILOTEPEC', 15);
INSERT INTO `municipio` VALUES (47, 'JILOTZINGO', 15);
INSERT INTO `municipio` VALUES (48, 'JIQUIPILCO', 15);
INSERT INTO `municipio` VALUES (49, 'JOCOTITLÁN', 15);
INSERT INTO `municipio` VALUES (50, 'JOQUICINGO', 15);
INSERT INTO `municipio` VALUES (51, 'JUCHITEPEC', 15);
INSERT INTO `municipio` VALUES (52, 'LA PAZ', 15);
INSERT INTO `municipio` VALUES (53, 'LERMA', 15);
INSERT INTO `municipio` VALUES (54, 'LUVIANOS', 15);
INSERT INTO `municipio` VALUES (55, 'MALINALCO', 15);
INSERT INTO `municipio` VALUES (56, 'MELCHOR OCAMPO', 15);
INSERT INTO `municipio` VALUES (57, 'METEPEC', 15);
INSERT INTO `municipio` VALUES (58, 'MEXICALTZINGO', 15);
INSERT INTO `municipio` VALUES (59, 'MORELOS', 15);
INSERT INTO `municipio` VALUES (60, 'NAUCALPAN DE JUÁREZ	', 15);
INSERT INTO `municipio` VALUES (61, 'NEXTLALPAN', 15);
INSERT INTO `municipio` VALUES (62, 'NEZAHUALCÓYOTL', 15);
INSERT INTO `municipio` VALUES (63, 'NICOLÁS ROMERO', 15);
INSERT INTO `municipio` VALUES (64, 'NOPALTEPEC', 15);
INSERT INTO `municipio` VALUES (65, 'OCOYOACAC', 15);
INSERT INTO `municipio` VALUES (66, 'OCUILAN', 15);
INSERT INTO `municipio` VALUES (67, 'OTUMBA', 15);
INSERT INTO `municipio` VALUES (68, 'OTZOLOAPAN', 15);
INSERT INTO `municipio` VALUES (69, 'OTZOLOTEPEC', 15);
INSERT INTO `municipio` VALUES (70, 'OZUMBA', 15);
INSERT INTO `municipio` VALUES (71, 'PAPALOTLA', 15);
INSERT INTO `municipio` VALUES (72, 'POLOTITLÁN', 15);
INSERT INTO `municipio` VALUES (73, 'RAYÓN', 15);
INSERT INTO `municipio` VALUES (74, 'SAN ANTONIO LA ISLA', 15);
INSERT INTO `municipio` VALUES (75, 'SAN FELIPE DEL PROGRESO', 15);
INSERT INTO `municipio` VALUES (76, 'SAN MARTÍN DE LAS PIRÁMIDES', 15);
INSERT INTO `municipio` VALUES (77, 'SAN MATEO ATENCO', 15);
INSERT INTO `municipio` VALUES (78, 'SAN SIMÓN DE GUERRERO', 15);
INSERT INTO `municipio` VALUES (79, 'SAN JOSÉ DEL RINCÓN', 15);
INSERT INTO `municipio` VALUES (80, 'SANTO TOMÁS', 15);
INSERT INTO `municipio` VALUES (81, 'SOYANIQUILPAN DE JUÁREZ', 15);
INSERT INTO `municipio` VALUES (82, 'SULTEPEC', 15);
INSERT INTO `municipio` VALUES (83, 'TECÁMAC', 15);
INSERT INTO `municipio` VALUES (84, 'TEJUPILCO', 15);
INSERT INTO `municipio` VALUES (85, 'TEMAMATLA', 15);
INSERT INTO `municipio` VALUES (86, 'TEMASCALAPA', 15);
INSERT INTO `municipio` VALUES (87, 'TEMASCALCINGO', 15);
INSERT INTO `municipio` VALUES (88, 'TEMASCALTEPEC', 15);
INSERT INTO `municipio` VALUES (89, 'TEMOAYA', 15);
INSERT INTO `municipio` VALUES (90, 'TENANCINGO', 15);
INSERT INTO `municipio` VALUES (91, 'TENANGO DEL AIRE', 15);
INSERT INTO `municipio` VALUES (92, 'TENANGO DEL VALLE', 15);
INSERT INTO `municipio` VALUES (93, 'TEOLOYUCAN', 15);
INSERT INTO `municipio` VALUES (94, 'TEOTIHUACÁN', 15);
INSERT INTO `municipio` VALUES (95, 'TEPETLAOXTOC', 15);
INSERT INTO `municipio` VALUES (96, 'TEPETLIXPA', 15);
INSERT INTO `municipio` VALUES (97, 'TEPOTZOTLÁN', 15);
INSERT INTO `municipio` VALUES (98, 'TEQUIXQUIAC', 15);
INSERT INTO `municipio` VALUES (99, 'TEXCALTITLÁN', 15);
INSERT INTO `municipio` VALUES (100, 'TEXCALYACAC', 15);
INSERT INTO `municipio` VALUES (101, 'TEXCOCO', 15);
INSERT INTO `municipio` VALUES (102, 'TEZOYUCA', 15);
INSERT INTO `municipio` VALUES (103, 'TIANGUISTENCO', 15);
INSERT INTO `municipio` VALUES (104, 'TIMILPAN', 15);
INSERT INTO `municipio` VALUES (105, 'TLALMANALCO', 15);
INSERT INTO `municipio` VALUES (106, 'TLALNEPANTLA DE BAZ', 15);
INSERT INTO `municipio` VALUES (107, 'TLATLAYA', 15);
INSERT INTO `municipio` VALUES (108, 'TOLUCA', 15);
INSERT INTO `municipio` VALUES (109, 'TONANITLA', 15);
INSERT INTO `municipio` VALUES (110, 'TONATICO', 15);
INSERT INTO `municipio` VALUES (111, 'TULTEPEC', 15);
INSERT INTO `municipio` VALUES (112, 'TULTITLÁN', 15);
INSERT INTO `municipio` VALUES (113, 'VALLE DE BRAVO', 15);
INSERT INTO `municipio` VALUES (114, 'VALLE DE CHALCO SOLIDARIDAD', 15);
INSERT INTO `municipio` VALUES (115, 'VILLA DEL CARBÓN', 15);
INSERT INTO `municipio` VALUES (116, 'VILLA GUERRERO', 15);
INSERT INTO `municipio` VALUES (117, 'VILLA VICTORIA', 15);
INSERT INTO `municipio` VALUES (118, 'VILLA DE ALLENDE', 15);
INSERT INTO `municipio` VALUES (119, 'XALATLACO', 15);
INSERT INTO `municipio` VALUES (120, 'XONACATLÁN', 15);
INSERT INTO `municipio` VALUES (121, 'ZACAZONAPAN', 15);
INSERT INTO `municipio` VALUES (122, 'ZACUALPAN', 15);
INSERT INTO `municipio` VALUES (123, 'ZINACANTEPEC', 15);
INSERT INTO `municipio` VALUES (124, 'ZUMPAHUACÁN', 15);
INSERT INTO `municipio` VALUES (125, 'ZUMPANGO', 15);
INSERT INTO `municipio` VALUES (126, 'ACATLÁN', 13);

-- ----------------------------
-- Table structure for nivelescolar
-- ----------------------------
DROP TABLE IF EXISTS `nivelescolar`;
CREATE TABLE `nivelescolar`  (
  `idNivelEscolar` int NOT NULL AUTO_INCREMENT,
  `descripcionNivelEscolar` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idNivelEscolar`) USING BTREE,
  UNIQUE INDEX `key_NivelEscolar_desNivelEscolar`(`descripcionNivelEscolar`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nivelescolar
-- ----------------------------
INSERT INTO `nivelescolar` VALUES (4, 'MEDIA SUPERIOR');
INSERT INTO `nivelescolar` VALUES (1, 'PREESCOLAR');
INSERT INTO `nivelescolar` VALUES (2, 'PRIMARIA');
INSERT INTO `nivelescolar` VALUES (3, 'SECUNDARIA');
INSERT INTO `nivelescolar` VALUES (5, 'SUPERIOR');

-- ----------------------------
-- Table structure for nivellaboral
-- ----------------------------
DROP TABLE IF EXISTS `nivellaboral`;
CREATE TABLE `nivellaboral`  (
  `idNivelLaboral` int NOT NULL AUTO_INCREMENT,
  `descripcionNivelLaboral` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idNivelLaboral`) USING BTREE,
  UNIQUE INDEX `key_NivelLabora_desNivelLaboral`(`descripcionNivelLaboral`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nivellaboral
-- ----------------------------
INSERT INTO `nivellaboral` VALUES (1, 'A');
INSERT INTO `nivellaboral` VALUES (2, 'B');
INSERT INTO `nivellaboral` VALUES (3, 'C');
INSERT INTO `nivellaboral` VALUES (4, 'D');
INSERT INTO `nivellaboral` VALUES (5, 'E');

-- ----------------------------
-- Table structure for nombrearchivo
-- ----------------------------
DROP TABLE IF EXISTS `nombrearchivo`;
CREATE TABLE `nombrearchivo`  (
  `idNombreArchivo` int NOT NULL AUTO_INCREMENT,
  `nombreArchivo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idNombreArchivo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nombrearchivo
-- ----------------------------
INSERT INTO `nombrearchivo` VALUES (1, 'Acta de Nacimiento');
INSERT INTO `nombrearchivo` VALUES (2, 'CURP');
INSERT INTO `nombrearchivo` VALUES (3, 'INE');
INSERT INTO `nombrearchivo` VALUES (4, 'Credencial del Alumno');
INSERT INTO `nombrearchivo` VALUES (5, 'Comprobante de Domicilio');
INSERT INTO `nombrearchivo` VALUES (6, 'INE del Tutor');

-- ----------------------------
-- Table structure for ocupacion
-- ----------------------------
DROP TABLE IF EXISTS `ocupacion`;
CREATE TABLE `ocupacion`  (
  `idOcupacion` int NOT NULL AUTO_INCREMENT,
  `descripcionOcupacion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idOcupacion`) USING BTREE,
  UNIQUE INDEX `key_Ocupacion_desOcupacion`(`descripcionOcupacion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ocupacion
-- ----------------------------
INSERT INTO `ocupacion` VALUES (1, 'ALBAÑIL');
INSERT INTO `ocupacion` VALUES (2, 'AMA DE CASA');
INSERT INTO `ocupacion` VALUES (7, 'CAMPESINO');
INSERT INTO `ocupacion` VALUES (5, 'CARPINTERO');
INSERT INTO `ocupacion` VALUES (6, 'CHOFER');
INSERT INTO `ocupacion` VALUES (3, 'EMPLEADA DOMÉSTICA');
INSERT INTO `ocupacion` VALUES (4, 'HOGAR');
INSERT INTO `ocupacion` VALUES (8, 'OBRERO');
INSERT INTO `ocupacion` VALUES (9, 'PROFESOR');

-- ----------------------------
-- Table structure for padre
-- ----------------------------
DROP TABLE IF EXISTS `padre`;
CREATE TABLE `padre`  (
  `idPadre` int NOT NULL AUTO_INCREMENT,
  `nombrePadre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ape1Padre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ape2Padre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telefonoCelularPadre` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CURPPadre` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `claveElectorPadre` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idOcupacion` int NOT NULL,
  `idNivelEscolar` int NOT NULL,
  `idParentesco` int NOT NULL,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idPadre`) USING BTREE,
  INDEX `fk_NivelEscolar_idNivelEscolar`(`idNivelEscolar`) USING BTREE,
  INDEX `fk_ParentescoPadreMadre_idParentesco`(`idParentesco`) USING BTREE,
  INDEX `fk_DatosAlumno_Matricula`(`matricula`) USING BTREE,
  INDEX `fk_Ocupacion_idOcupacion`(`idOcupacion`) USING BTREE,
  CONSTRAINT `fk_DatosAlumno_Matricula` FOREIGN KEY (`matricula`) REFERENCES `datosalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_NivelEscolar_idNivelEscolar` FOREIGN KEY (`idNivelEscolar`) REFERENCES `nivelescolar` (`idNivelEscolar`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_Ocupacion_idOcupacion` FOREIGN KEY (`idOcupacion`) REFERENCES `ocupacion` (`idOcupacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_Parentesco_idParentesco` FOREIGN KEY (`idParentesco`) REFERENCES `parentesco` (`idParentesco`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of padre
-- ----------------------------
INSERT INTO `padre` VALUES (19, 'JUAN', 'MATEOS', 'LOPEZ', '5563488773', 'UEFGCHFHKJ73647682', 'GFHGFGYW6736476728', 6, 2, 7, '201823777');
INSERT INTO `padre` VALUES (21, 'IGNACIO', 'VALDEZ', 'PEREZ', '55447466', 'UEFGCHFHKJ73647100', 'GDGEYYUUW636652442', 8, 3, 7, '201823320');
INSERT INTO `padre` VALUES (39, 'MARTIN', 'VAZQUEZ', 'FLORES', '3456728901', 'VAMXKOUBBAYYHVGW', 'MRTINYYWBI1913', 8, 3, 7, '201823192');
INSERT INTO `padre` VALUES (44, 'JOSE', 'JAVIER', '', '', 'VAMXKOUBBAYYHVGWY3', 'MRTINYYWBI19111112', 6, 2, 7, '2018230872');

-- ----------------------------
-- Table structure for parentesco
-- ----------------------------
DROP TABLE IF EXISTS `parentesco`;
CREATE TABLE `parentesco`  (
  `idParentesco` int NOT NULL AUTO_INCREMENT,
  `descripcionParentesco` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idParentesco`) USING BTREE,
  UNIQUE INDEX `key_Parentesco_desParentesco`(`descripcionParentesco`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of parentesco
-- ----------------------------
INSERT INTO `parentesco` VALUES (1, 'ABUELA');
INSERT INTO `parentesco` VALUES (3, 'ABUELO');
INSERT INTO `parentesco` VALUES (4, 'HERMANA');
INSERT INTO `parentesco` VALUES (5, 'HERMANO');
INSERT INTO `parentesco` VALUES (6, 'MADRE');
INSERT INTO `parentesco` VALUES (7, 'PADRE');
INSERT INTO `parentesco` VALUES (8, 'TÍA');
INSERT INTO `parentesco` VALUES (9, 'TÍO');

-- ----------------------------
-- Table structure for puestoinstitucional
-- ----------------------------
DROP TABLE IF EXISTS `puestoinstitucional`;
CREATE TABLE `puestoinstitucional`  (
  `idPuestoInstitucional` int NOT NULL AUTO_INCREMENT,
  `descripcionInstitucional` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idPuestoInstitucional`) USING BTREE,
  UNIQUE INDEX `key_PuestoInstitucional_desPuestoInstitucional`(`descripcionInstitucional`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of puestoinstitucional
-- ----------------------------
INSERT INTO `puestoinstitucional` VALUES (5, 'DIRECTOR');
INSERT INTO `puestoinstitucional` VALUES (2, 'ORIENTADOR TECNICO');
INSERT INTO `puestoinstitucional` VALUES (1, 'PROFESOR');
INSERT INTO `puestoinstitucional` VALUES (3, 'SECRETARIO ESCOLAR');
INSERT INTO `puestoinstitucional` VALUES (4, 'SUBDIRECTOR ACADEMICO');

-- ----------------------------
-- Table structure for semestre1
-- ----------------------------
DROP TABLE IF EXISTS `semestre1`;
CREATE TABLE `semestre1`  (
  `idMateria1` int NOT NULL AUTO_INCREMENT,
  `materia1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idMateria1`) USING BTREE,
  UNIQUE INDEX `materia`(`materia1`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semestre1
-- ----------------------------
INSERT INTO `semestre1` VALUES (9, 'ACTIVIDADES ARTÍSTICAS Y CULTURALES I');
INSERT INTO `semestre1` VALUES (8, 'ACTIVIDADES FÍSICAS, DEPORTIVAS Y RECREATIVAS I');
INSERT INTO `semestre1` VALUES (7, 'ÉTICA I');
INSERT INTO `semestre1` VALUES (6, 'INFORMÁTICA I');
INSERT INTO `semestre1` VALUES (5, 'INGLÉS I');
INSERT INTO `semestre1` VALUES (1, 'MATEMÁTICAS I');
INSERT INTO `semestre1` VALUES (3, 'METODOLOGÍA DE LA INVESTIGACIÓN I');
INSERT INTO `semestre1` VALUES (2, 'QUÍMICA I');
INSERT INTO `semestre1` VALUES (10, 'SALUD INTEGRAL DEL ADOLESCENTE I');
INSERT INTO `semestre1` VALUES (4, 'TALLER DE LECTURA Y REDACCIÓN I');

-- ----------------------------
-- Table structure for semestre2
-- ----------------------------
DROP TABLE IF EXISTS `semestre2`;
CREATE TABLE `semestre2`  (
  `idMateria2` int NOT NULL AUTO_INCREMENT,
  `materia2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idMateria2`) USING BTREE,
  UNIQUE INDEX `key_materia2`(`materia2`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semestre2
-- ----------------------------
INSERT INTO `semestre2` VALUES (9, 'ACTIVIDADES ARTÍSTICAS Y CULTURALES II');
INSERT INTO `semestre2` VALUES (8, 'ACTIVIDADES FÍSICAS, DEPORTIVAS Y RECREATIVAS II');
INSERT INTO `semestre2` VALUES (7, 'ÉTICA II');
INSERT INTO `semestre2` VALUES (6, 'INFORMÁTICA II');
INSERT INTO `semestre2` VALUES (5, 'INGLÉS II');
INSERT INTO `semestre2` VALUES (3, 'INTRODUCCIÓN A LAS CIENCIAS SOCIALES');
INSERT INTO `semestre2` VALUES (1, 'MATEMÁTICAS II');
INSERT INTO `semestre2` VALUES (2, 'QUÍMICA II');
INSERT INTO `semestre2` VALUES (10, 'SALUD INTEGRAL DEL ADOLESCENTE II');
INSERT INTO `semestre2` VALUES (4, 'TALLER DE LECTURA Y REDACCIÓN II');

-- ----------------------------
-- Table structure for semestre3
-- ----------------------------
DROP TABLE IF EXISTS `semestre3`;
CREATE TABLE `semestre3`  (
  `idMateria3` int NOT NULL AUTO_INCREMENT,
  `materia3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idMateria3`) USING BTREE,
  INDEX `key_materia3`(`materia3`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semestre3
-- ----------------------------
INSERT INTO `semestre3` VALUES (9, 'ACTIVIDADES FÍSICAS, DEPORTIVAS Y RECREATIVAS III');
INSERT INTO `semestre3` VALUES (2, 'BIOLOGÍA I');
INSERT INTO `semestre3` VALUES (3, 'FÍSICA I');
INSERT INTO `semestre3` VALUES (7, 'GESTIÓN DE ARCHIVOS DE TEXTO');
INSERT INTO `semestre3` VALUES (11, 'HABILIDADES DE RAZONAMIENTO');
INSERT INTO `semestre3` VALUES (4, 'HISTORIA DE MÉXICO I');
INSERT INTO `semestre3` VALUES (8, 'HOJA DE CÁLCULO APLICADA');
INSERT INTO `semestre3` VALUES (5, 'INGLÉS III');
INSERT INTO `semestre3` VALUES (6, 'LITERATURA I');
INSERT INTO `semestre3` VALUES (1, 'MATEMÁTICAS III');
INSERT INTO `semestre3` VALUES (10, 'SALUD INTEGRAL DEL ADOLESCENTE III');

-- ----------------------------
-- Table structure for semestre4
-- ----------------------------
DROP TABLE IF EXISTS `semestre4`;
CREATE TABLE `semestre4`  (
  `idMateria4` int NOT NULL AUTO_INCREMENT,
  `materia4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idMateria4`) USING BTREE,
  UNIQUE INDEX `key_materia4`(`materia4`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semestre4
-- ----------------------------
INSERT INTO `semestre4` VALUES (9, 'ACTIVIDADES FÍSICAS, DEPORTIVAS Y RECREATIVAS IV');
INSERT INTO `semestre4` VALUES (2, 'BIOLOGÍA II');
INSERT INTO `semestre4` VALUES (7, 'COMUNIDADES VIRTUALES');
INSERT INTO `semestre4` VALUES (3, 'FÍSICA II');
INSERT INTO `semestre4` VALUES (4, 'HISTORIA DE MÉXICO II');
INSERT INTO `semestre4` VALUES (5, 'INGLÉS IV');
INSERT INTO `semestre4` VALUES (6, 'LITERATURA II');
INSERT INTO `semestre4` VALUES (8, 'MANTENIMIENTO Y REDES DE CÓMPUTO');
INSERT INTO `semestre4` VALUES (1, 'MATEMÁTICAS IV');
INSERT INTO `semestre4` VALUES (10, 'SALUD INTEGRAL DEL ADOLESCENTE IV');

-- ----------------------------
-- Table structure for semestre5
-- ----------------------------
DROP TABLE IF EXISTS `semestre5`;
CREATE TABLE `semestre5`  (
  `idMateria5` int NOT NULL AUTO_INCREMENT,
  `materia5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idMateria5`) USING BTREE,
  UNIQUE INDEX `key_materia5`(`materia5`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semestre5
-- ----------------------------
INSERT INTO `semestre5` VALUES (11, 'ACTIVIDADES ARTISTICO CULTURALES III');
INSERT INTO `semestre5` VALUES (6, 'DERECHO I');
INSERT INTO `semestre5` VALUES (4, 'ECONOMÍA I');
INSERT INTO `semestre5` VALUES (3, 'ESTRUCTURA SOCIOECONÓMICA DE MÉXICO');
INSERT INTO `semestre5` VALUES (2, 'GEOGRAFÍA');
INSERT INTO `semestre5` VALUES (7, 'INGLÉS V');
INSERT INTO `semestre5` VALUES (8, 'INTRODUCCIÓN A LA FILOSOFÍA');
INSERT INTO `semestre5` VALUES (1, 'MATEMÁTICAS V');
INSERT INTO `semestre5` VALUES (10, 'PROGRAMACIÓN');
INSERT INTO `semestre5` VALUES (5, 'PSICOLOGÍA I');
INSERT INTO `semestre5` VALUES (12, 'SALUD INTEGRAL DEL ADOLESCENTE V');
INSERT INTO `semestre5` VALUES (9, 'SISTEMAS DE INFORMACIÓN');

-- ----------------------------
-- Table structure for semestre6
-- ----------------------------
DROP TABLE IF EXISTS `semestre6`;
CREATE TABLE `semestre6`  (
  `idMateria6` int NOT NULL AUTO_INCREMENT,
  `materia6` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idMateria6`) USING BTREE,
  INDEX `key_materia6`(`materia6`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semestre6
-- ----------------------------
INSERT INTO `semestre6` VALUES (11, 'ACTIVIDADES ARTÍSTICAS Y CULTURALES IV');
INSERT INTO `semestre6` VALUES (6, 'DERECHO II');
INSERT INTO `semestre6` VALUES (10, 'DISEÑO DIGITAL');
INSERT INTO `semestre6` VALUES (2, 'ECOLOGÍA Y MEDIO AMBIENTE');
INSERT INTO `semestre6` VALUES (4, 'ECONOMÍA II');
INSERT INTO `semestre6` VALUES (8, 'FILOSOFÍA');
INSERT INTO `semestre6` VALUES (3, 'HISTORIA UNIVERSAL CONTEMPORÁNEA');
INSERT INTO `semestre6` VALUES (7, 'INGLÉS VI');
INSERT INTO `semestre6` VALUES (1, 'MATEMÁTICAS VI');
INSERT INTO `semestre6` VALUES (9, 'PÁGINAS WEB');
INSERT INTO `semestre6` VALUES (5, 'PSICOLOGÍA II');
INSERT INTO `semestre6` VALUES (12, 'SALUD INTEGRAL DEL ADOLESCENTE VI');

-- ----------------------------
-- Table structure for sexo
-- ----------------------------
DROP TABLE IF EXISTS `sexo`;
CREATE TABLE `sexo`  (
  `idSexo` int NOT NULL AUTO_INCREMENT,
  `descripcionSexo` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idSexo`) USING BTREE,
  UNIQUE INDEX `key_Sexo_desSexo`(`descripcionSexo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sexo
-- ----------------------------
INSERT INTO `sexo` VALUES (1, 'HOMBRE');
INSERT INTO `sexo` VALUES (2, 'MUJER');

-- ----------------------------
-- Table structure for tiposegurosocial
-- ----------------------------
DROP TABLE IF EXISTS `tiposegurosocial`;
CREATE TABLE `tiposegurosocial`  (
  `idSeguroSocial` int NOT NULL AUTO_INCREMENT,
  `tipoSeguroSocial` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idSeguroSocial`) USING BTREE,
  UNIQUE INDEX `key_TipoSeguroSocial_desTipoSeguroSocial`(`tipoSeguroSocial`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tiposegurosocial
-- ----------------------------
INSERT INTO `tiposegurosocial` VALUES (1, 'IMSS');
INSERT INTO `tiposegurosocial` VALUES (2, 'ISSEMYM');
INSERT INTO `tiposegurosocial` VALUES (3, 'ISSSTE');
INSERT INTO `tiposegurosocial` VALUES (6, 'NO');
INSERT INTO `tiposegurosocial` VALUES (5, 'PROSPERA');
INSERT INTO `tiposegurosocial` VALUES (4, 'SEGURO POPULAR');

-- ----------------------------
-- Table structure for turno
-- ----------------------------
DROP TABLE IF EXISTS `turno`;
CREATE TABLE `turno`  (
  `idTurno` int NOT NULL AUTO_INCREMENT,
  `descripcionTurno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idTurno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of turno
-- ----------------------------
INSERT INTO `turno` VALUES (1, 'MATUTINO');
INSERT INTO `turno` VALUES (2, 'VESPERTINO');

SET FOREIGN_KEY_CHECKS = 1;
