<?php
function conectarse()

{	
$user="root";
$pass="";
$servidor="localhost";
$link=mysqli_connect($servidor,$user,$pass,"sistema");
	
	
	if(!$link)
		{
			echo "No se pudo conectar";
			
		}
	return $link;
}

?>
