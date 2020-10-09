<!DOCTYPE html>

<html lang="es">
<head>
<meta charset="utf-8">
<title>ESCUELA BILINGÜE E INSTITUTO SAN JOSE</title>
<link href="jQueryAssets/jquery.ui.core.min.css" rel="stylesheet" type="text/css">
<link href="jQueryAssets/jquery.ui.theme.min.css" rel="stylesheet" type="text/css">
<link href="jQueryAssets/jquery.ui.tabs.min.css" rel="stylesheet" type="text/css">
<script src="jQueryAssets/jquery-1.11.1.min.js"></script>
<script src="jQueryAssets/jquery.ui-1.10.4.tabs.min.js"></script>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

<style>
	*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
	}
	body{
		background: #f0f0f0;
	}
	.container{
		width: 100%;
		max-width: 700px;
		margin: auto;
		margin-top: 100px;
	}
	.lbl-menu{
		background: #234;
	}
	.lbl-menu label{
		display: inline-block;
		padding: 20px;
		color: #fff;
		cursor: pointer;
		transition: all 400ms ease;
	}
	.lbl-menu label:hover{
		background: #28435d;
	}
	.content{
		position: relative;
	}
	.content div{
		position: absolute;
		line-height: 1.8;
		transition: all 600ms ease;
		opacity: 0;
		visibility: hidden;
		transform: scale(0.90);
		padding: 30px;
		background: #fff;
		padding-bottom: 40px;
	}
	#radio1,#radio2,#radio3,#radio4{
		display: none;
	}
	#radio1:checked ~ .tab1,
	#radio2:checked ~ .tab2,
	#radio3:checked ~ .tab3,
	#radio4:checked ~ .tab4
	{
		opacity: 1;
		visibility: visible;
		transform: scale(1);
	}
	.content div:after{
		position: absolute;
		content: "";
		border-left: 10px solid transparent;
		border-right: 10px solid transparent;
		border-top: 10px solid transparent;
		border-bottom: 10px solid #fff;
		bottom: 100%;
		left: 28px;
	}
	.content .tab2:after{
		left: 122px;
	}
	.content .tab3:after{
		left: 210px;
	}
	.content .tab4:after{
		left: 303px;
	}
	@media only screen and (min-width:320px) and (max-width:768px){
		.container{
		width: 90%;
		}
	}
	</style>
</head>
	<script language="javascript" src="js/jquery.js"></script>
<script language="javascript">
$(document).ready(function(){
	
	$("#cod").on('keyup', function (e) {
		  var keycode = e.keyCode || e.which;
			if (keycode == 13) {
				//alert("Enter!");
				ficha=$("#cod").val();
				//alert( n1);
		
		$.post("agregardatos.php", {  xficha: ficha }, function(data){
                $("#resp").html(data);
        });  
		
			}
		});
   	
});
</script>
<body>
	<form method="post" enctype="multipart/form-data" name="form1" id="form1">
	<?php 
		$nombre= 'Nathaly Rodriguez';
		?>
