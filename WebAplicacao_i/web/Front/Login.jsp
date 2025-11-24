<%-- 
    Document   : Login
    Created on : 26 de set. de 2025, 20:30:28
    Author     : ESCOLA
--%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Css/newcss.css">
        <title>Login</title>
    </head>
    <body>
        <div>
            <div class="a1">
                <%
                LocalDateTime agora = LocalDateTime.now();
                DateTimeFormatter ft = DateTimeFormatter.ofPattern("dd/MM/yyyy");
                String formatado = agora.format(ft);
                %>
                <h4><%=formatado%></h4>
                <div class="b">
                    <div class="b1"></div>
                    <div class="b2"></div>
                    <div class="b3"></div>
                </div>
            </div>
            <div class="container">
                <h1>testando</h1>
                <form method="post" class="teste" action="..\Back\Criandolog.jsp">
                    <div class="dteste">
                        <table>
                            <tr>
                                <td><input name="email" placeholder="nome"></td>
                            </tr>
                            <tr>
                                <td><input type="password" name="password" placeholder="senha" required></td>
                            </tr>
                            <tr>
                                <td><button class="butao" type="submit"> + </button></td>
                            </tr>
                        </table>
                        <%
                        String erro = request.getParameter("erro");
                        if (erro != null){
                        %>
                        <h4 class="errologin">Senha ou nome errado</h4>
                        <%
                        }
                        %>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
