import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AboutServlet", value = "/about")
public class AboutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("name", "Isaac");
        request.setAttribute("isCool", true);
        request.setAttribute("number", 2);
        request.getRequestDispatcher("/about.jsp").forward(request, response);
    }
}
