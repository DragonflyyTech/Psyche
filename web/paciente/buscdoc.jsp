<%-- 
    Document   : buscdoc
    Created on : 22 may. 2023, 02:25:50
    Author     : bruno fragoso
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
    int idPac = (int) (miSessiondelUsuario.getAttribute("idPer") == null ? 0 : miSessiondelUsuario.getAttribute("idPer"));

    String nombreps = request.getParameter("nombpsi");
    String tipo = request.getParameter("tipo");
    String compadoc="";
    
    if(nombreps==""){
        if(tipo==""){
            compadoc="select * from doctores;";
        }else{
            compadoc="select * from doctores where esp_doc='"+ tipo +"';";
        }
    }else{
        if(tipo==""){
            compadoc="select * from doctores where alias_doc='"+ nombreps +"';";
        }else{
            compadoc="select * from doctores where alias_doc='"+ nombreps +"' and esp_doc='"+ tipo +"';";
        }
        
    } 
    request.getSession().setAttribute("compadoc", compadoc);
    response.sendRedirect("Doctores.jsp?bnd=2");
%>
<!--<h1><%=nombreps%><h1>
        <h1><%=tipo%><h1>
                <h1><%=compadoc%><h1>-->