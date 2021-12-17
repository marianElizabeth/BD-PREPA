/*
 Navicat Premium Data Transfer

 Source Server         : BD
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : prepa-16122021

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 16/12/2021 23:28:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alumnopersona
-- ----------------------------
DROP TABLE IF EXISTS `alumnopersona`;
CREATE TABLE `alumnopersona`  (
  `idAlumnoPersona` int NOT NULL AUTO_INCREMENT,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idPersona` int NOT NULL,
  `idParentesco` int NOT NULL,
  `idOcupacion` int NOT NULL,
  PRIMARY KEY (`idAlumnoPersona`) USING BTREE,
  INDEX `fk_matricula_DAAP`(`matricula`) USING BTREE,
  INDEX `fk_persona_PAP`(`idPersona`) USING BTREE,
  INDEX `fk_parentesco_PAP`(`idParentesco`) USING BTREE,
  INDEX `fk_ocupacion_OAP`(`idOcupacion`) USING BTREE,
  CONSTRAINT `fk_matricula_DAAP` FOREIGN KEY (`matricula`) REFERENCES `datoalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ocupacion_OAP` FOREIGN KEY (`idOcupacion`) REFERENCES `ocupacion` (`idOcupacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_parentesco_PAP` FOREIGN KEY (`idParentesco`) REFERENCES `parentesco` (`idParentesco`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_persona_PAP` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alumnopersona
-- ----------------------------

-- ----------------------------
-- Table structure for asignatura
-- ----------------------------
DROP TABLE IF EXISTS `asignatura`;
CREATE TABLE `asignatura`  (
  `idAsignatura` int NOT NULL AUTO_INCREMENT,
  `asignatura` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `semestre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idAsignatura`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asignatura
-- ----------------------------

-- ----------------------------
-- Table structure for beca
-- ----------------------------
DROP TABLE IF EXISTS `beca`;
CREATE TABLE `beca`  (
  `idBeca` int NOT NULL AUTO_INCREMENT,
  `beca` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idBeca`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of beca
-- ----------------------------

-- ----------------------------
-- Table structure for calificacion
-- ----------------------------
DROP TABLE IF EXISTS `calificacion`;
CREATE TABLE `calificacion`  (
  `idCalificacion` int NOT NULL AUTO_INCREMENT,
  `idAsignatura` int NOT NULL,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `falta1ro` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `falta2do` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `falta3ero` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `calParcial1ro` float NULL DEFAULT NULL,
  `calParcial2do` float NULL DEFAULT NULL,
  `calParcial3ero` float NULL DEFAULT NULL,
  `calFinal` float NULL DEFAULT NULL,
  `calExtra1` float NULL DEFAULT NULL,
  `fechaCalExtra1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `calExtra2` float NULL DEFAULT NULL,
  `fechaCalExtra2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `calExtra3` float NULL DEFAULT NULL,
  `fechaCalExtra3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `calExtra4` float NULL DEFAULT NULL,
  `fechaCalExtra4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idCalificacion`) USING BTREE,
  INDEX `fk_asignatura_AC`(`idAsignatura`) USING BTREE,
  INDEX `fk_matricula_DAC`(`matricula`) USING BTREE,
  CONSTRAINT `fk_asignatura_AC` FOREIGN KEY (`idAsignatura`) REFERENCES `asignatura` (`idAsignatura`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_matricula_DAC` FOREIGN KEY (`matricula`) REFERENCES `datoalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of calificacion
-- ----------------------------

-- ----------------------------
-- Table structure for datoalumno
-- ----------------------------
DROP TABLE IF EXISTS `datoalumno`;
CREATE TABLE `datoalumno`  (
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nombreAlumno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ape1Alumno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ape2Alumno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaInscripcion` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaBaja` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `numExpediente` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `folio` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CURPAlumno` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `folioCurpAlumno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RFCAlumno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sexo` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lugarNacimiento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `entidadFederativaNacimiento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaNacimiento` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `edad` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `correoPersonal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `correoInstitucional` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grado` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grupo` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `telCelular` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `telFijo` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trabajaAlumno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `numSeguridadSocial` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inscritoAlumno` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `folioBeca` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `acExamenIngreso` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `promSecundaria` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `idTipoSeguroSocial` int NOT NULL,
  `idBeca` int NOT NULL,
  `CCTSecundaria` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idDomicilio` int NOT NULL,
  PRIMARY KEY (`matricula`) USING BTREE,
  INDEX `fk_tipoSeguroSocial_TSSDA`(`idTipoSeguroSocial`) USING BTREE,
  INDEX `fk_idbeca_BDA`(`idBeca`) USING BTREE,
  INDEX `fk_CCTSecundaria_PDA`(`CCTSecundaria`) USING BTREE,
  INDEX `fk_idDomicilio_DDA`(`idDomicilio`) USING BTREE,
  CONSTRAINT `fk_CCTSecundaria_PDA` FOREIGN KEY (`CCTSecundaria`) REFERENCES `procedencia` (`CCTSecundaria`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_idbeca_BDA` FOREIGN KEY (`idBeca`) REFERENCES `beca` (`idBeca`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_idDomicilio_DDA` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`idDomicilio`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_tipoSeguroSocial_TSSDA` FOREIGN KEY (`idTipoSeguroSocial`) REFERENCES `tiposegurosocial` (`idTipoSeguroSocial`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datoalumno
-- ----------------------------

-- ----------------------------
-- Table structure for datodocente
-- ----------------------------
DROP TABLE IF EXISTS `datodocente`;
CREATE TABLE `datodocente`  (
  `CURPDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ape1Docente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ape2Docente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nombreDocente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaNacimiento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RFC` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `claveISSEMYM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `telCelular` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nombreEscuela` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'CENTRO DE TRABAJO',
  `CCT` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `turnoCT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `calleCT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `numeroCT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `coloniaCT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `localidadCT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `municipioCT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CPCT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `telefonoCT` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaIngresoSEE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `anioIngresoSEE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaIngresoNivel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `anioIngresoNivel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaBaseNivel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `anioBaseNivel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `puestoFuncional` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaIngresoCargo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaIngesoInstitucion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaIngresoCarreraDocente` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nivel` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `puntajeEscalofonario` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `numPlaza` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `numPrelacion` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `escAsignacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `idDomicilio` int NOT NULL,
  PRIMARY KEY (`CURPDocente`) USING BTREE,
  INDEX `fk_idDomicilio_DDD`(`idDomicilio`) USING BTREE,
  CONSTRAINT `fk_idDomicilio_DDD` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`idDomicilio`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datodocente
-- ----------------------------

-- ----------------------------
-- Table structure for documento
-- ----------------------------
DROP TABLE IF EXISTS `documento`;
CREATE TABLE `documento`  (
  `idDocumento` int NOT NULL AUTO_INCREMENT,
  `nombreDocumento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `documento` mediumblob NULL,
  PRIMARY KEY (`idDocumento`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documento
-- ----------------------------

-- ----------------------------
-- Table structure for documentoalumno
-- ----------------------------
DROP TABLE IF EXISTS `documentoalumno`;
CREATE TABLE `documentoalumno`  (
  `idDocumentoAlumno` int NOT NULL AUTO_INCREMENT,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idDocumento` int NOT NULL,
  PRIMARY KEY (`idDocumentoAlumno`) USING BTREE,
  INDEX `fk_matricula_DADA`(`matricula`) USING BTREE,
  INDEX `fk_idDocumento_DDA`(`idDocumento`) USING BTREE,
  CONSTRAINT `fk_idDocumento_DDA` FOREIGN KEY (`idDocumento`) REFERENCES `documento` (`idDocumento`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_matricula_DADA` FOREIGN KEY (`matricula`) REFERENCES `datoalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documentoalumno
-- ----------------------------

-- ----------------------------
-- Table structure for documentodocente
-- ----------------------------
DROP TABLE IF EXISTS `documentodocente`;
CREATE TABLE `documentodocente`  (
  `idDocumentoDocente` int NOT NULL AUTO_INCREMENT,
  `CURPDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idDocumento` int NOT NULL,
  PRIMARY KEY (`idDocumentoDocente`) USING BTREE,
  INDEX `fk_CURPDocente_DDDD`(`CURPDocente`) USING BTREE,
  INDEX `fk_idDocumento_DDD`(`idDocumento`) USING BTREE,
  CONSTRAINT `fk_CURPDocente_DDDD` FOREIGN KEY (`CURPDocente`) REFERENCES `datodocente` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_idDocumento_DDD` FOREIGN KEY (`idDocumento`) REFERENCES `documento` (`idDocumento`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documentodocente
-- ----------------------------

-- ----------------------------
-- Table structure for domicilio
-- ----------------------------
DROP TABLE IF EXISTS `domicilio`;
CREATE TABLE `domicilio`  (
  `idDomicilio` int NOT NULL AUTO_INCREMENT,
  `calle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `numero` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `idLocalidad` int NOT NULL,
  `referencia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `entreCalle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `yCalle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idDomicilio`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of domicilio
-- ----------------------------

-- ----------------------------
-- Table structure for escuelalabora
-- ----------------------------
DROP TABLE IF EXISTS `escuelalabora`;
CREATE TABLE `escuelalabora`  (
  `idEscuelaLabora` int NOT NULL AUTO_INCREMENT,
  `nombreEscuela` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `puestoAsignatura` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `noHoras` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idEscuelaLabora`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of escuelalabora
-- ----------------------------

-- ----------------------------
-- Table structure for escuelalaboradocente
-- ----------------------------
DROP TABLE IF EXISTS `escuelalaboradocente`;
CREATE TABLE `escuelalaboradocente`  (
  `idEscuelaLaboraDocente` int NOT NULL AUTO_INCREMENT,
  `CURPDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idEscuelaLabora` int NOT NULL,
  PRIMARY KEY (`idEscuelaLaboraDocente`) USING BTREE,
  INDEX `fk_CURPDocente_ADELD`(`CURPDocente`) USING BTREE,
  INDEX `fk_idEscuelaLabora_ELELD`(`idEscuelaLabora`) USING BTREE,
  CONSTRAINT `fk_CURPDocente_ADELD` FOREIGN KEY (`CURPDocente`) REFERENCES `datodocente` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_idEscuelaLabora_ELELD` FOREIGN KEY (`idEscuelaLabora`) REFERENCES `escuelalabora` (`idEscuelaLabora`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of escuelalaboradocente
-- ----------------------------

-- ----------------------------
-- Table structure for estudio
-- ----------------------------
DROP TABLE IF EXISTS `estudio`;
CREATE TABLE `estudio`  (
  `idEstudio` int NOT NULL AUTO_INCREMENT,
  `tipoEstudio` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Licenciatura,Especializacion,Diplomado,Maestria,Doctorado',
  PRIMARY KEY (`idEstudio`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of estudio
-- ----------------------------

-- ----------------------------
-- Table structure for ocupacion
-- ----------------------------
DROP TABLE IF EXISTS `ocupacion`;
CREATE TABLE `ocupacion`  (
  `idOcupacion` int NOT NULL AUTO_INCREMENT,
  `ocupacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idOcupacion`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ocupacion
-- ----------------------------

-- ----------------------------
-- Table structure for parentesco
-- ----------------------------
DROP TABLE IF EXISTS `parentesco`;
CREATE TABLE `parentesco`  (
  `idParentesco` int NOT NULL AUTO_INCREMENT,
  `parentesco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idParentesco`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parentesco
-- ----------------------------

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona`  (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `nombrePersona` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `apellidoPPersona` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `apellidoMPersona` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `telefonoPersona` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CURPPersona` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gradoEstudioPersona` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `claveElectorPersona` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idPersona`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of persona
-- ----------------------------

-- ----------------------------
-- Table structure for preparacionprofesional
-- ----------------------------
DROP TABLE IF EXISTS `preparacionprofesional`;
CREATE TABLE `preparacionprofesional`  (
  `idPreparacion` int NOT NULL AUTO_INCREMENT,
  `nombrePreparacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `estatus` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `noCedulaProfesional` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `escEgresion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fecha` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'licenciatura',
  `fechaEgreso` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'especializacion,diplomado',
  `idEstudio` int NOT NULL,
  PRIMARY KEY (`idPreparacion`) USING BTREE,
  INDEX `fk_idEstudio_EPP`(`idEstudio`) USING BTREE,
  CONSTRAINT `fk_idEstudio_EPP` FOREIGN KEY (`idEstudio`) REFERENCES `estudio` (`idEstudio`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of preparacionprofesional
-- ----------------------------

-- ----------------------------
-- Table structure for preparacionprofesionaldocente
-- ----------------------------
DROP TABLE IF EXISTS `preparacionprofesionaldocente`;
CREATE TABLE `preparacionprofesionaldocente`  (
  `idPreparacionProfesionalDocente` int NOT NULL AUTO_INCREMENT,
  `idPreparacion` int NOT NULL,
  `CURPDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idPreparacionProfesionalDocente`) USING BTREE,
  INDEX `fk_idPreparacion_PPPPD`(`idPreparacion`) USING BTREE,
  INDEX `fk_CURPDocente_DDPPD`(`CURPDocente`) USING BTREE,
  CONSTRAINT `fk_CURPDocente_DDPPD` FOREIGN KEY (`CURPDocente`) REFERENCES `datodocente` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_idPreparacion_PPPPD` FOREIGN KEY (`idPreparacion`) REFERENCES `preparacionprofesional` (`idPreparacion`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of preparacionprofesionaldocente
-- ----------------------------

-- ----------------------------
-- Table structure for procedencia
-- ----------------------------
DROP TABLE IF EXISTS `procedencia`;
CREATE TABLE `procedencia`  (
  `CCTSecundaria` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nombreSecundaria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `poblacionSecundaria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`CCTSecundaria`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of procedencia
-- ----------------------------

-- ----------------------------
-- Table structure for tiposegurosocial
-- ----------------------------
DROP TABLE IF EXISTS `tiposegurosocial`;
CREATE TABLE `tiposegurosocial`  (
  `idTipoSeguroSocial` int NOT NULL AUTO_INCREMENT,
  `nombreSeguroSocial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idTipoSeguroSocial`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tiposegurosocial
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
