import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "main", value = "/main")
public class Main extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/firstTask.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String siteTitle = request.getParameter("siteTitle");
        Cookie cookie = new Cookie("siteName", siteTitle);
        cookie.setMaxAge(30 * 24 * 60 * 60);
        response.addCookie(cookie);
        response.sendRedirect("/task-one");
    }
}
