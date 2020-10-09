// JavaScript Document
 $(function()
   { 
   $("#dialogoRegresar").dialog(
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
   
   $("#dialogoNuevo").dialog(
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
			close: function () 
			{         var url2= $(this).attr("ruta")
				      document.location.replace(url2);
					  $(this).dialog("close");
				      //window.close();
   
            				
        				},
       
			buttons: [
				{
					text: "Cerrar",
					click: function() {
						 var url2= $(this).attr("ruta")
				      document.location.replace(url2);
					  $(this).dialog("close");
				      //window.close();
				       
						 
					}
				}
			]
			
		}
   );
   $("#dialogoNuevoD").dialog(
   
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
     	   // width: $(this).attr("alto"),
			close: function () 
			{         var url2= $(this).attr("ruta")
				      document.location.replace(url2);
					  $(this).dialog("close");
				      //window.close();
   
            				
        				},
       
			buttons: [
				{
					text: "Cerrar",
					click: function() {
						 var url2= $(this).attr("ruta")
				      document.location.replace(url2);
					  $(this).dialog("close");
				      //window.close();
				       
						 
					}
				}
			]
			
		}
   );
   
   $("#dialogosino").dialog(
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
			close: function () 
			{        
					  var url2= $(this).attr("rutano")
				      document.location.replace(url2);
					  $(this).dialog("close");
				      //window.close();
				   
   
            				
        				},
       
			buttons: [
				{
					text: "NO",
					click: function(){
						 var url2= $(this).attr("rutano")
				      document.location.replace(url2);
					  $(this).dialog("close");
				      //window.close();
				       
						 
					}
				},
				{
					text: "SI",
					click: function() {
					 var url2= $(this).attr("rutasi")
				      document.location.replace(url2);
					  $(this).dialog("close");
				      //window.close();
					}
				}
				
				]
				
		
			
		}
   );
   
   
$("#dialogoAnuncio").dialog(
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

   
   $("#dialogoborrar").dialog(
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
			{         var url2= $(this).attr("ruta")
				      document.location.replace(url2);
					  $(this).dialog("close");
				     
            				
        				},
       
			buttons: [
				{
					text: "Cerrar",
					click: function() {
						 var url2= $(this).attr("ruta")
				      document.location.replace(url2);
					  $(this).dialog("close");
				    
						 
					}
				}
			]
			
		}
   );
   
   
});

