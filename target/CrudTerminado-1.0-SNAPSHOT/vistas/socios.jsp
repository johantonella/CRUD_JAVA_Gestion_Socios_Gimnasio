
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Socios" %>
<%@page import="modelo.SociosDAO" %>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>


<!DOCTYPE html>
<html>
    <head>
        <title>TP Final JAVA</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="style/style.css">
    </head>
    <body class="container-fluid"   style="background-image: url(imagenes/gym_.jpg); background-repeat:no-repeat; background-size: 100% 100%;">
        <div id="navbar" style="height: 6px; margin-bottom: auto;">
            <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-dark text-white">
                <img src="imagenes/pesa-color.png" style="width: 60px; height: 60px;" alt="">
                <h5 class="display-4 text-center">Lista Socios Gimnasio</h5>
            </nav>
        </div>
        
      <div class="wrapper fadeInDown">
          
          <div class="container text-white">
              <a class="btn btn-success" href="SociosController?accion=nuevo">Agregar Nuevo</a>
              <a class="btn btn-primary" href="index.jsp">Cerrar sesión</a>
              <br>
              <br>
              
              <table class="table table-dark table-striped">
                    <thead>                        
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Direccion</th>
                    <th>Localidad</th>
                    <th>Fecha Nac</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>Modificar</th>
                    <th>Eliminar</th>
                </thead>
                <%
                    List<Socios> resultado=null;
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.listarSocios();
                    
                    for(int i=0;i<resultado.size();i++){
                        String ruta="SociosController?accion=modificar&id="+resultado.get(i).getIdSocio();	
			String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getIdSocio();
                %>
                
                <tr>
                    <td><%=resultado.get(i).getIdSocio()%></td>
                    <td><%=resultado.get(i).getNombre()%></td>
                    <td><%=resultado.get(i).getApellido()%></td>
                    <td><%=resultado.get(i).getDireccion()%></td>
                    <td><%=resultado.get(i).getLocalidad()%></td>
                    <td><%=resultado.get(i).getFechaNac()%></td>
                    <td><%=resultado.get(i).getTelefono()%></td>
                    <td><%=resultado.get(i).getEmail()%></td>
                    <td class="text-center"><a href=<%=ruta%>><i class="fa-solid fa-pen"></i></a></td>
                    <td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-trash"></i></a></td>
                </tr>
                <%
                    }
                %>
                </table>
         
            </div>           
        </div>
                <!--JavaScript Bundle with Popper-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
    </body>
</html>

