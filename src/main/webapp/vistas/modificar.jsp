
<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page import="java.util.List"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Modificar</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="style/style.css">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>   
    </head>
    
    <body class="container-fluid" style="background-image: url(imagenes/gym_.jpg); background-repeat:no-repeat; background-size: 100% 100%;">       
        <div class="container" >
            <h5 class="display-5 text-center text-white">Modificar Socio</h5>
                
            <div>
                    <%
				String id=request.getParameter("id");
				int mid;
				mid=Integer.parseInt(id);				
				Socios resultado=null;
				SociosDAO  s1=new SociosDAO();
				resultado=s1.mostrarSocio(mid);
		    %>
                    <form class="p-4" method="POST" action="SociosController?accion=actualizar">
                        
                        <div class="col-md-8 mx-auto">
                            
                            <div class="d-md-flex justify-content-center">
                                <label for="id" class="form-label"></label>
                                <input type="text" id="id" name="id" class="form-control" readonly="true" value=<%=resultado.getIdSocio()%> placeholder="Id">
                            </div>
                            
                            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <input type="text" name="nombre" class="form-control" id="nombre" aria-label="nombre" value=<%=resultado.getNombre()%> placeholder="Nombre">
                            <input type="text" name="apellido"class="form-control" id="apellido"  aria-label="apellido" value=<%=resultado.getApellido()%> placeholder="Apellido">
                        </div>
                        
                        <div d-md-flex justify-content-center>
                            <label for="direccion" class="form-label"></label>
                            <input type="text" id="direccion" name="direccion"class="form-control" value=<%=resultado.getDireccion()%> placeholder="Direccion"> 
                        </div>
                        
                        <div d-md-flex justify-content-center">
                            <label for="localidad" class="form-label"></label>
                            <input type="text" class="form-control" id="localidad" name="localidad" value=<%=resultado.getLocalidad() %> placeholder="Localidad">
                        </div>
                        
                        <div d-md-flex justify-content-center>
                            <label for="fecha" class="form-label"></label>
                            <input type="date" class="form-control" id="fechaNac" name="fechaNac" value=<%=resultado.getFechaNac()%>> 
                        </div>
                        
                        <div d-md-flex justify-content-center>
                            <label for="email" class="form-label"></label>
                            <input type="text" id="email" name="email" class="form-control" value=<%=resultado.getEmail()%> placeholder="Email">
                        </div> 
                        
                        <div d-md-flex justify-content-center>
                            <label for="telefono" class="form-label"></label>
                            <input type="text" id="telefono" name="telefono" class="form-control" value=<%=resultado.getTelefono()%> placeholder="Telefono"> 
                        </div>
                        <br>
                        
                        <div class="d-md-flex justify-content-center">
                        <button type="submit" class="btn btn-primary">Modificar</button>
                        </div>
                        </div>
                    </form>
            </div>
        </div>
    </body>
</html>
