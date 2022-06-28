import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "TaskTwo", value = "/task-two")
public class TaskTwo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        String personName = "";
        String personSurname = "";
        String personCountry = "";
        String personPhone = "";
        for (Cookie cookie : cookies) {
            switch (cookie.getName()) {
                case "personName":
                    personName = cookie.getValue();
                    break;
                case "personSurname":
                    personSurname = cookie.getValue();
                    break;
                case "personCountry":
                    personCountry = cookie.getValue();
                    break;
                case "personPhone":
                    personPhone = cookie.getValue();
            }
        }
        request.setAttribute("personName", personName);
        request.setAttribute("personSurname", personSurname);
        request.setAttribute("personCountry", personCountry);
        request.setAttribute("personPhone", personPhone);
        request.getRequestDispatcher("/taskTwo.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Cookie personName = new Cookie("personName", request.getParameter("personName"));
        Cookie personSurname = new Cookie("personSurname", request.getParameter("personSurname"));
        Cookie personCountry = new Cookie("personCountry", request.getParameter("personCountry"));
        Cookie personPhone = new Cookie("personPhone", request.getParameter("personPhone"));

        personName.setMaxAge(30 * 24 * 60 * 60);
        personSurname.setMaxAge(30 * 24 * 60 * 60);
        personCountry.setMaxAge(30 * 24 * 60 * 60);
        personPhone.setMaxAge(30 * 24 * 60 * 60);

        response.addCookie(personName);
        response.addCookie(personSurname);
        response.addCookie(personCountry);
        response.addCookie(personPhone);

        response.sendRedirect("/task-two");
    }
}
