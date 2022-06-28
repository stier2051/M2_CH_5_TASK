import model.Translation;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;

@WebServlet(name = "TaskThree", value = "/task-three")
public class TaskThree extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String langChoice = "";
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie : cookies) {
            if(cookie.getName().equals("lang")) {
                langChoice = cookie.getValue();
                break;
            }
        }
        System.out.println(langChoice);

        switch (langChoice) {
            case "0":
                request.setAttribute("spanName", Translation.translation.get(0).get(0));
                request.setAttribute("spanAge", Translation.translation.get(0).get(1));
                request.setAttribute("spanCountry", Translation.translation.get(0).get(2));
                request.setAttribute("spanGender", Translation.translation.get(0).get(3));
                request.setAttribute("spanInsurance", Translation.translation.get(0).get(4));
                request.setAttribute("spanSendDoc", Translation.translation.get(0).get(5));
                request.setAttribute("spanMale", Translation.translation.get(0).get(6));
                request.setAttribute("spanFemale", Translation.translation.get(0).get(7));
                request.getRequestDispatcher("taskThree.jsp").forward(request, response);
                break;
            case "1":
                request.setAttribute("spanName", Translation.translation.get(1).get(0));
                request.setAttribute("spanAge", Translation.translation.get(1).get(1));
                request.setAttribute("spanCountry", Translation.translation.get(1).get(2));
                request.setAttribute("spanGender", Translation.translation.get(1).get(3));
                request.setAttribute("spanInsurance", Translation.translation.get(1).get(4));
                request.setAttribute("spanSendDoc", Translation.translation.get(1).get(5));
                request.setAttribute("spanMale", Translation.translation.get(1).get(6));
                request.setAttribute("spanFemale", Translation.translation.get(1).get(7));
                request.getRequestDispatcher("taskThree.jsp").forward(request, response);
                break;
            default:
                request.setAttribute("spanName", "ФИО");
                request.setAttribute("spanAge", "Возраст");
                request.setAttribute("spanCountry", "Страна");
                request.setAttribute("spanGender", "Пол");
                request.setAttribute("spanInsurance", "Номер страховки");
                request.setAttribute("spanSendDoc", "Отправить документ");
                request.setAttribute("spanMale", "Мужской");
                request.setAttribute("spanFemale", "Женский");
                request.getRequestDispatcher("taskThree.jsp").forward(request, response);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
