import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "GuessServlet", value = "/guess")
public class GuessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/guess-view.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Random random = new Random();
        int randomNumber = random.nextInt(3) + 1;
        int numberGuessed = Integer.parseInt(request.getParameter("guess"));
        if(numberGuessed == randomNumber){
            response.sendRedirect("/correct");
        } else {
            response.sendRedirect("/incorrect");
        }

    }
}
