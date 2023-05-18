<%-- 
    Document   : diario
    Created on : 5 nov. 2022, 18:47:05
    Author     : bruno fragoso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Diario</title>
        <link rel="shortcut icon" href="https://cdn-icons-png.flaticon.com/128/1787/1787077.png" type="image/gif" />
        <link href="css/css_diario.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@500&display=swap" rel="stylesheet">
    </head>
    <body>
        <%
        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
        int idPac = (int) (miSessiondelUsuario.getAttribute("idPer") == null ? 0 : miSessiondelUsuario.getAttribute("idPer"));
        String Nombre = miSessiondelUsuario.getAttribute("NombrePac").toString();%>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <script>
            var fecha = new Date();
            var Fecha = (fecha.getDate() + "/" + (fecha.getMonth() + 1) + "/" + fecha.getFullYear());
        </script>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <span class="navbar-brand mb-0 "><h4><%=Nombre%></h4></span>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="principal_p.jsp#pagina_abajo">Inicio</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Acciones</a>
                        </li>
                    </ul>
                    <div id="mayones">
                        <a class="btn btn-primary" href="principal_p.jsp#forms_citas_cont" style="background-color: #87CEEB; border-color: #87CEEB;">
                            Regresar
                        </a>
                        <a class="btn btn-primary" href="cerrar_sesion.jsp" style="background-color: #C2504C; border-color: #C2504C;">
                            Cerrar sesion
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <div class='container'>
            <div id="tit"><br>
                <h1 class="centrado" style='font-size: 4em;'>Diario</h1>
                <div class="form-text centrado" style='font-size: 1.5em;'>Expresa como te sientiste este dia</div>

            </div>
            <div class="container" id="fond">
                <form name="datos_diario" method="post" action="Mandar_diario.jsp" >
                    <div id="col2" class="centrado p-4">
                        <div id="caritas" class="row centrado">
                            <h2 style="text-align: center">¿Que tal ha estado tu día?</h2>
                            <div class="col-sm-1"></div>
                            <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 centrado">
                                <label>
                                    <input type="radio" name="emocion" id="feliz-rb" value="feliz">
                                    <span id="feliz"></span>
                                </label>
                            </div>
                            <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 centrado">
                                <label >
                                    <input type="radio" name="emocion" id="normal-rb" value="normal">
                                    <span id="normal"></span>
                                </label>
                            </div>
                            <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 centrado">
                                <label>
                                    <input type="radio" name="emocion" id="triste-rb" value="triste">
                                    <span id="triste"></span>
                                </label>
                            </div>
                            <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 centrado">
                                <label >
                                    <input type="radio" name="emocion" id="conflictuado-rb" value="conflictuado">
                                    <span id="conflictuado"></span>
                                </label>
                            </div>
                            <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 centrado">
                                <label>
                                    <input type="radio" name="emocion" id="enojado-rb" value="enojado">
                                    <span id="enojado"></span>
                                </label>
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                    </div>
                    <div id="col3" class="centrado p-4"> 
                        <div id="texto" class="p-4">
                            <div class="row">
                                <div class="col-sm-12 col-md-8 col-lg-8 col-xl-8" id="cont-titulo_D">
                                    <input class="form-control form-control-lg" maxlength="50" placeholder="Nombra tu dia de hoy" type="text" id="titulo_D" name="titulo_D">
                                </div >
                                <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4 p-4 centrado">
                                    <h5 id="fecha">
                                        <script>
                                            document.write(Fecha);
                                        </script>
                                    </h5>
                                </div>
                            </div>
                            <div class="">
                                <textarea maxlength="2000" class="form-control" id="cont-dia" name="cont-dia" placeholder="El día de hoy..." rows="3"></textarea>
                            </div>
                            <input type="hidden" name="Fecha" id="fechita">
                        </div>
                    </div>
                    <div id="col4" class="p-4">
                        <button type="submit" class="btn btn-success btn-lg" style="background-color: #8F9779;
                                border-color: #8F9779;">Registrar día</button>
                    </div>
                    <script>
                        function dafecha() {
                            document.getElementById('fechita').value = Fecha.toString();
                        }
                        ;
                        dafecha();
                    </script>
                </form>
            </div>
        </div>
    </body>
</html>