<div class="container"></div>
<div class="lbl-menu">
<label for="radio1">ALUMNOS</label>
<label for="radio2">DATOS FAMILIARES</label>
<label for="radio3">INFORMACIÓN MÉDICA</label>
<label for="radio4">INFORMACIÓN RELIGIOSA</label>
</div>
<div class="content">
<input type="radio" name="radio" id="radio1" checked>
<div class="tab1">
<h2>Nacimiento</h2>
<table width="792" border="1">
      <tbody>
        <tr>
          <th width="145" height="69" scope="col">Numero de Identidad</th>
          <th width="148" scope="col"><input type="text" name="trne" id="trne"></th>
          <th colspan="8" scope="col">&nbsp;</th>
          </tr>
        <tr>
          <th scope="col">Nombre</th>
          <th scope="col"><input type="text" name="tnombre" id="tnombre" value="<?php echo $nombre;?>" ></th>
          <th width="41" scope="col">Apellido</th>
          <th width="148" scope="col"><input type="text" name="tapellido" id="textfield9"></th>
          <th width="124" scope="col">Email</th>
          <th width="146" scope="col"><input type="email" name="temail" id="temail"></th>
          <th width="146" scope="col">Fecha de Nacimiento</th>
          <th width="146" scope="col"><input type="text" name="fechance" id="fechance"></th>
          <th width="146" scope="col">Genero</th>
          <th width="146" scope="col"><input type="text" name="tsexo" id="tsexo"></th>
        </tr>
        <tr>
          <th scope="col">Nacionalidad</th>
          <th scope="col"><input type="text" name="tnacionalidad" id="textfield11"></th>
          <th scope="col">Pais de Nacimiento</th>
          <th scope="col"><p>
            <input type="text" name="tpaisnacido" id="textfield10">
            <br>
          </p></th>
          <th scope="col">Departemento Nacimiento</th>
          <th scope="col"><input type="text" name="tdepartamento" id="tdepartamento"></th>
          <th scope="col">Municipio Nacimiento</th>
          <th colspan="3" scope="col"><input type="text" name="tmunicpio" id="tmunicpio"></th>
          </tr>
      </tbody>
    </table>
	 <h1>Vivienda</h1>
    <table width="1091" border="1">
      <tbody>
        <tr>
          <th width="147" scope="col">Direccion Completa</th>
          <th colspan="7" scope="col"><input name="tdireccion" type="text" id="tdireccion" size="120">          </th>
          </tr>
        <tr>
          <td height="45">Barrio</td>
          <td width="154"><input type="text" name="tbarrio" id="textfield12"> </td>
          <td width="78">Avenida</td>
          <td width="174"><input type="text" name="tavenida" id="textfield13"></td>
          <td width="59">Calle</td>
          <td width="154"><input type="text" name="tcalle" id="textfield14"></td>
          <td width="114">Numero de Casa</td>
          <td width="159"><input type="text" name="tnumerocasa" id="textfield15"></td>
        </tr>
        <tr>
          <td height="58">Telefono Fijo</td>
          <td><input type="text" name="ttelofofijo" id="textfield16"></td>
          <td colspan="2"><p style="text-align: center">Numero de personas viviendo en su casa:<br>
      </p></td>
          <td colspan="4">  <input type="text" name="tviven" id="tviven"></td>
          </tr>
      </tbody>
    </table>
	<h1>Datos Academicos</h1>
    <table width="1259" border="1">
      <tbody>
        <tr>
          <th scope="col">Escuela Anterior </th>
          <th scope="col"><input type="text" name="tescuelaanterior" id="textfield17"></th>
          <th scope="col">Habilitado</th>
          <th scope="col"><input type="text" name="thabilitado" id="textfield18"></th>
          <th scope="col">Materias que presentaba Dificultas</th>
          <th scope="col"><input type="text" name="tmateriasdificiles" id="textfield19"></th>
          <th scope="col">Materias en que sobresaliste</th>
          <th scope="col"><input type="text" name="tmateriassobre" id="textfield20"></th>
        </tr>
        <tr>
          <td>Ha repetido algun año?</td>
          <td><p>
            <label>
              <input type="radio" name="repetidoa" value="si" id="yearreoe_0">
              SI</label>
            <br>
            <label>
              <input type="radio" name="repetidoa" value="no" id="yearreoe_1">
              NO</label>
          </p>
            <p>Si contesto si: Cual Año Repitio?</p>
            <p>
              <input type="text" name="trepetido" id="textfield21">
              <br>
            </p></td>
          <td>Lleva Materia Repetida?</td>
          <td><p>
            <label>
              <input type="radio" name="mrepetida" value="si" id="repetida_0">
              SI</label>
            <br>
            <label>
              <input type="radio" name="mrepetida" value="no" id="repetida_1">
              NO</label>
            <br>
          </p>
            <p>Si contesto no: Cual Materia Lleva Retrasada?</p>
            <p>
              <input type="text" name="tretrasada" id="textfield22">
            </p></td>
          <td>Becado</td>
          <td colspan="3"><p>
            <label>
              <input type="radio" name="Becado" value="si" id="Becado_0">
              SI</label>
            <br>
            <label>
              <input type="radio" name="Becado" value="no" id="Becado_1">
              NO</label>
            <br>
          </p></td>
          </tr>
      </tbody>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
