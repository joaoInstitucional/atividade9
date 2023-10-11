import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CriaSessaoServlet")
public class CriaSessaoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Obtendo a sessão ou criando uma nova se não existir
        HttpSession session = request.getSession(true);
        
        // Obtendo o ID da sessão
        String sessionId = session.getId();
        
        // Obtendo a data e hora da criação da sessão
        Date creationTime = new Date(session.getCreationTime());
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        String creationTimeString = sdf.format(creationTime);
        
        // Obtendo a data e hora do último acesso à sessão
        Date lastAccessTime = new Date(session.getLastAccessedTime());
        String lastAccessTimeString = sdf.format(lastAccessTime);
        
        // Verificando o número de acessos à sessão
        int accessCount = 1;
        if (session.getAttribute("accessCount") != null) {
            accessCount = (int) session.getAttribute("accessCount");
            accessCount++;
        }
        session.setAttribute("accessCount", accessCount);
        
        // Exibindo as informações
        out.println("<html><body>");
        out.println("<h1>ID da Sessão: " + sessionId + "</h1>");
        out.println("<h2>Data e Hora de Criação da Sessão: " + creationTimeString + "</h2>");
        out.println("<h2>Data e Hora do Último Acesso: " + lastAccessTimeString + "</h2>");
        out.println("<h2>Número de Acessos à Sessão: " + accessCount + "</h2>");
        
        // Exibindo uma mensagem após a 5ª sessão
        if (accessCount >= 5) {
            out.println("<h2>Parabéns! Você já acessou a sessão 5 vezes!</h2>");
        }
        
        out.println("</body></html>");
        out.close();
    }
}
