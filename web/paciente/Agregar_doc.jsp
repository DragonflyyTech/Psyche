<%-- 
    Document   : Agregar_doc
    Created on : 17 nov. 2022, 00:43:06
    Author     : bruno fragoso
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
    int idPac = (int) (miSessiondelUsuario.getAttribute("idPer") == null ? 0 : miSessiondelUsuario.getAttribute("idPer"));

    String doc = request.getParameter("doc");

        Base bd = new Base();           
        bd.conectar();
        String strQry = "insert into doc_pac(id_pac,id_doc) value('"+ idPac +"','"+ Integer.parseInt(doc) +"');";
        int resultadoInsert = bd.insertar(strQry);

        response.sendRedirect("principal_p.jsp");

%>
