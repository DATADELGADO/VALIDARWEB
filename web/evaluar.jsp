<%-- 
    Document   : procesar
    Created on : 30-may-2022, 11:52:21
    Author     : steven jesus delgado benavides
    fecha      : 30/05/2022
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        

    </head>
    <body>
        <% //esta etiqueta es para escribir codigo JAVA
            //esto es para recuperar la informacion del formulario
            String[] log = {"Luis", "Miguel", "Carmen", "Maria"};
            String[] pass = {"111", "222", "333", "444"};

            String login = request.getParameter("txtLogin");
            String password = request.getParameter("txtPass");
            boolean flag = false;

            for (int i = 0; i < log.length; i++) {
                if (login.equalsIgnoreCase(log[i]) && password.equals(pass[i])) {
                    out.print("USUARIO CORRECTO");
                    flag = true;
                    break;
                }
            }
            if (flag == false) {
                out.print("<p style='color:#FF0000;'>USUARIO INCORRECTO</p>");
            }


        %>

    </body>
</html>
