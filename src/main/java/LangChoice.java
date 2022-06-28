import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "lang-choice", value = "/lang-choice")
public class LangChoice extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String langChoice = request.getParameter("lang");
        System.out.println(langChoice);
        Cookie lang = new Cookie("lang", langChoice);
        lang.setMaxAge(90 * 24 * 60 * 60);
        response.addCookie(lang);

        response.sendRedirect("/task-three");

//        request.getRequestDispatcher("/task-three").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
