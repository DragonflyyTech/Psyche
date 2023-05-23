<%-- 
    Document   : actDoc
    Created on : 22 may. 2023, 02:25:26
    Author     : bruno fragoso
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
    int idPac = (int) (miSessiondelUsuario.getAttribute("idPer") == null ? 0 : miSessiondelUsuario.getAttribute("idPer"));

    String doc = request.getParameter("doc");

        Base bd = new Base();           
        bd.conectar();
        String strQry = "update doc_pac set id_doc ='"+ doc +"' where id_pac='"+ idPac +"';";
        int resultadoInsert = bd.insertar(strQry);

        response.sendRedirect("principal_p.jsp");

%>