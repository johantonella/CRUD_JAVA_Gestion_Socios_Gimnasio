
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Nuevo Socio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="style/style.css">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
    </head>
    
    <body class="container-fluid" style="background-image: url(imagenes/gym_.jpg); background-repeat:no-repeat; background-size: 100% 100%;">
        <div class="container">
       
                <h4 class="display-4 text-center text-white">Añadir Socio</h4>
                <form class="p-4" method="POST" action="SociosController?accion=insert">
                    
                    <div class="col-md-8 mx-auto">
                        <div class="d-md-flex justify-content-md-end">
                            <label for="nombre" class="form-label"></label>
                            <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre" >
                            
                            <label for="apellido" class="form-label" ></label>
                            <input type="text"  class="form-control" name="apellido" id="apellido"placeholder="Apellido">
                        </div>
              
                        <div class="d-md-flex justify-content-center">
                            <label for="direccion" class="form-label"></label>
                            <input type="text" class="form-control" name="direccion" id="direccion" placeholder="Direccion"  >
                        </div>
                        
                        <div class="d-md-flex justify-content-center">
                            <label for="localidad" class="form-label" ></label>
                            <input type="text" name="localidad" id="localidad" class="form-control" placeholder="Localidad">
                        </div>
                        
                        <div class="d-md-flex justify-content-center">
                            <label for="fechaNac" class="form-label" ></label>
                            <input type="date" class="form-control" name="fechaNac" id="fechaNac" min="1940-01-01" max="2020-12-31" value="dd-mm-yyyy">                          
                        </div>
                        
                         <div class="d-md-flex justify-content-center">
                            <label for="telefono" class="form-label" ></label>
                            <input type="text" class="form-control" name="telefono" id="telefono" placeholder="Telefono" >                          
                        </div>
                        
                        <div class="d-md-flex justify-content-center">
                            <label for="email" class="form-label" ></label>
                            <input type="text" class="form-control" name="email" id="email" placeholder="Email" >                          
                        </div>
                        <br>
                        
                        <div class="d-md-flex justify-content-center">
                        <button type="submit" class="btn btn-primary">Añadir</button>
                        </div>
                    </div>
                </form>
             </div>
        </div>
    </body>
</html>

