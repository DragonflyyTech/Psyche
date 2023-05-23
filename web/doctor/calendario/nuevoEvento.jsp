<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>

<%
   
    String idDoc = request.getParameter("iddoc");
    String idPac =  request.getParameter("idpac");
    String evento = request.getParameter("evento");
    String f_inicio = request.getParameter("fecha_inicio");
    String f_fin = request.getParameter("fecha_fin");
    String color_evento = request.getParameter("color_evento");
    
    SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy");
    SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
    
    String fecha_inicio= sdf2.format(sdf1.parse(f_inicio));
    String fecha_fin_str = sdf2.format(sdf1.parse(f_fin));
    
    Calendar cal = Calendar.getInstance();
    cal.setTime(sdf2.parse(fecha_fin_str));
    cal.add(Calendar.DATE, 1);
    Date fecha_fin_date = cal.getTime();
    String fecha_fin = sdf2.format(fecha_fin_date);

    Base bd = new Base();
    bd.conectar();
    String strQry = "insert into eventos (evento,fecha_inicio,fecha_fin,color_evento,id_pac,id_doc)VALUES ('"+evento+"','"+fecha_inicio+"','"+fecha_fin+"','"+color_evento+"','"+idPac+"','"+idDoc+"')";
    int resultadoInsert = bd.insertar(strQry);
    out.print("Checar resultado de la base " + resultadoInsert);
    response.sendRedirect("index.jsp");
    

%>