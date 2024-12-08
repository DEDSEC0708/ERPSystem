package registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(RegisterServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Capture form data safely
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            // Validate the data
            if (name == null || name.isEmpty() ||
                email == null || email.isEmpty() ||
                username == null || username.isEmpty() ||
                password == null || password.isEmpty()) {

                request.setAttribute("error", "All fields are required.");
                request.getRequestDispatcher("/register.jsp").forward(request, response);
                return;
            }

            // TODO: Save the user registration logic here
            // Simulate database save logic with a placeholder log
            LOGGER.log(Level.INFO, "Saving user details: {0}, {1}, {2}", new Object[]{name, email, username});

            // Redirect to login page after registration
            response.sendRedirect("login.jsp");
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Error during registration", e);
            request.setAttribute("error", "Registration failed. Please try again.");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
    }
}
