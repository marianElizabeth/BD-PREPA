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

 Date: 16/12/2021 10:39:56
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
-- Table structure for beca
-- ----------------------------
DROP TABLE IF EXISTS `beca`;
CREATE TABLE `beca`  (
  `idBeca` int NOT NULL AUTO_INCREMENT,
  `tipoBeca` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idBeca`) USING BTREE,
  UNIQUE INDEX `key_BecaTipoBeca`(`tipoBeca`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for datosalumno
-- ----------------------------
DROP TABLE IF EXISTS `datosalumno`;
CREATE TABLE `datosalumno`  (
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'a--MATRÍCULA',
  `nombreAlumno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'h--NOMBRE',
  `ape1Alumno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'g--APELLIDO PATERNO',
  `ape2Alumno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'f--APELLIDO MATERNO',
  `fechaBaja` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'c--FECHA DE BAJA',
  `numExpediente` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'd--NUMERO DE EXPEDIENTE',
  `folioAlumno` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'e--FOLIO',
  `CURPAlumno` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'i--CURP',
  `fechaNacimientoAlumno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'p-q-r--FECHA DE NACIMIENTO',
  `correoPersonalAlumno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 't--CORREO ELECTRÓNICO PERSONAL',
  `correoInstitucionalAlumno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'u--CORREO ELECTRÓNICO INSTITUCIONAL DEL ALUMNO',
  `referenciaDomicilio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ad---REFERENCIA DE DOMICLIO',
  `telefonoFijoAlumno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ah--TELEFONO FIJO',
  `telefonoCelularAlumno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ag--TELÉFONO CELULAR DEL ALUMNO',
  `numSeguroSocial` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'al--NÚMERO DE SEGURIDAD SOCIAL',
  `folioBeca` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ap--FOLIO BECA',
  `aciertosExamenIngresoAlumno` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'aq--ACIERTOS DE EXAMEN DE INGRESO',
  `promSecundaria` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'au--PROMEDIO DE SECUNDARIA',
  `nombreTutor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'av--NOMBRE DEL TUTOR',
  `idSexo` int NOT NULL COMMENT 'l-m---SEXO',
  `idEdad` int NOT NULL COMMENT 's--EDAD',
  `idGrupo` int NOT NULL COMMENT 'w--GRUPO',
  `idGrado` int NOT NULL COMMENT 'v--GRADO',
  `idAlumnoTrabaja` int NOT NULL COMMENT 'ai-aj--EL ALUMNO TRABAJA',
  `idTipoSeguroSocial` int NOT NULL COMMENT 'ak--TIPO DE SEGURO DE SALUD',
  `idInscritoAlumnno` int NOT NULL COMMENT 'am-an--INSCRITO',
  `idParentesco` int NOT NULL COMMENT 'bi--DE QUIEN DEPENDE ECONÓMICAMENTE EL ALUMNO',
  `idBeca` int NOT NULL COMMENT 'ao--BECA',
  `idEntidadFederativa` int NOT NULL COMMENT 'n-o--LUGAR DE NACIMIENTO DEL ALUMNO',
  `CCTEscuela` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'as---C.C.T. SECUNDARIA',
  `idOcupacion` int NOT NULL COMMENT 'bj--OCUPACIÓN DE QUIEN DEPENDE ECONÓMICAMENTE EL ALUMNO',
  `folioCURPAlumno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'j--FOLIO CURP DE ALUMNO',
  `RFCAlumno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'k--RFC',
  `municipioNacimientoAlumno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`matricula`) USING BTREE,
  UNIQUE INDEX `key_DatosAlum_numExpediente`(`numExpediente`) USING BTREE,
  UNIQUE INDEX `key_DatosAlum_FolioAlumno`(`folioAlumno`) USING BTREE,
  UNIQUE INDEX `key_DatosAlum_CURPAlumno`(`CURPAlumno`) USING BTREE,
  UNIQUE INDEX `key_DatosAlum_numSeguroSocial`(`numSeguroSocial`) USING BTREE,
  UNIQUE INDEX `key_DatosAlum_FolioBeca`(`folioBeca`) USING BTREE,
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
  INDEX `fk_Ocupacion`(`idOcupacion`) USING BTREE,
  CONSTRAINT `fk_AlumnoTrabajaDatosAlumno_idAlumnoTrabaja` FOREIGN KEY (`idAlumnoTrabaja`) REFERENCES `alumnotrabaja` (`idAlumnoTrabaja`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_BecaDatosAlumno_idBeca` FOREIGN KEY (`idBeca`) REFERENCES `beca` (`idBeca`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_EdadDatosAlumno_idEdad` FOREIGN KEY (`idEdad`) REFERENCES `edad` (`idEdad`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_EscuelaDatosAlumnos_CCTEscuela` FOREIGN KEY (`CCTEscuela`) REFERENCES `escuela` (`CCTEscuela`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_GradoDatosAlumno_idGrado` FOREIGN KEY (`idGrado`) REFERENCES `grado` (`idGrado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_GrupoDatosAlumno_idGrupo` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_InscritoAlumnoDatosAlumno_idInscritoAlumno` FOREIGN KEY (`idInscritoAlumnno`) REFERENCES `inscritoalumno` (`idInscrito`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_MunicipioDatosAlumnos_idEntidadFederativa` FOREIGN KEY (`idEntidadFederativa`) REFERENCES `entidadfederativa` (`idEntidadFederativa`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_OcupacionDatosDocente_idOcupacion` FOREIGN KEY (`idOcupacion`) REFERENCES `ocupacion` (`idOcupacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ParentescoDatosAlumno_idParentesco` FOREIGN KEY (`idParentesco`) REFERENCES `parentesco` (`idParentesco`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_SexoDatosAlumno_idSexo` FOREIGN KEY (`idSexo`) REFERENCES `sexo` (`idSexo`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_TipoSeguroSocialDatosAlumno_idSeguroSocial` FOREIGN KEY (`idTipoSeguroSocial`) REFERENCES `tiposegurosocial` (`idSeguroSocial`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for datosdocente_especializacion
-- ----------------------------
DROP TABLE IF EXISTS `datosdocente_especializacion`;
CREATE TABLE `datosdocente_especializacion`  (
  `idDatosDocenteEspecializacion` int NOT NULL AUTO_INCREMENT,
  `CURPDatosDocentes` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idEspecializacion` int NOT NULL,
  `fechaEgresoEspecializacion` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosDocenteEspecializacion`) USING BTREE,
  INDEX `fk_DatosDocentesEspecializacion_idLicenciatura`(`idEspecializacion`) USING BTREE,
  INDEX `fk_DatosDocentesEspecializacion_CURPDatosDocentes`(`CURPDatosDocentes`) USING BTREE,
  CONSTRAINT `fk_DatosDocentesEspecializacion_CURPDatosDocentes` FOREIGN KEY (`CURPDatosDocentes`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosDocentesEspecializacion_idLicenciatura` FOREIGN KEY (`idEspecializacion`) REFERENCES `especializacion` (`idEspecializacion`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
  `fechaEscuelaEgresion` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosDocenteLicenciatura`) USING BTREE,
  INDEX `fk_DatosDocentesLicenciatura_idLicenciatura`(`idLicenciatura`) USING BTREE,
  INDEX `fk_DatosDocentesLicenciatura_CURPDatosDocentes`(`CURPDatosDocente`) USING BTREE,
  CONSTRAINT `fk_DatosDocentesLicenciatura_CURPDatosDocentes` FOREIGN KEY (`CURPDatosDocente`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosDocentesLicenciatura_idLicenciatura` FOREIGN KEY (`idLicenciatura`) REFERENCES `licenciatura` (`idLicenciatura`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for datosdocentes
-- ----------------------------
DROP TABLE IF EXISTS `datosdocentes`;
CREATE TABLE `datosdocentes`  (
  `CURPDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombreDocente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ape1Docente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ape2Docente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaNacimientoDocente` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RFCDocente` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `claveISSEMYM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telefonoCelular` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telefonoFijo` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaDeIngresoSEducativoEstatal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaDeIngresoAlNivel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaDeBaseAlNivel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaDeIngresoAlCargo` varbinary(20) NULL DEFAULT NULL,
  `fechaDeIngresoInstitucion` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaDeIngresoCarreraDocente` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `puntajeEscalafonario` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CCTEscuela` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idNivelLaboral` int NOT NULL,
  `idPuestoInstitucional` int NOT NULL,
  PRIMARY KEY (`CURPDocente`) USING BTREE,
  UNIQUE INDEX `key_DatosDocente_RFCDocente`(`RFCDocente`) USING BTREE,
  UNIQUE INDEX `key_DatosDocente_telefonoCelular`(`telefonoCelular`) USING BTREE,
  UNIQUE INDEX `key_DatosDocente_claveISSEMYM`(`claveISSEMYM`) USING BTREE,
  INDEX `fk_EscuelaDatosDocente_CCTEscuela`(`CCTEscuela`) USING BTREE,
  INDEX `fk_NivelLaboralDatosDocente_idNivelLaboral`(`idNivelLaboral`) USING BTREE,
  INDEX `fk_PuestoInstitucionalDatosDocente_idPuestoInstitucional`(`idPuestoInstitucional`) USING BTREE,
  CONSTRAINT `fk_EscuelaDatosDocente_CCTEscuela` FOREIGN KEY (`CCTEscuela`) REFERENCES `escuela` (`CCTEscuela`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_NivelLaboralDatosDocente_idNivelLaboral` FOREIGN KEY (`idNivelLaboral`) REFERENCES `nivellaboral` (`idNivelLaboral`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_PuestoInstitucionalDatosDocente_idPuestoInstitucional` FOREIGN KEY (`idPuestoInstitucional`) REFERENCES `puestoinstitucional` (`idPuestoInstitucional`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for datosdocentes_diplomado
-- ----------------------------
DROP TABLE IF EXISTS `datosdocentes_diplomado`;
CREATE TABLE `datosdocentes_diplomado`  (
  `idDatosDocenteDiplomado` int NOT NULL AUTO_INCREMENT,
  `CURPDatosDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idDiplomado` int NOT NULL,
  `fechaEgresoDiplomado` varbinary(20) NULL DEFAULT NULL,
  PRIMARY KEY (`idDatosDocenteDiplomado`) USING BTREE,
  INDEX `fk_DatosDocentesDiplomado_idDiplomado`(`idDiplomado`) USING BTREE,
  INDEX `fk_DatosDocentesDiplomado_CURPDatosDocentes`(`CURPDatosDocente`) USING BTREE,
  CONSTRAINT `fk_DatosDocentesDiplomado_CURPDatosDocentes` FOREIGN KEY (`CURPDatosDocente`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_DatosDocentesDiplomado_idDiplomado` FOREIGN KEY (`idDiplomado`) REFERENCES `diplomado` (`idDiplomado`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for domicilioalumno
-- ----------------------------
DROP TABLE IF EXISTS `domicilioalumno`;
CREATE TABLE `domicilioalumno`  (
  `idDomicilioAlumno` int NOT NULL AUTO_INCREMENT,
  `matricula` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idLocalidad` int NOT NULL,
  `numDomicilioAlumno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `calleDomicilioAlumno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `coloniaAlumno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cpAlumno` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idDomicilioAlumno`) USING BTREE,
  INDEX `fk_LocalidadDomicilio_IdLocalidad`(`idLocalidad`) USING BTREE,
  INDEX `fk_DatosAlumnoDomicilio_matricula`(`matricula`) USING BTREE,
  CONSTRAINT `fk_DatosAlumnoDomicilio_matricula` FOREIGN KEY (`matricula`) REFERENCES `datosalumno` (`matricula`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_LocalidadDomicilio_IdLocalidad` FOREIGN KEY (`idLocalidad`) REFERENCES `localidad` (`idLocalidad`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for domiciliodocente
-- ----------------------------
DROP TABLE IF EXISTS `domiciliodocente`;
CREATE TABLE `domiciliodocente`  (
  `idDomicilioDocente` int NOT NULL,
  `CurpDocente` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idLocalidad` int NOT NULL,
  `numDomicilioDocente` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `calleDomicilioDocente` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `coloniaDocente` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cpDocente` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idDomicilioDocente`) USING BTREE,
  INDEX `fk_LocalidadDomicilioDocente_idLocalidad`(`idLocalidad`) USING BTREE,
  INDEX `fk_DatosDocentesDomicilio_CurpDocente`(`CurpDocente`) USING BTREE,
  CONSTRAINT `fk_DatosDocentesDomicilio_CurpDocente` FOREIGN KEY (`CurpDocente`) REFERENCES `datosdocentes` (`CURPDocente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_LocalidadDomicilioDocente_idLocalidad` FOREIGN KEY (`idLocalidad`) REFERENCES `localidad` (`idLocalidad`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for licenciatura
-- ----------------------------
DROP TABLE IF EXISTS `licenciatura`;
CREATE TABLE `licenciatura`  (
  `idLicenciatura` int NOT NULL AUTO_INCREMENT,
  `descripcionLicenciatura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idLicenciatura`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for nombrearchivo
-- ----------------------------
DROP TABLE IF EXISTS `nombrearchivo`;
CREATE TABLE `nombrearchivo`  (
  `idNombreArchivo` int NOT NULL AUTO_INCREMENT,
  `nombreArchivo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idNombreArchivo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tiposegurosocial
-- ----------------------------
DROP TABLE IF EXISTS `tiposegurosocial`;
CREATE TABLE `tiposegurosocial`  (
  `idSeguroSocial` int NOT NULL AUTO_INCREMENT,
  `tipoSeguroSocial` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idSeguroSocial`) USING BTREE,
  UNIQUE INDEX `key_TipoSeguroSocial_desTipoSeguroSocial`(`tipoSeguroSocial`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for turno
-- ----------------------------
DROP TABLE IF EXISTS `turno`;
CREATE TABLE `turno`  (
  `idTurno` int NOT NULL AUTO_INCREMENT,
  `descripcionTurno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idTurno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
