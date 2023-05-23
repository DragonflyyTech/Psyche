<!DOCTYPE html>
<!-- -->
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%
        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
        int idDoc = (int) (miSessiondelUsuario.getAttribute("idPer") == null ? 0 : miSessiondelUsuario.getAttribute("idPer"));

        if (idDoc < 1) {
            response.sendRedirect("index.html");
        }

        String nombre = "";
        String correo = "";
        String id = "";
        String alias ="";
        int conexion = 0;

        Base bd = new Base();
        bd.conectar();
        String strQry = "select * from doctores where id_doc = '" + idDoc + "'";
        ResultSet rsDatosPer = bd.consulta(strQry);

        if (rsDatosPer.next()) {
            nombre = rsDatosPer.getString(4);
            alias = rsDatosPer.getString("nom_doc");
        }
        miSessiondelUsuario.setAttribute("Nombre", alias);
    %>

    <head>
        <title>Inicio</title>
        <link rel="shortcut icon" href="https://cdn-icons-png.flaticon.com/128/1787/1787077.png" type="image/gif" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <!-- css personalizado-->
        <link href="ppp.css" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@500&display=swap" rel="stylesheet">
    </head>

    <body>
        <!-- bootstrap js-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>

        <!-- barra de navegacion -->
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <span class="navbar-brand mb-0 "><h4 style=" margin-left: 5px;"><%=nombre%></h4></span>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="principal_d.jsp">Inicio</a>
                        </li> 
                    </ul>
                    <a class="btn btn-primary" href="cerrar_sesion.jsp">Cerrar sesion</a>
                </div>
            </div>
        </nav>
        <!-- cuerpo de la pagina-->
        <div style="width: 100%;">
            <div id="sis">
                <img class="img" src="https://images.unsplash.com/photo-1428908728789-d2de25dbd4e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="Car in desert">
                <div id="titulo" class="centrado"><a href="#forms_citas_cont" > <h1 style="font-weight: bold">Psyche</h1></a></div>
                <div id="degra"></div>
            </div>
            <div class="col-sm12 col-md-12 col-lg-12 col-xl-12" id="pagina_abajo"> 
                <div id="forms_citas_cont" class="centrado p-4">
                    <div id="forms_citas" class="container">
                        <%
                        String strQry2 = "select * from doc_pac where id_doc = '" + idDoc + "'";
                        ResultSet conex = bd.consulta(strQry2);
                        while(conex.next()){
                        int id_pac = conex.getInt(2);
                        
                            String strQry3 = "select * from pacientes where id_pac = '" + id_pac + "'";
                            ResultSet paciente = bd.consulta(strQry3);
                            if(paciente.next()){
                                String nombre_paciente=paciente.getString(4);
                            
                        %>
                            <div id="paciente_cont" class="centrado">
                                <div id="paciente" class="centrado p-4">
                                    <form name="datos" method="post" action="interfazDatosUsrs.jsp" class="centrado">
                                        <h1>&nbsp;&nbsp;<%=nombre_paciente%></h1>
                                        <input type="hidden" name="idPac" id="idPac" value="<%=id_pac%>">
                                        <input type="hidden" name="nombPac" id="nombPac" value="<%=nombre_paciente%>">
                                        <button type="submit" class="btn btn-primary subir"><h3>Revisar</h3></button>
                                    </form>
                                </div>
                            </div>
                        <%
                            }else{
                            continue;
                                }
                        }
                        %>
                    </div> 
                </div>
            </div>
            <footer style="background-color: #B2BEC3;">
            <div class="centrado" style="height: 90%;">
                <div class="row" style="width: 90%; ">
                    <div class="col-8 row">
                        <div class="col-3">
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
                        <div class="col-9">
                            <div class="centrado"  style="height: 100%">
                                <div>
                                    <H3>
                                        FQA
                                    </H3>
                                    <h5>
                                        ¿Como cambio de idioma la pagina?
                                    </h5>
                                    <p>
                                        Respuesta: Aun no tenemos una opcion para poder traducir la pagina pero se encuentra en desarrollo.
                                    </p>
                                    <h5>
                                        ¿Mis conversaciones son privadas?
                                    </h5>
                                    <p>
                                        Respuesta: Sí, son unicamente con su psicologo, nosotros no revisamos ninguna de ellas.
                                    </p>
                                    <h5>
                                        ¿Donde puedo comunicarme en caso de tener un problema o sugerencia con la aplicacion?
                                    </h5>
                                    <p>
                                        Respuesta: Adyacente a este recuadro podra encontrar en el lado izquierdo, un apartado llamado "Datos de contacto", donde se podra poner en contacto con algun miembro del equipo, y del lado isquierdo encontrara un formulario que lo llevara a rellenar unas preguntas y podra subir su observacion/ problema.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 centrado p-4">
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
                                    <input type="hidden" name="_next" value="http://localhost:8080/Psyche/paciente/principal_p.jsp#forms_citas_cont">

                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        </div> 
    </body>

</html>