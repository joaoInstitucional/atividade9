import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProcessaCadastroServlet")
public class ProcessaCadastroServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recuperar os dados do formulário
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String instituicao = request.getParameter("instituicao");
        String curso = request.getParameter("curso");
        String cargo = request.getParameter("cargo");
        String cor = request.getParameter("cor");

        // Criar cookies para armazenar os dados
        Cookie nomeCookie = new Cookie("nome", nome);
        Cookie emailCookie = new Cookie("email", email);
        Cookie instituicaoCookie = new Cookie("instituicao", instituicao);
        Cookie cursoCookie = new Cookie("curso", curso);
        Cookie cargoCookie = new Cookie("cargo", cargo);
        Cookie corCookie = new Cookie("cor", cor);

        // Definir a validade dos cookies (por exemplo, 24 horas)
        nomeCookie.setMaxAge(24 * 60 * 60);
        emailCookie.setMaxAge(24 * 60 * 60);
        instituicaoCookie.setMaxAge(24 * 60 * 60);
        cursoCookie.setMaxAge(24 * 60 * 60);
        cargoCookie.setMaxAge(24 * 60 * 60);
        corCookie.setMaxAge(24 * 60 * 60);

        // Adicionar cookies à resposta
        response.addCookie(nomeCookie);
        response.addCookie(emailCookie);
        response.addCookie(instituicaoCookie);
        response.addCookie(cursoCookie);
        response.addCookie(cargoCookie);
        response.addCookie(corCookie);

        // Redirecionar para uma página de confirmação
        response.sendRedirect("confirmacao.jsp");
    }
}
