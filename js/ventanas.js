// JavaScript Document


   $(function()
   {
    $("#dialogoa").dialog(
   { 
			
			show: "scale", <!-- -----------> animación de la ventana al aparecer -->
			hide: "scale", <!-- -----------> animación al cerrar la ventana -->
			resizable: "false", <!-- ------> fija o redimensionable si ponemos este valor a "true" -->
			position: "center",<!--  ------> posicion de la ventana en la pantalla (left, top, right...) -->
			modal: "true" ,
			autoOpen : true,
			draggable:false,
		    position: "center",
			close: function () 
			{        history.back();
					     $(this).dialog("close");
        				},
       
			buttons: [
				{
					text: "Cerrar",
					click: function() {
						history.back();
					     $(this).dialog("close");
						 
				       
						 
					}
				}
			]
			
		}
   );
   
  
    $("#dialogo2").dialog(
   { <!--  ------> muestra la ventana  -->
			width: "950",
            height: "600",
			show: "scale", <!-- -----------> animación de la ventana al aparecer -->
			hide: "scale", <!-- -----------> animación al cerrar la ventana -->
			resizable: "false", <!-- ------> fija o redimensionable si ponemos este valor a "true" -->
			position: "center",<!--  ------> posicion de la ventana en la pantalla (left, top, right...) -->
			modal: "true" ,
			draggable:false,
		    position: "center",       
			autoOpen : false,
			
			close: function () 
			{        
					     $(this).dialog("close");
        				},
       
			buttons: [
				{
					text: "Cerrar",
					click: function() {
						
					     $(this).dialog("close");
						 
				       
						 
					}
				}
			]
			
		
			
			
		}
   );
   $( "#abrirVentana" )
        //.button()
		
        .click(function() {
			var url2= $(this).attr("ruta")
            $( "#dialogo2" ).load(url2).dialog("open");
        });
		
   
    
});

