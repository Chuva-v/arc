<%-- 
    Document   : Home
    Created on : 3 de out. de 2025, 21:06:04
    Author     : ESCOLA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
    // Inicializa a grade
    int tamanho = 64;
    String[][] grade = (String[][]) session.getAttribute("grade");
    if (grade == null) {
        grade = new String[tamanho][tamanho];
        for (int i = 0; i < tamanho; i++) {
            Arrays.fill(grade[i], "#2F4F4F"); // branco
        }
        session.setAttribute("grade", grade);
    }
    
    // Aplica cor se enviada
    String cor = request.getParameter("cor");
    String posicao = request.getParameter("posicao");
    if (cor != null && posicao != null && posicao.length() == 2) {
        int linha = Character.getNumericValue(posicao.charAt(0));
        int coluna = Character.getNumericValue(posicao.charAt(1));
        grade[linha][coluna] = cor;
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="..\Css\homecss.css">

        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <h1>HOME</h1>
            <a href="Login.jsp"> voltar </a>
        </header>
        <form method="post" action="Home.jsp">
            <input type="color" name="cor" value=<%=cor%>>
            
            <div class="grade">
            <%  for (int i = 0; i < tamanho; i++) {
                    for (int j = 0; j < tamanho; j++) { %>
                <button class="celula" name="posicao" value="<%= i + "" + j %>" style="background-color:<%= grade[i][j] %>;"></button>
            <%      } 
                } 
            %>
            </div>
        </form>
    </body>
</html>
