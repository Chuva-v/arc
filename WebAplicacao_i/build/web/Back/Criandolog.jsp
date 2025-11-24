<%-- 
    Document   : criandolog
    Created on : 26 de set. de 2025, 20:28:06
    Author     : ESCOLA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="banco.Conect"%>
<%@page import="Models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <%
        User user = new User();
        user.setNome(request.getParameter("email"));
        user.setSenha( request.getParameter("password"));
        Connection con = (Connection) Conect.getConexao();
        PreparedStatement st = con.prepareStatement("SELECT * FROM user WHERE nome=? AND senha=MD5(?)");
        st.setString(1, user.getNome());
        st.setString(2, user.getSenha());
        
        ResultSet rs = st.executeQuery();
        if(rs.next()){
            response.sendRedirect("../Front/Home.jsp");
        } else {
            response.sendRedirect("../Front/Login.jsp?erro=1");
        }
        %>
    </body>
</html>
