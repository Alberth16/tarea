<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sin título</title>
</head>

<?php 
 include ("encaventana.php");
	
	
$link = mysqli_connect("127.0.0.1", "root", "", "sistema");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
     error_reporting(0);
	 
	 
    // $rne =$_post["trne"];
   	// $nombre=$_post["tnombre"];
	
	$rne = mysqli_real_escape_string($link, $_REQUEST['trne']);
    $nombre = mysqli_real_escape_string($link, $_REQUEST['tnombre']);
	$apellido = mysqli_real_escape_string($link, $_REQUEST['tapellido']);
	$email = mysqli_real_escape_string($link, $_REQUEST['temail']);
	$fnac = mysqli_real_escape_string($link, $_REQUEST['fechance']);
	$pnace = mysqli_real_escape_string($link, $_REQUEST['tpaisnacido']);
	$dnace = mysqli_real_escape_string($link, $_REQUEST['tdepartamento']);
	$municipio = mysqli_real_escape_string($link, $_REQUEST['tmunicpio']);
	$dir = mysqli_real_escape_string($link, $_REQUEST['tdireccion']);
	$barrio = mysqli_real_escape_string($link, $_REQUEST['tbarrio']);
	$avenida = mysqli_real_escape_string($link, $_REQUEST['tavenida']);
	$calle = mysqli_real_escape_string($link, $_REQUEST['tcalle']);
	$numcasa = mysqli_real_escape_string($link, $_REQUEST['tnumerocasa']);
	$telfijo = mysqli_real_escape_string($link, $_REQUEST['ttelofofijo']);
	$vivienda = mysqli_real_escape_string($link, $_REQUEST['tviven']);
	$nacionalidad = mysqli_real_escape_string($link, $_REQUEST['tnacionalidad']);
	$habilitado = mysqli_real_escape_string($link, $_REQUEST['thabilitado']);
	$sexo = mysqli_real_escape_string($link, $_REQUEST['tsexo']);
	$escuela = mysqli_real_escape_string($link, $_REQUEST['tescuelaanterior']);
	$beca = mysqli_real_escape_string($link, $_REQUEST['Becado']);
	$mdificil = mysqli_real_escape_string($link, $_REQUEST['tmateriasdificiles']);
	$mfacil = mysqli_real_escape_string($link, $_REQUEST['tmateriassobre']);
	$repeat = mysqli_real_escape_string($link, $_REQUEST['repetidoa']);
	$cursorepetido = mysqli_real_escape_string($link, $_REQUEST['trepetido']);
	$mrepeat = mysqli_real_escape_string($link, $_REQUEST['mrepetida']);
	
	$mretrasada = mysqli_real_escape_string($link, $_REQUEST['tretrasada']);
	$cviven = mysqli_real_escape_string($link, $_REQUEST['cviven']);
	$p = mysqli_real_escape_string($link, $_REQUEST['tespecifique']);
	$nhermanos = mysqli_real_escape_string($link, $_REQUEST['tnumhermanos']);
	$nhermanas = mysqli_real_escape_string($link, $_REQUEST['tnumhermanas']);
	$lugar = mysqli_real_escape_string($link, $_REQUEST['tlugarocuacion']);
	$numhermanos = mysqli_real_escape_string($link, $_REQUEST['tnumhermanastros']);
	$numhermanas = mysqli_real_escape_string($link, $_REQUEST['tnumhermanastras']);
	$numhermanosadop = mysqli_real_escape_string($link, $_REQUEST['tnumhermanosadpotivos']);
	$numhermanasadop = mysqli_real_escape_string($link, $_REQUEST['tnumhermanasadoptivas']);
	$padre = mysqli_real_escape_string($link, $_REQUEST['tnamepadre']);
	$pid = mysqli_real_escape_string($link, $_REQUEST['tidpadre']);
	$pedad = mysqli_real_escape_string($link, $_REQUEST['tedadpadre']);
	//$pfechan = 
	$pcivil = mysqli_real_escape_string($link, $_REQUEST['testadocivilpadre']);
	$preligion = mysqli_real_escape_string($link, $_REQUEST['treligionpadre']);
	$pdir = mysqli_real_escape_string($link, $_REQUEST['tdirecpadre']);
	$ptrab = mysqli_real_escape_string($link, $_REQUEST['tprofecionpadre']);
	$plugar = mysqli_real_escape_string($link, $_REQUEST['tlugtrabajopadre']);
	$pcargo = mysqli_real_escape_string($link, $_REQUEST['tcargopadre']);
	$ptel = mysqli_real_escape_string($link, $_REQUEST['ttelefonopadre']);
	$ptelmovil = mysqli_real_escape_string($link, $_REQUEST['ttelefonopadre']);
	$ptiempo = mysqli_real_escape_string($link, $_REQUEST['ttiempopadre']);
	$pemail = mysqli_real_escape_string($link, $_REQUEST['temailpadre']);
	$pex = mysqli_real_escape_string($link, $_REQUEST['pexa']);
	
	$madre = mysqli_real_escape_string($link, $_REQUEST['tnombremadre']);
	$mid = mysqli_real_escape_string($link, $_REQUEST['tidmadre']);
	$medad = mysqli_real_escape_string($link, $_REQUEST['tedadmadre']);
	//$mfechan =
	$mcivil = mysqli_real_escape_string($link, $_REQUEST['testadomadre']);
	$mreligion = mysqli_real_escape_string($link, $_REQUEST['treligionmadre']);
	$mdir = mysqli_real_escape_string($link, $_REQUEST['tdireccionmadre']);
	$mtrab = mysqli_real_escape_string($link, $_REQUEST['tprofecionmadre']);
	$mlugar = mysqli_real_escape_string($link, $_REQUEST['tlugarmadre']);
	$mcargo = mysqli_real_escape_string($link, $_REQUEST['tcargomadre']);
	$mtel = mysqli_real_escape_string($link, $_REQUEST['ttelmadre']);
	$mtelmovil = mysqli_real_escape_string($link, $_REQUEST['tmovilmadre']);
	$mtiempo = mysqli_real_escape_string($link, $_REQUEST['titempomadre']);
	$memail = mysqli_real_escape_string($link, $_REQUEST['temailmadre']);
	$mexa = mysqli_real_escape_string($link, $_REQUEST['mex']);
	
	$encargado = mysqli_real_escape_string($link, $_REQUEST['tnombreencargado']);
	$eid = mysqli_real_escape_string($link, $_REQUEST['tidencargado']);
	$eedad = mysqli_real_escape_string($link, $_REQUEST['tedadencargado']);
	//$mfechan =
	$ecivil = mysqli_real_escape_string($link, $_REQUEST['testadoencargado']);
	$ereligion = mysqli_real_escape_string($link, $_REQUEST['treligionencargado']);
	$edir = mysqli_real_escape_string($link, $_REQUEST['tdireccionencargado']);
	$etrab = mysqli_real_escape_string($link, $_REQUEST['tprofecionencargado']);
	$elugar = mysqli_real_escape_string($link, $_REQUEST['tlugarencargado']);
	$ecargo = mysqli_real_escape_string($link, $_REQUEST['tcargoencargado']);
	$etel = mysqli_real_escape_string($link, $_REQUEST['ttelencargado']);
	$etelmovil = mysqli_real_escape_string($link, $_REQUEST['tmovilencargado']);
	$etiempo = mysqli_real_escape_string($link, $_REQUEST['ttiempoencargado']);
	$eemail = mysqli_real_escape_string($link, $_REQUEST['temailencargado']);
	$exa = mysqli_real_escape_string($link, $_REQUEST['exalumno']);
	
	$encargado1 = mysqli_real_escape_string($link, $_REQUEST['tnombre1padre']); 
	$encargadotel1 = mysqli_real_escape_string($link, $_REQUEST['ttel1padre']); 
	$encargado2 = mysqli_real_escape_string($link, $_REQUEST[' tnombre2padre']); 
	$encargadotel2 = mysqli_real_escape_string($link, $_REQUEST['ttel2padre']); 
	$encargado3 = mysqli_real_escape_string($link, $_REQUEST['tnombre3padre']); 
	$encargadotel3 = mysqli_real_escape_string($link, $_REQUEST['ttel3padre']); 
	
	$problem = mysqli_real_escape_string($link, $_REQUEST['problemassalud']);
	$saludespecifique = mysqli_real_escape_string($link, $_REQUEST['tgeneralidades']); 
	$tsangre = mysqli_real_escape_string($link, $_REQUEST['tsangre']); 
	$audio = mysqli_real_escape_string($link, $_REQUEST['audio']); 
	$visual = mysqli_real_escape_string($link, $_REQUEST['visual']);
	$habla = mysqli_real_escape_string($link, $_REQUEST['habla']);
	$otro = mysqli_real_escape_string($link, $_REQUEST['otro']);
	$agresion = mysqli_real_escape_string($link, $_REQUEST['agresion']);
	$ansiedad = mysqli_real_escape_string($link, $_REQUEST['ansiedad']);
	$depresion = mysqli_real_escape_string($link, $_REQUEST['depresion']);
	$bipolaridad = mysqli_real_escape_string($link, $_REQUEST['bipolariad']);
	$violencia = mysqli_real_escape_string($link, $_REQUEST['violencia']);
	$hiperactividad = mysqli_real_escape_string($link, $_REQUEST['hiperactividad']);
	$deficit = mysqli_real_escape_string($link, $_REQUEST['deficit']);
	$medicamentos = mysqli_real_escape_string($link, $_REQUEST['medicamentos']);
	
	
	
	$despecifique = mysqli_real_escape_string($link, $_REQUEST['tdificul']); 
	
	$antecedentes = mysqli_real_escape_string($link, $_REQUEST['tantecedentes']);
	$medies = mysqli_real_escape_string($link, $_REQUEST['tmedicamento']); 
	$medies1 = mysqli_real_escape_string($link, $_REQUEST['medicamentos']); 
	$medies2 = mysqli_real_escape_string($link, $_REQUEST['tmedi']); 
	
	$snom = mysqli_real_escape_string($link, $_REQUEST['tnombremedi']); 
	$singesta = mysqli_real_escape_string($link, $_REQUEST['thoradosis']); 
	$sdosis = mysqli_real_escape_string($link, $_REQUEST['tdosis']); 
	
	$religion = mysqli_real_escape_string($link, $_REQUEST['religion']);
	$bautismo = mysqli_real_escape_string($link, $_REQUEST['bautismo']);
	$comunion = mysqli_real_escape_string($link, $_REQUEST['comunion']);
	$confirmacion = mysqli_real_escape_string($link, $_REQUEST['confirmacion']);
    $grupojuvenil = mysqli_real_escape_string($link, $_REQUEST['grupojuvenil']);
	$campamento = mysqli_real_escape_string($link, $_REQUEST['campamento']);
	$magis = mysqli_real_escape_string($link, $_REQUEST['magis']);
	
	
	
	$respecifique = mysqli_real_escape_string($link, $_REQUEST['treligion']); 
	$rcantaespecifique = mysqli_real_escape_string($link, $_REQUEST['tmusica']); 
	$rgrupoespecifique = mysqli_real_escape_string($link, $_REQUEST['tactividades']); 	
	
	
		 $rs3=mysqli_query($link, "select * from alumnos where rne='$rne'");
		 $num3=mysqli_num_rows($rs3);
		

	 
        if($num3<=0)
			{
			   
				 $sql="INSERT INTO `alumnos` VALUES ('$rne', '$nombre', '$apellido', '$email', '$fnac', '$pnace', '$dnace', '$municipio', '$dir', '$barrio', '$avenida', '$calle', '$numcasa', '$telfijo', '$vivienda', '$nacionalidad', '$habilitado', '$sexo', '$escuela', '$beca', '$mdificil', '$mfacil', '$repeat', '$cursorepetido', '$mrepeat', '$mretrasada', '$cviven', '$p', '$nhermanos', '$nhermanas', '$lugar', '$numhermanos', '$numhermanas', '$numhermanosadop', '$numhermanasadop', '$padre', '$pid', '$pedad', '$pcivil', '$preligion', '$pdir', '$ptrab ', '$plugar', '$pcargo', '$ptel', '$ptelmovil', '$ptiempo ', '$pemail', '$pex', '$madre', '$mid', '$medad', '$mcivil', '$mreligion', '$mdir', '$mtrab', '$mlugar', '$mcargo', '$mtel', '$mtelmovil', '$mtiempo', '$memail', '$mexa', '$encargado', '$eid', '$eedad', '$ecivil', '$ereligion', '$edir', '$etrab', '$elugar', '$ecargo', '$etel', '$etelmovil', '$etiempo', '$eemail', '$exa', '$encargado1', '$encargadotel1', '$encargado2', '$encargadotel2', '$encargado3', '$encargadotel3', '$problem', '$saludespecifique', '$tsangre', '$audio', '$visual', '$habla', '$otro', '$despecifique', '1', '', '$ansiedad', '$depresion', '$bipolaridad', '$agresion', '$violencia', '$hiperactividad', '$deficit', '$otros', '$medies', 'RENITIS', '', '$antecedentes', '$medies1', '$medies2', '$snom', '$singesta', '$dosis', '$religion', '$respecifique', '$bautismo','$comunion', '$confirmacion', '$grupojuvenil', '$rgrupoespecifique', '0', '$rcantaespecifique', '$campamento', '$magis', NULL, NULL, NULL, NULL, NULL, 'IIIBCAD', '2020-01-31', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2015-01-30', NULL);";
				 
				?>
	
	<div id="dialogoAnuncio" tittle="AVISO">
				<p>REGISTRO ADICIONADO CORRECTAMENTE</p>
	  <?php
	
			 }
		else
		{
				if(mysqli_query($link, $sql))
		  {
		  ?>
		  		<div id="dialogoAnuncio" tittle="AVISO">
				<p>ERROR: NO SE PUEDE EJECUTAR </p>

		  
	<?php

			}
		   elseif($num3>=0) 
		   {
			  ?> 			   
			<div id="dialogoRegresar" tittle="AVISO">
				<p>ESTE NUMERO DE IDENTIDAD YA EXISTE</p>
				
				  
	<?php
			    echo "PUEDE MODIFICARLO";
			   


				}

		}

		
				error_reporting(0);
		

mysql_free_result($result);
	mysqli_close($conexion);

		

	
	
	?>
	
	
<body>
</body>
</html>