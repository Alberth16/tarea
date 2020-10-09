// JavaScript Document
 $(function() {
	 
	$("#abredialogo,a[id*=abredialogo]").click(function() {
		
		  var url2= $(this).attr("rutasi")
 
		 $("#dialogosino2").dialog(
   { 
			
			show: "scale", <!-- -----------> animación de la ventana al aparecer -->
			hide: "scale", <!-- -----------> animación al cerrar la ventana -->
			resizable: "false", <!-- ------> fija o redimensionable si ponemos este valor a "true" -->
			position: "center",<!--  ------> posicion de la ventana en la pantalla (left, top, right...) -->
			modal: "true" ,
			autoOpen : true,
			draggable:false,
		    position: "center",
			width: 450,
			height: 'auto',
			title : "Desea Borrar :" + $(this).attr("Nombre"),
			close: function () 
			{ 	  $(this).dialog("close");
        				},
       
			buttons: [
				{
					text: "NO",
					click: function(){
					  $(this).dialog("close");
					}
				},
				{
					text: "SI",
					click: function() {
					$(this).dialog("close");
				      document.location.replace(url2);
					}
				}
				
				]
				
		
			
		}
   );
   
 
		$( "#dialogosino2" ).dialog( "open" );
	});
	
	
});