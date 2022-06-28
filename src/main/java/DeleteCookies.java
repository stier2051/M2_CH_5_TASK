import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "delete-cookies", value = "/delete-cookies")
public class DeleteCookies extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie personName = new Cookie("personName", "");
        Cookie personSurname = new Cookie("personSurname", "");
        Cookie personCountry = new Cookie("personCountry", "");
        Cookie personPhone = new Cookie("personPhone", "");

        Cookie siteName = new Cookie("siteName", "");

        Cookie lang = new Cookie("lang", "");

        personName.setMaxAge(0);
        personSurname.setMaxAge(0);
        personCountry.setMaxAge(0);
        personPhone.setMaxAge(0);

        siteName.setMaxAge(0);

        lang.setMaxAge(0);

        response.addCookie(personName);
        response.addCookie(personSurname);
        response.addCookie(personCountry);
        response.addCookie(personPhone);

        response.addCookie(siteName);
        response.addCookie(lang);

        response.sendRedirect("/task-two");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