</div>
<div class="content">
<input type="radio" name="radio" id="radio2" checked>
<div class="tab2">
<h2>¿CON QUIEN VIVE EL ESTUDIANTE?</h2>
<table width="1128" border="1">
        <tbody>
          <tr>
            <th scope="col"><p>
              <label>
                <input type="radio" name="tutor" value="padre y madre" id="tutor_0">
                Padre y Madre</label>
            </p></th>
            <th scope="col"><label>
              <input type="radio" name="tutor" value="padre y madrastra" id="tutor_1">
              Padre y Madrastra</label>            </th>
            <th scope="col"><input type="radio" name="tutor" value="madre y padrastro" id="tutor_2">
Madre y Padrastro</th>
            <th scope="col"><label>
              <input type="radio" name="tutor" value="solo madre" id="tutor_3">
            Solo Madre</label></th>
            <th scope="col"><label>
              <input type="radio" name="tutor" value="solo padre" id="tutor_4">
              Solo Padre</label>            </th>
            <th scope="col"><label>
              <input type="radio" name="tutor" value="padre y madre adoptivo" id="tutor_5">
              Padre y Madre Adoptivo</label>            </th>
            <th scope="col"><label>
              <input type="radio" name="tutor" value="parientes" id="tutor_6">
              Parientes</label>            </th>
            <th scope="col"><label for="tespecifique">Especifique</label><input type="text" name="tespecifique" id="tespecifique"></th>
          </tr>
        </tbody>
	</table>
	<p>&nbsp;</p>
      <table width="1126" border="1">
        <tbody>
          <tr>
            <th width="116" scope="col">Numero de Hermanos</th>
            <th width="144" scope="col"><input type="text" name="tnumhermanos" id="textfield3"></th>
            <th width="125" scope="col">Numero de Hermanas </th>
            <th width="144" scope="col"><input type="text" name="tnumhermanas" id="tnumhermanas"></th>
            <th width="129" scope="col">Lugar que Ocupa</th>
            <th width="144" scope="col"><input type="text" name="tlugarocuacion" id="tlugarocuacion"></th>
            <th width="110" scope="col">Numero de Hermanastros</th>
            <th width="162" scope="col"><input type="text" name="tnumhermanastros" id="tnumhermanastros"></th>
          </tr>
          <tr>
            <td>Numero de Hermanastras</td>
            <td><input type="text" name="tnumhermanastras" id="tnumhermanastras"></td>
            <td>Numero de Hermanos Adoptivos</td>
            <td><input type="text" name="tnumhermanosadpotivos" id="tnumhermanosadpotivos"></td>
            <td>Numeros de Hermanas Adoptivas</td>
            <td><input type="text" name="tnumhermanasadoptivas" id="tnumhermanasadoptivas"></td>
            <td>Cuantos viven?</td>
            <td><input type="text" name="cviven" id="cviven"></td>
			  </tr>
            </tbody>
          </table>
         <h2>DATOS DEL ENCARGADO</h2>
           <table width="1128" border="1">
        <ul>
         
        </ul>
        <div id="tabs-4"></div>
          <table width="200" border="1">
            <tbody>
              <tr>
                <th scope="col">Nombre del Encargado</th>
                <th scope="col"><input type="text" name="tnombreencargado" id="tnombreencargado"></th>
                <th scope="col">Id</th>
                <th scope="col"><input type="text" name="tidencargado" id="tidencargado"></th>
                <th scope="col">Edad</th>
                <th scope="col"><input type="text" name="tedadencargado" id="tedadencargado"></th>
              </tr>
				
              <tr>
                <td>Estado Civil</td>
                <td><input type="text" name="testadoencargado" id="testadoencargado"></td>
                <td>Religion</td>
                <td><input type="text" name="treligionencargado" id="treligionencargado"></td>
                <td>Direccion Completa</td>
                <td><input name="tdireccionencargado" type="text" id="tdireccionencargado" size="100"></td>
              </tr>
            </tbody>
          </table>
       <h2>DATOS DEL TRABAJO</h2>
          <table width="1098" border="1">
            <tbody>
              <tr>
                <th scope="col">Profecion U Oficio</th>
                <th scope="col"><input type="text" name="tprofecionencargado" id="tprofecionencargado"></th>
                <th scope="col">Lugar deTrabajo</th>
                <th scope="col"><input type="text" name="tlugarencargado" id="tlugarencargado"></th>
                <th scope="col">Cargo en el Trabajo</th>
                <th scope="col"><input type="text" name="tcargoencargado" id="tcargoencargado"></th>
                <th scope="col">Telefono del Trabajo</th>
                <th scope="col"><input type="text" name="ttelencargado" id="ttelencargado"></th>
              </tr>
              <tr>
                <td>Telefono Movil</td>
                <td colspan="7"><input type="text" name="tmovilencargado" id="tmovilencargado"></td>
              </tr>
            </tbody>
          </table>
          <table width="1097" border="1">
            <tbody>
              <tr>
                <th scope="col">Tiempo que dispone para el Estudiante</th>
                <th scope="col"><input type="text" name="ttiempoencargado" id="ttiempoencargado"></th>
                <th scope="col">Email</th>
                <th scope="col"><input type="email" name="temailencargado" id="temailencargado"></th>
                <th scope="col">Es ExAlumno</th>
                <th scope="col"><p>
                  <label>
                    <input type="radio" name="exalumno" value="si" id="exalumno_0">
                    SI</label>
                  <br>
                  <label>
                    <input type="radio" name="exalumno" value="no" id="exalumno_1">
                    NO</label>
                  <br>
                </p></th>
              </tr>
            </tbody>
          </table>
          <h2>Encargados</h2>
          <h2><font color="red">Personas permitidas para recoger al alumno de la Institucion</font> </h2>
          <table width="200" border="1">
            <tbody>
              <tr>
                <th scope="col">Nombre</th>
                <th scope="col"><input type="text" name="tnombre1padre" id="textfield73"></th>
                <td>Telefono</td>
                <td><input type="text" name="ttel1padre" id="textfield74"></td>
              </tr>
              <tr>
                <th scope="col">Nombre</th>
                <td><input type="text" name="tnombre2padre" id="textfield75"></td>
                <th scope="col">Telefono</th>
                <td><input type="text" name="ttel2padre" id="ttel2padre"></td>
              </tr>
              <tr>
                 <th scope="col">Nombre</th>
                <td><input type="text" name="tnombre3padre" id="textfield76"></td>
                 <th scope="col">Telefono</th>
                <td><input type="text" name="ttel3padre" id="ttel3padre"></td>
				  
              </tr>
            </tbody>
          </table>
			</table>
          <p>&nbsp;</p>
	      <p>&nbsp;</p>
	      <p>&nbsp;</p>
	      <p>&nbsp;</p>
	</div>
			   </div>
	         
