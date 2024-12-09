package registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.logging.Level;
import java.util.logging.Logger;

// Map the logout URL
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(LoginServlet.class.getName());
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        try {
            // Retrieve the existing session without creating a new one
            HttpSession session = request.getSession(false);

            if (session != null) {
                // Log session invalidation action
                LOGGER.log(Level.INFO, "Invalidating user session for login.");
                session.invalidate();
            }

            // Redirect user to login.jsp after logout
            response.sendRedirect("../login.jsp");
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Error during login", e);
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Login failed. Please try again.");
        }
    }
}
