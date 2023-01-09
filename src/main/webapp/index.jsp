
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="style/style.css">
        <title>Crud Gym</title>
    </head>
    
    <body class="container-fluid" style="background-image: url(imagenes/gym_.jpg); background-repeat:no-repeat; background-size: 100% 100%;">
        <div id="navbar" style="height: 6px; margin-bottom: auto;">
            <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-dark text-white">
                <img src="imagenes/pesa-color.png" style="width: 60px; height: 60px;" alt=""><h2 style="margin:0 10px;">Gimnasio</h2>
            </nav>
        </div>
         
        <div class="wrapper fadeInDown">
        <div id="formContent">
                <div class="fadeIn first">
                    <img src="imagenes/mancuerna.png" id="icon" alt="User Icon" style="width: 60px; margin: 20px;" />
                </div>
               
                
                <!--Login-->
                <form method="post" action="vistas/acceso.jsp">
                    <input type="text" id="login" class="fadeIn second" name="usuario" placeholder="Nombre de usuario">
                    <input type="text" id="password" class="fadeIn third" name="clave" placeholder="Contraseña">
                    <input type="submit" name="aceptar" class="fadeIn fourth" value="Iniciar sesión" style="width: auto;">
                </form>
        </div>
        </div>
       
                       
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>