<div class="content">
<input type="radio" name="radio" id="radio3" checked>
<div class="tab3">
<table width="792" border="1">
<h2>GENERALIDADES</h2>
 <tbody>
        <tr>
          <th scope="col">Problemas de salud</th>
          <th scope="col"><p>
            <label>
              <input type="radio" name="problemassalud" value="si" id="problemassalud_0">
              SI</label>
            <br>
            <label>
              <input type="radio" name="problemassalud" value="no" id="problemassalud_1">
              NO</label>
            <br>
          </p></th>
          <th scope="col">Especifique</th>
          <th scope="col"><input type="text" name="tgeneralidades" id="tgeneralidades"></th>
          <th scope="col">Tipo de sangre</th>
          <th scope="col"><p>
            <input type="text" name="tsangre" id="tsangre">
            <br>
          </p></th>
        </tr>
      </tbody>
    </table>
	<h2>DIFICULTADES FISICAS</h2>
    <table width="1216" border="1">
      <tbody>
        <tr>
          <th scope="col"><p>
            <label>
              <input type="radio" name="audio" value="auditivas" id="dificultadesfisicas_0">
              Auditivas</label>
            <label>
              <input type="radio" name="visual" value="visuales" id="dificultadesfisicas_1">
              Visuales</label>
            <label>
              <input type="radio" name="habla" value="habla" id="dificultadesfisicas_2">
              Habla</label>
            <label>
              <input type="radio" name="otro" value="otro" id="dificultadesfisicas_3">
              Otro</label>
            <br>
          </p></th>
          <th scope="col"><label for="tdificul">Especifique</label><input type="text" name="tdificul" id="tdificul"></th>
        </tr>
      </tbody>
    </table>
    <h2>ANTECEDENTES</h2>
    <table width="1217" border="1">
      <tbody>
        <tr>
          <th scope="col">Medicamento Contra Indicado <label>
                <input type="radio" name="medicamentocontraindicado" value="si" id="medicamentocontraindicado_0">
                SI</label>
              <label>
                <input type="radio" name="medicamentocontraindicado" value="no" id="medicamentocontraindicado_1">
                NO</label>
              <br>
            </th>
          <th scope="col"><label for="tdificul">Especifique</label>
            <input type="text" name="tmedicamento" id="textfield78"></th>
        </tr>
        <tr>
          <th scope="col"><p>
            <label>
              <input type="radio" name="agresion" value="agresion" id="antecedentes_0">
              Agresion</label>
            <label>
              <input type="radio" name="deficit" value="deficit de atencion" id="antecedentes_1">
              Deficit de Atencion</label>
            <label>
              <input type="radio" name="depresion" value="depresion" id="antecedentes_2">
              Depresion</label>
            <label>
              <input type="radio" name="ansiedad" value="ansiedad" id="antecedentes_3">
              Ansiedad</label>
            <label>
              <input type="radio" name="violencia" value="violencias" id="antecedentes_4">
              Violencia</label>
            <br>
            <label>
              <input type="radio" name="hiperactividad" value="hiperactividad" id="antecedentes_5">
              Hiperactividad</label>
            <label>
              <input type="radio" name="bipolaridad" value="bipolaridad" id="antecedentes_6">
              Bipolaridad</label>
            <label>
              <input type="radio" name="otros" value="otros" id="antecedentes_7">
              Otros</label>
            <br>
          </p></th>
          <th scope="col"><label for="tdificul">Especifique</label>
            <input type="text" name="tantecedentes" id="tantecedentes"></th>
        </tr>
      </tbody>
    </table>
    <h2>MEDICAMENTOS</h2>
    <table width="1217" border="1">
      <tbody>
        <tr>
          <th scope="col">Toma de Medicamentos en Horas Clase</th>
          <th scope="col"><p>
            <label>
              <input type="radio" name="medicamentos" value="si" id="tomamedicamentos_0">
              SI</label>
            <br>
            <label>
              <input type="radio" name="medicamentos" value="no" id="tomamedicamentos_1">
              NO</label>
            <br>
          </p></th>
          <th scope="col"><label for="tdificul">Especifique</label></th>
          <th scope="col"><input type="text" name="tmedi" id="textfield79"></th>
        </tr>
        <tr>
          <td>Nombre del Medicamento</td>
          <td><input type="text" name="tnombremedi" id="textfield80"></td>
          <td>Dosis </td>
          <td><input type="text" name="tdosis" id="textfield81"></td>
        </tr>
        <tr>
          <td>Hora de Ingesta</td>
          <td colspan="3"><input type="text" name="thoradosis" id="textfield82"></td>
          </tr>
      </tbody>
    </table>
    <h1>&nbsp;</h1>
	<h1>&nbsp;</h1>
	<h1>&nbsp;</h1>
	<h1>&nbsp;</h1>
	
        </div>
	</div>
