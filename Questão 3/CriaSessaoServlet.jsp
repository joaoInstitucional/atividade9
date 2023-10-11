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
        
        // Obtendo a sess�o ou criando uma nova se n�o existir
        HttpSession session = request.getSession(true);
        
        // Obtendo o ID da sess�o
        String sessionId = session.getId();
        
        // Obtendo a data e hora da cria��o da sess�o
        Date creationTime = new Date(session.getCreationTime());
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        String creationTimeString = sdf.format(creationTime);
        
        // Obtendo a data e hora do �ltimo acesso � sess�o
        Date lastAccessTime = new Date(session.getLastAccessedTime());
        String lastAccessTimeString = sdf.format(lastAccessTime);
        
        // Verificando o n�mero de acessos � sess�o
        int accessCount = 1;
        if (session.getAttribute("accessCount") != null) {
            accessCount = (int) session.getAttribute("accessCount");
            accessCount++;
        }
        session.setAttribute("accessCount", accessCount);
        
        // Exibindo as informa��es
        out.println("<html><body>");
        out.println("<h1>ID da Sess�o: " + sessionId + "</h1>");
        out.println("<h2>Data e Hora de Cria��o da Sess�o: " + creationTimeString + "</h2>");
        out.println("<h2>Data e Hora do �ltimo Acesso: " + lastAccessTimeString + "</h2>");
        out.println("<h2>N�mero de Acessos � Sess�o: " + accessCount + "</h2>");
        
        // Exibindo uma mensagem ap�s a 5� sess�o
        if (accessCount >= 5) {
            out.println("<h2>Parab�ns! Voc� j� acessou a sess�o 5 vezes!</h2>");
        }
        
        out.println("</body></html>");
        out.close();
    }
}
