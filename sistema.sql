/*
 Navicat Premium Data Transfer

 Source Server         : INVENTARIO
 Source Server Type    : MySQL
 Source Server Version : 100410
 Source Host           : localhost:3306
 Source Schema         : sistema

 Target Server Type    : MySQL
 Target Server Version : 100410
 File Encoding         : 65001

 Date: 07/10/2020 20:11:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alumnos
-- ----------------------------
DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE `alumnos`  (
  `rne` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT 'rne del alumno',
  `nombre` char(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'nombre del alumno',
  `apellido` char(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'apellido del alumno',
  `correoalumno` char(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fecha_nac` date NULL DEFAULT NULL COMMENT 'fecha de nacimiento',
  `pais_nac` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'pais de nacimiento',
  `depto_nac` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `municipio_nac` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'municipio de nacimiento',
  `direccion` char(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'direccion del alumno',
  `barrio` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'barrio ',
  `avenida` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'avenida',
  `calle` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'calle',
  `num_casa` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'numero casa',
  `tel_fijo` char(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'telefono fijo alum',
  `vivienda` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'si es propia alquilada o prestada',
  `nacionalidad` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'nacionalidad',
  `habilitado` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'si esta habilitado o no',
  `sexo` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'genero',
  `esc_ant` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'escuela anterior',
  `becado` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'si es becado',
  `mat_difi` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'materias que le dificultan',
  `mat_dest` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'materias en que destaca',
  `repetido` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'ha repetido algun año',
  `curso_repetido` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'curso que ha repetido',
  `retrasada` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'lleva retrasada',
  `mat_restrasada` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'materia que llevo ',
  `vive` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'con quien vive : madre y padre, solo madre, etc',
  `vive_especifique` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'especifique si vive con parientes o con otros',
  `num_hermanos` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'numero hermanos',
  `num_hermanas` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'numero hermanas',
  `lugar` char(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'lugar que ocupa (menor, mayor, unico, etc)',
  `num_hermanastros` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'numero hermanastros',
  `num_hermanastras` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'numero hermanastras',
  `num_hermanoadoptivo` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'numero hermano adoptivo',
  `num_hermanaadoptiva` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'numero hermana adoptiva',
  `padre_nombre` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'nombre del padre',
  `padre_id` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'id del padre',
  `padre_edad` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'edad del padre',
  `padre_estado` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'estado civil del padre',
  `padre_religion` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'religion del padre',
  `padre_direccion` char(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'direccion del padre',
  `padre_trabajo` char(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'profesion del padre',
  `padre_lugar` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'lugar de trabajo del padre',
  `padre_cargo` char(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'cargo del padre',
  `padre_trabajo_tel` char(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'telefono del trabajo del padre',
  `padre_trabajo_movil` char(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'movil del padre',
  `padre_tiempo` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'cuanto tiempo tiene para el alumno',
  `padre_correo` char(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'correo del padre',
  `padre_exalumno` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'es exalumno el padre',
  `madre_nombre` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'nombre de la madre',
  `madre_id` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'id de la madre',
  `madre_edad` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'edad de la madre',
  `madre_estado` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'estado civil madre',
  `madre_religion` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'religion madre',
  `madre_direccion` char(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'direccion madre',
  `madre_trabajo` char(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'profesion madre',
  `madre_lugar` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'lugar de trabajo madre',
  `madre_cargo` char(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'cargo de la madre',
  `madre_trabajo_tel` char(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'telefono madre',
  `madre_trabajo_movil` char(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'movil madre',
  `madre_tiempo` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'tiempo que dispone para el alum la madre',
  `madre_correo` char(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'madre correo',
  `madre_exalumno` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'es exalumno o no la madre',
  `encargado_nombre` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'nombre encargado',
  `encargado_id` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'id encargado',
  `encargado_edad` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'edad encargado',
  `encargado_estado` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'estado civil encargado',
  `encargado_religion` char(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'religion encargado',
  `encargado_direccion` char(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'direccion encargado',
  `encargado_trabajo` char(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'profesion encargado',
  `encargado_lugar` char(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'lugar de trabajo del encargado',
  `encargado_cargo` char(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'cargo encargado',
  `encargado_trabajo_tel` char(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'tel trabajo encargado',
  `encargado_trabajo_movil` char(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'movil encargado',
  `encargado_tiempo` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'tiempo que dispone el encargado para el alumno encargado',
  `encargado_correo` char(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'correo encargado',
  `encargado_exalumno` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'es exalumno el encargado',
  `padre_encargado1` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'encargado de sacar del cole 1',
  `padre_tel1` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'encargado sacar cole tel 1',
  `padre_encargado2` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'encargado sacar del cole 2',
  `padre_tel2` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'encargado sacar del cole tel 2',
  `padre_encargada3` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'encargado sacar del cole 3',
  `padre_tel3` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'encargado sacar del cole tel 3',
  `salud_problemas` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'tiene problemas de salud',
  `salud_especifique` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'si tiene problemas de salud que especifique',
  `salud_tiposangre` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'tipo de sangre',
  `salud_auditiva` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'problemas de audicion',
  `salud_visual` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'tiene problemas visuales',
  `salud_habla` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'tiene problemas de habla',
  `salud_otro` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'si tiene otro problema especifique',
  `salud_especifiquedificultad` char(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'especifique si tiene o no dificultad',
  `salud_enfermedad` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'tiene enfermedad grave ',
  `salud_enfermedad_especifique` char(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'si tiene enfermedad grave que especifique',
  `salud_ansiedad` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'antecedente de ansiedad',
  `salud_depresion` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'antecedente depresion',
  `salud_bipolaridad` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'antecedente bipolaridad',
  `salud_agresion` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'antecedente agresion',
  `salud_violencia` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'antecedente violencia',
  `salud_hiperactividad` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'antecedente hiperactividad',
  `salud_deficit` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'antecedente deficit de atencion',
  `salud_otro_antecedente` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'antecedente otro',
  `salud_antecedente_especifique` char(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'si tiene otro antecedente espoecifique',
  `salud_alergia` char(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'si tiene alergias',
  `salud_medicamento` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'toma medicamento o no',
  `salud_medicamento_especifique` char(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'si toma medicamento especifique',
  `salud_medicina_clase` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'toma medicina en horario de clase',
  `salud_medicina_clase_especifique` char(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'especifique que medicina toma en horario de clase',
  `salud_medicina_nombre` char(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'nombre del medicamento que toma',
  `salud_medicina_dosis` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'dosis en que la toma',
  `salud_medicina_hora` char(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'hora para ingesta de medicina',
  `religion_iglesia` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'religion ',
  `religion_especifique` char(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `religion_bautismo` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `religioncomunion` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `religion_confirmacion` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `religion_grupo` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `religion_grupo_especifique` char(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `religion_canta` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `religion_canta_especifique` char(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `religion_campamento` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `religion_magis` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nombre1` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id1` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tel1` char(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estadocivil` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jornada` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `codigo_curso` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `matriculado` date NULL DEFAULT NULL,
  `numero` int(11) NULL DEFAULT NULL,
  `codigo_materia` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `solvencia` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` longblob NULL,
  `indice1` float NULL DEFAULT NULL,
  `indice2` float NULL DEFAULT NULL,
  `indice3` float NULL DEFAULT NULL,
  `indice4` float NULL DEFAULT NULL,
  `indice5` float NULL DEFAULT NULL,
  `actas1` int(10) NULL DEFAULT 0,
  `actas2` int(10) NULL DEFAULT 0,
  `actas3` int(10) NULL DEFAULT 0,
  `actas4` int(10) NULL DEFAULT 0,
  `clave` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nopagado` int(11) NULL DEFAULT 0,
  `fecha_padre` date NULL DEFAULT NULL,
  `fecha_madre` date NULL DEFAULT NULL,
  `fecha_encargado` date NULL DEFAULT NULL,
  `mensajeconsejeria` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rne`) USING BTREE,
  UNIQUE INDEX `rne`(`rne`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alumnos
-- ----------------------------
INSERT INTO `alumnos` VALUES ('1804200502639', 'ALEX JAVIER', 'LAINEZ GOMEZ', '', '2002-12-21', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', '', '', '', '7', '999988889', '1', 'HONDUREÑO', '', 'M', 'ESC. BUEN PASTOR', '0', '', '', '0', '', '1', '', '1', '', '3', '0', '', '2', '1', '0', '0', 'No sabe', 'No sabe', '46', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', 'O+', '0', '0', '0', '0', 'No tiene', '0', 'No tiene', '0', '0', '0', '0', '0', '0', '0', '0', '', 'RENITIS', '0', 'No toma', '0', 'No toma', '', '', '', '5', '', '0', '0', '0', '0', '---------------------', '0', '---------------------', '1', '0', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-31', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-30', NULL);
INSERT INTO `alumnos` VALUES ('1804200203463', 'MIRNA MARIA', 'PINEDA RIVERA', '', '2002-08-25', 'HONDURAS', 'CORTES', 'SAN PEDRO SULA', 'EL Progreso Yoro', '', '18', '', '', '999988889', '3', 'HONDUREÑA', '', 'F', 'Best American School', '0', '', '', '0', '', '0', '', '7', 'abuela y mamá', '0', '0', '1', '0', '0', '0', '0', 'No sabe', 'No sabe', '', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', '', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '5', '', '0', '0', '0', '0', '---------------------', '0', '---------------------', '0', '0', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2019-12-03', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2017-01-16', NULL);
INSERT INTO `alumnos` VALUES ('1804200203279', 'ESTEFANIA', 'FRECH ALTAMIRANO', '', '2002-06-20', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', 'SAN FRANCISCO', '7', '12-', '1230', '999988889', '1', 'HONDURAS', '', 'F', 'SAN JOSE', '0', '', '', '0', '', '0', '', '1', '', '0', '1', '2', '0', '0', '0', '0', 'No sabe', 'No sabe', '52', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', 'O+', '0', '1', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '5', 'MINISTERIO INTERNACIONAL', '0', '0', '0', '0', '---------------------', '0', '---------------------', '1', '0', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2019-12-03', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-20', NULL);
INSERT INTO `alumnos` VALUES ('1804200202892', 'LUIS ANGEL', 'ROMERO IZAGUIRRE', '', '2002-07-05', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', 'LOS ANGELES', '4', '16-', '1631', '999988889', '3', 'HONDUREÑA', '', 'M', 'ESC. MARCO AURELIO S', '0', 'INGLES', 'OC. EDUC. FISICA', '0', '', '0', '', '4', '', '0', '0', '', '0', '0', '0', '0', 'No sabe', 'No sabe', '', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '1', '', '', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '1', '-------------------', '1', '0', '0', '0', '---------------------', '0', '---------------------', '1', '1', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2019-12-04', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-30', NULL);
INSERT INTO `alumnos` VALUES ('1804200302486', 'ANDRES FERNANDO', 'MEJIA YOUNG', '', '2003-07-28', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', '', '', '', '', '999988889', '1', 'HONDUREÑO', '', 'M', 'JOSE T. CABAÑAS', '0', '', '', '0', '', '0', '', '1', '', '0', '1', '', '0', '0', '0', '0', 'No sabe', 'No sabe', '41', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', '', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '1', '-------------------', '1', '0', '0', '0', '---------------------', '0', '---------------------', '1', '0', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2019-12-04', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-22', NULL);
INSERT INTO `alumnos` VALUES ('1804200300204', 'ANGEL JOSUE', 'RODAS FLORES', '', '2002-02-13', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', 'Los Castaños', '2', '10', '10', '999988889', '1', 'HONDUREÑO', '', 'M', 'INST. SAN JOSE', '0', '', 'ARTES, O.C', '0', '', '0', '', '1', '', '2', '0', '', '0', '0', '0', '0', 'No sabe', 'No sabe', '43', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', 'O+', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '1', '-------------------', '1', '0', '0', '0', '---------------------', '0', '---------------------', '0', '0', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-16', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-22', NULL);
INSERT INTO `alumnos` VALUES ('1804200200354', 'ANDREA NICOLE', 'CHAVARRIA ARAUS', '', '2001-11-04', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', 'SAN FRANCISCO', '5-6', '8', '850', '999988889', '1', 'HONDUREÑA', 'SI', 'F', 'SAN JÓSE', '0', 'MATEMATICAS', 'INGLES,ESPAÑOL', '0', '', '0', '', '1', '', '0', '0', '', '0', '0', '0', '0', 'No sabe', 'No sabe', '52', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '1', '', 'O+', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '6', '0', '0', '', 'Rinitis Aguda', '0', 'No toma', '0', 'No toma', '', '', '', '5', 'IGLESIA PETECOSTES,MINISTERIO RENACER', '0', '0', '0', '1', 'GRUPO DE DANZA DE LA IGLESIA', '0', '---------------------', '0', '0', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-16', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2014-12-02', NULL);
INSERT INTO `alumnos` VALUES ('0501200303152', 'MANUEL EFRAIN', 'VASQUEZ SALAZAR', '', '2002-11-23', 'HONDURAS', 'CORTES', 'SAN PEDRO SULA', 'EL Progreso Yoro', '', '12', '13', '1343', '999988889', '1', 'HONDUREÑO', '', 'M', 'JOSE CABAÑAS', '0', '', '', '0', '', '0', '', '1', '', '0', '0', '', '0', '0', '0', '0', 'No sabe', 'No sabe', '', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', 'O+', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '5', 'EBENEZER', '0', '0', '0', '0', '---------------------', '0', '---------------------', '1', '0', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-16', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-19', NULL);
INSERT INTO `alumnos` VALUES ('1804200300333', 'KENNETH ARMANDO', 'VASQUEZ SUAZO', '', '2002-04-18', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', '', '', '1', '6', '999988889', '3', 'HONDUREÑO', '', 'M', 'ESC. SAN JOSE', '0', 'MATEMATICAS', '', '0', '', '0', '', '4', '', '0', '1', '2', '0', '0', '0', '0', 'No sabe', 'No sabe', '46', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', 'A+', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '7', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '1', '-------------------', '1', '0', '0', '0', '---------------------', '0', '---------------------', '1', '1', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-21', 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-30', NULL);
INSERT INTO `alumnos` VALUES ('1808200400295', 'ALLISON GISSEL', 'AMADOR CRUZ', '', '2004-03-09', 'HONDURAS', 'YORO', 'SANTA RITA', 'EL Progreso Yoro', '', '', '', '', '999988889', '1', 'HONDUREÑA', '', 'F', 'CENTRO FRANCISCO M', '0', 'INGLES', 'ESPAÑOL', '0', '', '0', '', '1', '', '1', '0', '2', '0', '0', '0', '0', 'No sabe', 'No sabe', '40', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', '', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '1', '-------------------', '0', '0', '0', '0', '---------------------', '0', '---------------------', '0', '1', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-24', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-20', NULL);
INSERT INTO `alumnos` VALUES ('1804200202692', 'YALIL ALEJANDRO', 'GAMEZ FERRUFINO', '', '2012-07-02', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', '', '', '', '', '999988889', '2', 'HONDUREÑA', '', 'M', 'ESCUELA CHILDRENS WL', '0', 'NINGUNA', 'INGLES', '0', '', '0', '', '2', '', '0', '0', '', '0', '0', '0', '0', 'No sabe', 'No sabe', '', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', 'ING INDUSTRIAL', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', 'O+', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '5', 'IGLESIA EVANGELICA JESUS ES EL CRISTO', '0', '0', '0', '0', '---------------------', '0', '---------------------', '1', '1', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-27', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-19', NULL);
INSERT INTO `alumnos` VALUES ('1804200300911', 'NATHALY SUJEY', 'RODRIGUEZ MALDONADO', '', '2003-01-24', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', '', '', '', '', '999988889', '3', 'HONDUREÑO', '', 'F', 'SAN JOSE', '0', 'MATE, INGLES', 'ESPAÑOL, CIENCIA', '0', '', '0', '', '4', '', '0', '3', 'MENOR', '0', '0', '0', '0', 'No sabe', 'No sabe', '45', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '53', '', 'Cátolica', 'Colonia fraternidad', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', '', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '1', '-------------------', '1', '0', '0', '0', '---------------------', '0', '---------------------', '1', '0', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-28', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-20', NULL);
INSERT INTO `alumnos` VALUES ('1804200300078', 'FERNANDO DANIEL', 'DUBON HERNANDEZ', '', '2002-12-21', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', '', '10', '14', '1365', '999988889', '1', 'HONDUREÑO', '', 'M', 'ESC. SAN JOSE', '0', 'MATEMATICAS, ESPAÑOL', 'ARTISTICA', '0', '', '0', '', '1', '', '1', '0', '2', '0', '0', '0', '0', 'No sabe', 'No sabe', '45', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '1', '', 'O+', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', 'ASMA', '0', 'No toma', '0', 'No toma', '', '', '', '1', '-------------------', '1', '0', '0', '0', '---------------------', '0', '---------------------', '1', '1', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-28', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-19', NULL);
INSERT INTO `alumnos` VALUES ('1804200200698', 'MARCIO', 'MORAN VELASQUEZ', '', '2002-11-29', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', '', '', '', '8', '999988889', '3', 'HONDUREÑO', '', 'M', 'ESC. SAN JOSE', '0', 'ESPAÑOL', 'OTRAS', '0', '', '0', '', '4', '', '1', '1', '', '0', '0', '0', '0', 'No sabe', 'No sabe', '49', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '28', '', '', '', 'Comerciante', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', '', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '5', '', '0', '0', '0', '1', '', '0', '---------------------', '1', '0', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-29', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-31', NULL);
INSERT INTO `alumnos` VALUES ('1804200203741', 'GENESIS ABIGAIL', ' MARTINEZ VELEZ', '', '2002-11-15', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', '', '', '', '', '999988889', '3', 'HONDUREÑA', '', 'F', '', '0', '', '', '0', '', '0', '', '7', '', '0', '0', '', '0', '0', '0', '0', 'No sabe', 'No sabe', '', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '0', 'No tiene', '', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', 'No toma', '0', 'No toma', '', '', '', '5', '', '0', '0', '0', '0', '---------------------', '0', '---------------------', '0', '0', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2018-01-22', NULL);
INSERT INTO `alumnos` VALUES ('1804200502638', 'FREDY ORLANDO', 'LAINEZ GOMEZ', '', '2001-03-04', 'HONDURAS', 'YORO', 'EL PROGRESO', 'EL Progreso Yoro', '', '', '', '7', '999988889', '1', 'HONDUREÑO', '', 'M', 'ESC. BUEN PASTOR', '0', 'CC.SS', 'ESPAÑOL', '0', '', '1', '', '1', '', '3', '0', '', '0', '0', '0', '0', 'No sabe', 'No sabe', '46', 'No sabe', '', 'No sabe', 'No sabe', 'No sabe', '', 'No sabe', 'No sabe', '', 'No sabe', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '1', '', 'A+', '0', '0', '0', '0', '', '1', '', '0', '0', '0', '0', '0', '6', '7', '0', '', 'RENITIS', '0', 'No toma', '0', 'No toma', '', '', '', '5', '', '0', '0', '0', '0', '---------------------', '0', '---------------------', '1', '1', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-31', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-30', NULL);
INSERT INTO `alumnos` VALUES ('1810196500054', 'Marina', 'Rosa', 'sosa21@gmail.com', '2001-03-04', 'Honduras', 'Yoro', '', '', '', '', '', '', '', '', 'HondureÃ±a', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', 'RENITIS', '', '', '', '', '', '', '', 'catolica', '', 'bautismo', 'primera comunion', '', 'si', '', '0', '', '', 'si', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-31', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-30', NULL);
INSERT INTO `alumnos` VALUES ('180456786', 'Karol', 'Maldonado', 'sosa21@gmail.com', '2001-03-04', 'Honduras', 'Yoro', '', '', '', '', '', '', '', '', 'HondureÃ±a', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', 'RENITIS', '', '', '', '', '', '', '', 'catolica', '', 'bautismo', 'primera comunion', 'confirmacion', 'si', '', '0', '', '', 'si', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-31', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-30', NULL);
INSERT INTO `alumnos` VALUES ('1804200103171', 'Guillermo', 'Andujar', 'Gandujar@gmail.com', '2001-06-11', 'HONDURAS', 'Yoro', 'El Progreso', 'Col.18 Septiembre', 'inva', '12 ave', '3era calle', '10', '99132451', '2', 'HondureÃ±a', 'SI', 'M', 'Ramon Rosa', 'no', 'Matematicas', 'ingles', 'no', '', 'no', '', '', '', '', '', 'Mayor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Margarita Andujar', '1804197703456', '49', 'Union Libre', 'Evangelica', 'Col. 18 de Septiembre', 'Ingeniera', 'BOMSA', 'Gerente de planta', '22113323', '', '8 hrs', 'mandujar@gmail.com', 'no', 'Marisela Oliva', '4442255', '', '', '', '', 'no', '', '', '', 'visuales', '', '', '', '1', '', '', '', '', '', 'violencias', '', '', '', '', 'RENITIS', '', '', 'no', '', '', '', '', 'evangelicos', '', 'bautismo', '', '', 'no', '', '0', '', '', 'no', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-31', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-30', NULL);

-- ----------------------------
-- Table structure for pagos
-- ----------------------------
DROP TABLE IF EXISTS `pagos`;
CREATE TABLE `pagos`  (
  `rne` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `febrero` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marzo` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `abril` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mayo` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `junio` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `julio` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agosto` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `septiembre` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `octubre` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `noviembre` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comentarios` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rne`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pagos
-- ----------------------------
INSERT INTO `pagos` VALUES ('1804200202692', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', ' PAGADO');
INSERT INTO `pagos` VALUES ('1804200300911', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', 'DEBE 4 MESES');
INSERT INTO `pagos` VALUES ('1804200203463', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', 'DEBE 7 MESES');
INSERT INTO `pagos` VALUES ('1804200200698', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DEBE 9 MESES');
INSERT INTO `pagos` VALUES ('0501200303152', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'PAGADO');
INSERT INTO `pagos` VALUES ('1804200202892', '1', '0', '1', '0', '1', '0', '1', '0', '0', '1', 'DEBE 5 MESES');
INSERT INTO `pagos` VALUES ('1804200300333', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', 'DEBE 1 MES');
INSERT INTO `pagos` VALUES ('1804200203741', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'PAGADO');
INSERT INTO `pagos` VALUES ('1804200502638', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', 'DEBE 5 MESES');
INSERT INTO `pagos` VALUES ('1804200300078', '0', '1', '0', '1', '1', '1', '0', '1', '0', '1', 'DEBE 4 MESES');
INSERT INTO `pagos` VALUES ('1804200203279', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'PAGADO');
INSERT INTO `pagos` VALUES ('1804200300204', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 'DEBE 3 MESES');
INSERT INTO `pagos` VALUES ('1804200302486', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'DEBE 8 MESES');
INSERT INTO `pagos` VALUES ('1804200200354', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DEBE 9 MESES');
INSERT INTO `pagos` VALUES ('1808200400295', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'PAGADO');
INSERT INTO `pagos` VALUES ('1804200502639', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'PAGADO');

SET FOREIGN_KEY_CHECKS = 1;
