<%-- 
    Document   : index
    Created on : 14-04-2021, 12:38:20 AM
    Author     : jhona
--%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.jhonatanvelardecondori.modelo.Tarea"%>
<%@page import="com.jhonatanvelardecondori.modelo.GestorTareas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">

            <tr>
                <th>PRIMER PARCIAL TEM-742</th>
            </tr>
            <tr>
               <th>JHONATAN VELARDE CONDORI</th>
            </tr>
            <tr>
                <th>CARNET 9999250</th>
            </tr><tr>
                <th>REGISTRO 200017411</th>
            </tr>
  
         
    </table>
    <h1>Registro de vacunas </h1>
    <a href="Controller?op=nuevo">Nuevo</a>
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Nombre</th>
            <th>Peso</th>
            <th>Talla</th>
            <th>Vacuna</th>

            <th></th>
            <th></th>
        </tr>
        <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
            <tr>
                <td>${item.id}</td>
                <td>${item.nombre}</td>
                <td>${item.peso}</td>
                <td>${item.talla}</td>
                <td>${item.vacuna}</td>
                <td><a href="Controller?op=modificar&id=${item.id}">Modificar</a></td>
                <td><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
