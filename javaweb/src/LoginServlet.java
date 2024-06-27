import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");

        // Simulate authentication logic
        if (username != null && password != null && username.equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            /*if ("on".equals(remember)) {
                Cookie cookie = new Cookie("username", username);
                response.addCookie(cookie);
            }*/

            response.sendRedirect("welcome.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}