<div class="content">
<input type="radio" name="radio" id="radio4" checked>
<div class="tab4">
<h2>¿A QUE RELIGION PERTENECE?</h2>
 <table width="1296" border="1">
         <tbody>
           <tr>
             <th scope="col"><p>
               <label>
                 <input type="radio" name="religion" value="catolica" id="religion_0">
                 Catolica</label>
               <label>
                 <input type="radio" name="religion" value="mormona" id="religion_1">
                 Mormona</label>
               <label>
                 <input type="radio" name="religion" value="testigos de jehova" id="religion_2">
                 Testigos de Jehova</label>
               <label>
                 <input type="radio" name="religion" value="adventista" id="religion_3">
                 Adventista</label>
               <label>
                 <input type="radio" name="religion" value="evangelicos" id="religion_4">
                 Evangelicos</label>
               <br>
             </p></th>
             <th scope="col"><label for="tdificul">Especifique</label>
             <input type="text" name="treligion" id="treligion"></th>
           </tr>
         </tbody>
       </table>
       <h1>Sacramentos Recibidos</h1>
       <table width="1296" border="1">
         <tbody>
           <tr>
             <th scope="col"><p>
               <label>
                 <input type="radio" name="bautismo" value="bautismo" id="sacramentos_0">
                 Bautismo</label>
               <br>
             </p></th>
             <th scope="col"><label>
               <input type="radio" name="comunion" value="primera comunion" id="sacramentos_1">
               Primera Comunion</label></th>
             <th scope="col"><input type="radio" name="confirmacion" value="confirmacion" id="sacramentos_2">
               Confirmacion</th>
           </tr>
         </tbody>
       </table>
       <h1>Toca algun instrumento musical o canta en el coro de la iglesia?</h1>
       <table width="1297" border="1">
         <tbody>
           <tr>
             <th scope="col"><p>
               <label>
                 <input type="radio" name="instrumento" value="si" id="instrumento_0">
                 SI</label>
               <label>
                 <input type="radio" name="instrumento" value="no" id="instrumento_1">
                 NO</label>
               <br>
             </p></th>
             <th scope="col"><label for="tdificul">Especifique</label>
             <input type="text" name="tmusica" id="tmusica"></th>
           </tr>
         </tbody>
       </table>
       <h1>Actividades</h1>
       <table width="1301" border="1">
         <tbody>
           <tr>
             <th scope="col">Asiste a algun grupo Jovenil? </th>
             <th scope="col"><p>
               <label>
                 <input type="radio" name="grupojuvenil" value="si" id="grupojovenil_0">
                 SI</label>
               <label>
                 <input type="radio" name="grupojuvenil" value="no" id="grupojovenil_1">
                 NO</label>
               <br>
             </p></th>
             <th scope="col"><label for="tdificul">Especifique</label>
             <input type="text" name="tmusicas" id="tmusicas"></th>
           </tr>
           <tr>
             <td>Le gustaria que Participe en el campamento</td>
             <td colspan="2"><p>
               <label>
                 <input type="radio" name="campemento" value="si" id="campemento_0">
                 SI</label>
               <label>
                 <input type="radio" name="campemento" value="no" id="campemento_1">
                 NO</label>
               <br>
             </p></td>
           </tr>
           <tr>
             <td>Le gustaria que participe en el grupo jovenil de la institucion?</td>
             <td colspan="2"><p>
               <label>
                 <input type="radio" name="magis" value="si" id="grupojovenil_2">
                 SI</label>
               <label>
                 <input type="radio" name="magis" value="no" id="grupojovenil_3">
                 NO</label>
               <br>
             </p></td>
           </tr>
         </tbody>
       </table>
       <p>
         <input name="cod" type="submit" id="submit" formaction="agregardatos.php" value="Agregar Datos">
       </p>
       <p></p>
       <p>&nbsp;</p>
	   <p>&nbsp;</p>
	   <p>&nbsp;</p>
	  <p>&nbsp;</p>
</div>
</div>
		</form>
</body>
</html>