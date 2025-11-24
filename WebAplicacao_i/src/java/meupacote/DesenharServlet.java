package meupacote;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/desenhar")
public class DesenharServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;

//    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cor = request.getParameter("cor");
        String posicao = request.getParameter("posicao");

        System.out.println("Cor selecionada: " + cor);
        System.out.println("Célula clicada: " + posicao);

        response.sendRedirect("Front/Home.jsp");
    }
}

