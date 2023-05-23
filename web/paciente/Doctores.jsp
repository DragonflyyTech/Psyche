<%-- 
    Document   : Doctores
    Created on : 23 mar. 2023, 21:20:37
    Author     : bruno fragoso
    no pues que pendejo yo
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <!-- css personalizado-->
        <link href="ppp.css" rel="stylesheet">
    </head>
    <body>
        <%
        try{
        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
        int idPac = (int) (miSessiondelUsuario.getAttribute("idPer") == null ? 0 : miSessiondelUsuario.getAttribute("idPer"));
        String Nombre = miSessiondelUsuario.getAttribute("NombrePac").toString();

        if (idPac < 1) {
            response.sendRedirect("index.html");
        }
        int bnd =Integer.parseInt(request.getParameter("bnd"));
        
        String nombre = "";
        String correo = "";
        String id = "";
        String dir ="";
        int conexion = 0;
        int idDoc = 0;
        String compadoc="";
        
        if(bnd == 1){
           compadoc="select * from doctores;";
            }else{
            compadoc = (String) request.getSession().getAttribute("compadoc");
            }
        
        Base bd = new Base();
        bd.conectar(); 
        
        String strQry = "select * from pacientes where id_pac = '" + idPac + "'";
        ResultSet rsDatosPer = bd.consulta(strQry);

        if (rsDatosPer.next()) {
            correo = rsDatosPer.getString(3);
        }%>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <span class="navbar-brand mb-0 "><h4 style="font-weight: bold"><%=Nombre%></h4></span>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="principal_p.jsp">Inicio</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Menú</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="Test.jsp">Test</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="diario.jsp">Diario</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="Chat.jsp">Chat</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item disabled" href="Calendario.jsp" >Citas</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
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
        <div style="width: 100px; background-color: #B2BEC3; width: 100%; margin-bottom: 15px;" class="p-1"  >
            <form name="datos" method="post" action="buscdoc.jsp" style="" class="centrado row">
                <div class="col-1" style="padding-left:30px; ">
                    <h4>Buscar</h4>
                </div>
                <div class="col-8">
                    <input class="form-control" type="text" id="nombpsi" name="nombpsi" placeholder="Nombre del psicologo" aria-label="default input example">
                </div>
                <div class="col-2">
                    <select class="form-select" id="tipo" name="tipo" aria-label="Default select example">
                        <option value="" selected>-- tipo --</option>
                        <option value="Conductismo">Conductismo</option>
                        <option value="cognitiva">cognitiva</option>
                        <option value="Psicodinámica">Psicodinámica</option>
                        <option value="Humanista">Humanista</option>
                        <option value="Evolutiva">Evolutiva</option>
                        <option value="Neuropsicología">Neuropsicología</option>
                        <option value="Sociocultural">Sociocultural</option>
                    </select>
                </div>
                <div class="col-1">
                    <button type="submit" id="enviar" style="background-color: #8F9779; border-color: #8F9779;" value="enviar" class="btn btn-primary">buscar</button>
                </div>
            </form>
        </div>
        <%
        
        String strQry4 = "select * from doc_pac where id_pac = '"+idPac+"';";
        ResultSet conexiones = bd.consulta(strQry4);
        if (conexiones.next()) {
            conexion = conexiones.getInt(1);
            dir="actDoc.jsp";
        }else{
            dir="Agregar_doc.jsp";
            }
        %>

        <div class="container">

            <%                  
                        int num_pac = 0;
                    
                        String strQry2 = compadoc;
                        ResultSet relaciones = bd.consulta(strQry2);
                    
                        while (relaciones.next()){
                    
                            int id_doc = relaciones.getInt(1);
                            String nom = relaciones.getString(4);
                            String esp = relaciones.getString(7);
                            String numce = relaciones.getString(6);
                        
                            int id_per = idPac;
                        
                            String strQry3 = "select * from doc_pac where id_doc = '"+id_doc+"';";
                            ResultSet doctores = bd.consulta(strQry3);

                            while(doctores.next()){num_pac++;}

                            if(num_pac <= 5){
            %>
            <div id="tarjeta_psicologo" class="">
                <div id="tps1">
                    <div>
                        <h2>
                            <p><%=nom%></p>
                        </h2>
                    </div>
                    <div>
                        <h3>
                            <P>Cuenta con: <%=num_pac%> pacientes</p>
                            <P>Especialidad teorica: <%=esp%> </p> 
                            <P>numero de cedula: <%=numce%> </p> 
                        </h3>
                    </div>
                </div>
                <div style="display: flex; float: right;">
                    <form name="datos" method="post" action="<%=dir%>" style="">
                        <input type="hidden" name="doc" id="doc" value="<%=id_doc%>">
                        <button type="submit" id="enviar" style="background-color: #8F9779; border-color: #8F9779;" value="enviar" class="btn btn-primary"><H5>Elegir</H5></button>
                    </form>
                </div>
            </div>

            <%
                    }else{
                        continue;
                }
            num_pac = 0;
            }%>

        </div>
        <%
    
    }catch (Exception ex) {%>

        <h1><%out.print("se ha cerrado la sesion");%></h1>  
        <a class="btn btn-secondary" href='../index.html'>regresar</a>

        <%
            }
        %>
    </body>
</html>
