<!DOCTYPE html>
<!-- -->
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Inicio</title>
        <link rel="shortcut icon" href="../logo psyche.png" type="image/gif" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <!-- css personalizado-->
        <link href="ppp.css" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@500&display=swap" rel="stylesheet">

    </head>

    <body>
        <%
            try {
                HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
                int idPac = (int) (miSessiondelUsuario.getAttribute("idPer") == null ? 0 : miSessiondelUsuario.getAttribute("idPer"));
                String Nombre = miSessiondelUsuario.getAttribute("NombrePac").toString();

                if (idPac < 1) {
                    response.sendRedirect("index.html");
                }

                String alias = "";
                String correo = "";
                String edad = "";
                String nombreDoc = "";
                
                int conexion = 0;
                int idDoc = 0;
                int tienedoctor = 0;

                Base bd = new Base();
                bd.conectar();

                String strQry = "select * from pacientes where id_pac = '" + idPac + "'";
                ResultSet rsDatosPer = bd.consulta(strQry);

                if (rsDatosPer.next()) {
                    correo = rsDatosPer.getString(3);
                    alias = rsDatosPer.getString(2);
                    edad = rsDatosPer.getString(5);
                }
        %>
        <!-- bootstrap js-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>
        <script src="css/btnabajo.js"></script>
        <!-- barra de navegacion -->
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <img src="../logo psyche.png" alt="Logo" width="35" height="30"
                     class="d-inline-block align-text-top">
                <span class="navbar-brand mb-0 "><h4 style="font-weight: bold"><%=Nombre%></h4></span>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><span style="font-weight: bold; color: #686868;">Menú</span></a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="Test.jsp">Test</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="diario.jsp">Diario</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="Chat.jsp">Chat</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="calendario/index.jsp" >Citas</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                        </li>
                    </ul>
                    <div id="mayones">
                        <a class="btn btn-primary"  id="docdoc" href="Doctores.jsp">
                            Psicologo
                        </a>
                        <a class="btn" style="background-color: #B2BEC3; color: #ffffff;"  data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
                            Perfil
                        </a>
                        <a class="btn"  style="background-color: #C2504C

                           ; color: #ffffff;"  href="cerrar_sesion.jsp">
                            Cerrar sesion
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <script>

        </script>
        <a href="#forms_citas_cont" id="btonabajo"><img src="css/abjo.png" alt="alt" id="botonabajo"/> </a>
        <!-- cuerpo de la pagina-->
        <div style="width: 100%;">
            <div id="sis">
                <img class="img" src="https://images.unsplash.com/photo-1610889282378-76d4c8440b90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2llbG8lMjBibGFuY298ZW58MHx8MHx8&w=1000&q=80" alt="Car in desert">
                <div id="titulo" class="centrado"><a href="#forms_citas_cont" > <h1 style="font-weight: bold">Psyche</h1></a></div>
                <div id="degra"></div>
            </div>
            <div class="col-sm12 col-md-12 col-lg-12 col-xl-12" id="pagina_abajo"> 
                <div id="forms_citas_cont" class="centrado p-4">
                    <div id="forms_citas" class="container p-4">
                        <div>
                            <%
                                String strQry4 = "select * from doc_pac where id_pac = '" + idPac + "';";
                                ResultSet conexiones = bd.consulta(strQry4);
                                if (conexiones.next()) {
                                    conexion = conexiones.getInt(1);
                                    idDoc = conexiones.getInt(3);
                                    miSessiondelUsuario.setAttribute("idDoc", idDoc);
                                    tienedoctor=1;
                                }else{
                                    tienedoctor=0;
                                }
                                
                                
                                String doctor = "select * from doctores where id_doc = '" + idDoc + "'";
                                ResultSet rsDatosDoc = bd.consulta(doctor);

                                if (rsDatosDoc.next()) {
                                    nombreDoc = rsDatosDoc.getString(4);
                                }else{
                                    nombreDoc=" - ";
                                }  
                            %>
                            <h1>Su psicologo es: <%=nombreDoc%></h1>
                        </div>
                        <div class="row"> 
                            <div class="col-sm12 col-md-12 col-lg-6 col-xl-6">
                                <div class="centrado" id="3xl3">
                                    <img id="img1"src="css/Psychologist-pana.png">  
                                </div>
                            </div >
                            <div class="col-sm12 col-md-12 col-lg-6 col-xl-6">
                                <div id="menu_op" class="container p-3" >
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="card" style="width:110%;">
                                                <div class="card-body" style="box-shadow: 0px 0px 60px lightgray;">
                                                    <h4 class="card-title" >Test</h4>
                                                    <h6 class="card-subtitle mb-2 text-muted">Realizar cuestionarios</h6>
                                                    <p class="card-text">Desde cuestionarios para saber si cuenta con algun problema emocional, hasta un prediagnostico.</p>
                                                    <button class="custom-btn btn-5" id="btntest"  onclick="location.href = 'Test.jsp'"><h4>Iniciar tests</h4></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="card" style="width:110%;">
                                                <div class="card-body" style="box-shadow: 0px 0px 60px lightgray;">
                                                    <h4 class="card-title">Diario</h4>
                                                    <h6 class="card-subtitle mb-2 text-muted">Llevar una bitácora</h6>
                                                    <p class="card-text">Puedes registrar todos tus dias y como te has sentido, para que su doctor le de seguimiento.</p>
                                                    <button class="custom-btn btn-15" id="btndiario" onclick="location.href = 'diario.jsp'"><h4>Escribir!</h4></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="card" style="width:110%;">
                                                <div class="card-body" style="box-shadow: 0px 0px 60px lightgray;">
                                                    <h4 class="card-title">Chat</h4>
                                                    <h6 class="card-subtitle mb-2 text-muted">Iniciar chat</h6>
                                                    <p class="card-text">Si te sientes abrumado o triste siempre puedes hablar con un especialista, puedes enviarle un mensaje por aquí.</p>
                                                    <button class="custom-btn btn-14" id="btnchat" onclick="location.href = 'Chat.jsp'"><h4>Chatear</h4></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="card" style="width:110%;">
                                                <div class="card-body" style="box-shadow: 0px 0px 60px lightgray;">
                                                    <h4 class="card-title">Citas</h4>
                                                    <h6 class="card-subtitle mb-2 text-muted">Agendar citas</h6>
                                                    <p class="card-text">La organizacion siempre te ayudara a manejar mejor tus tiempos y tus emociones, para eso aqui tenemos un calendario.</p>
                                                    <button  class="custom-btn btn-3 " id="btncita" onclick="location.href = 'calendario/index.jsp'" ><span style="margin-top:6px; "><h5>Agendar una cita</h5></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>

            </div>
        </div> 
    </div>

    <button type="button" class="btn btn-primary yep" data-bs-toggle="modal" data-bs-target="#staticBackdrop" id="liveToastBtn"></button>

    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content">
                <div class="modal-header">
                    <img src="../logo psyche.png" class="rounded me-2" alt="..." style="width:40px;"> 
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">¡Hey!</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <h4>No olvides que aun no cuentas con un psicologo,puedes agregar uno dando clik en el boton <span style="color:red;">rojo</span> al lado derecho en la barra superior o dando click en el boton mostrado a continuacion. </H4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <a class="btn btn-primary"  id="docdoc" href="Doctores.jsp">Seleccionar un psicologo</a>
                </div>
            </div>
        </div>
    </div>


    <script>
        var elemento3 = document.querySelector("#liveToastBtn");
        var elemento2 = document.querySelector("#docdoc");
        var btn1 = document.querySelector("#btntest");
        var btn2 = document.querySelector("#btndiario");
        var btn3 = document.querySelector("#btnchat");
        var btn4 = document.querySelector("#btncita");
        
        function sip() {
            elemento3.click();
            elemento2.classList.remove("btn-primary");
            elemento2.classList.add("btn-danger");
            btn1.removeAttribute("onclick")
            btn1.setAttribute("data-bs-toggle", "modal");
            btn1.setAttribute("data-bs-target", "#staticBackdrop");
            btn2.removeAttribute("onclick")
            btn2.setAttribute("data-bs-toggle", "modal");
            btn2.setAttribute("data-bs-target", "#staticBackdrop");
            btn3.removeAttribute("onclick")
            btn3.setAttribute("data-bs-toggle", "modal");
            btn3.setAttribute("data-bs-target", "#staticBackdrop");
            btn4.removeAttribute("onclick")
            btn4.setAttribute("data-bs-toggle", "modal");
            btn4.setAttribute("data-bs-target", "#staticBackdrop");
        }
        
    </script>

    <%
        if (tienedoctor == 1) {%> 
       <% } else {
    %>
    <script>
        sip();
    </script>
    <%
            int num_pac = 0;

            String strQry2 = "select * from doctores";
            ResultSet relaciones = bd.consulta(strQry2);

        }%>

    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasExampleLabel">Editar datos de usuario.</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <div>
                <form name="act_dat_paci" method="post" action="act_dat.jsp" >
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Usuario</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value="<%=alias%>">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="alias" name="alias" value="<%=Nombre%>">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Correo electronico</label>
                        <input type="text" class="form-control" id="correo" name="correo" value="<%=correo%>">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Edad</label>
                        <input type="text" class="form-control" id="edad" name="edad" value="<%=edad%>">
                    </div>
                    <div class="col-auto">
                        <button type="submit" class="btn btn-primary mb-3">Actualizar datos</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <footer>
        <div class="centrado" style="height: 90%;">
            <div class="row" style="width: 90%; ">
                <div class="col-6 row">
                    <div class="col-6">
                        <div class="centrado" style="height: 100%">
                            <div>
                                <H3>
                                    Datos de contacto:
                                </H3>
                                <h4>
                                    Correo-
                                </h4>
                                <p>
                                    Dragonflytech4@gmail.com
                                </p>
                                <h4>
                                    Telefono-
                                </h4>
                                <p>
                                    55 7792 3651
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="centrado"  style="height: 100%">
                            . Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
                        </div>
                    </div>
                </div>
                <div class="col-6 centrado p-4">
                    <div class="card" style="width:100%;">
                        <div class="card-body">
                            <form action="https://formsubmit.co/dragonflytech4@gmail.com" method="POST">
                                <div class="mb-3">
                                    <label for="email" class="form-label">Quejas y comentarios</label>
                                    <div id="correotxt" class="form-text">En este correo recivira la respuesta a su comentario.</div>
                                    <input type="email" class="form-control" name="email" placeholder="Email Address" aria-describedby="emailHelp">
                                    <input type="hidden" name="_autoresponse" value="Su solicitud ha sido recivida, la responderemos en breve!">
                                </div>
                                <div class="mb-3">
                                    <label for="Comentario" class="form-label">Comentario</label>
                                    <textarea class="form-control" id="Comentario" rows="3"></textarea>
                                </div>
                                <input type="hidden" name="_next" value="paciente/principal_p.jsp">

                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </footer>
    <%} catch (Exception ex) {%>
    <div class="container">
        <div class="centrado">
            <h1><%out.print("se ha cerrado la sesion");%></h1>  
            <a class="btn btn-secondary" href='../index.html'>regresar</a>
        </div>
    </div>
    <%
        }
    %>
</body>

</html>