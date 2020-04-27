<%-- 
    Document   : index
    Created on : 16-abr-2020, 16:04:05
    Author     : Sergio
--%>

<%@page import="models.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="Controlador">
            <input type="text" name="nombre"/>
            <input type="hidden" name="accion" value="aniadir"/>
            <input type="submit" value="Añadir"/>
        </form>
        <form action="Controlador">
            <input type="hidden" name="accion" value="logout"/>
            <input type="submit" value="Cerrar sesión">
        </form>
        <%
            session.setAttribute("misElementos", request.getAttribute("misElementos"));
            request.setAttribute("misElementos", session.getAttribute("misElementos"));
            
            if (session.getAttribute("misElementos") != null) {
                for (Producto elem : (ArrayList<Producto>) session.getAttribute("misElementos")) {
                    out.print(elem.getNombre() + " " + elem.getCantidad() + "<br>");
                }
            }
        %>
    </body>
</html>
