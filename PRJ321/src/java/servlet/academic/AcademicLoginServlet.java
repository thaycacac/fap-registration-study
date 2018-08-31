package servlet.academic;

import dal.AcademicStaffDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Thaycacac
 */
public class AcademicLoginServlet extends HttpServlet {
    
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AcademicStaffDAO acdDao = new AcademicStaffDAO();
        String checkPassword = acdDao.getPassword(username);
        if (password.equals(checkPassword) || session.getAttribute("username") != null) {
            session.setAttribute("username", username);

           response.sendRedirect("ShowListStudentRegisterServlet");
        } else {
            request.setAttribute("errorLogin", "Wrong username or password!!!");
            request.getRequestDispatcher("/academic/login.jsp").forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
