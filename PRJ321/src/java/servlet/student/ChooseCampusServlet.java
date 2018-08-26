package servlet.student;

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
public class ChooseCampusServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //TODO: get campus id to insert student_campus
        request.setCharacterEncoding("utf-8");
        int campusId = Integer.parseInt(request.getParameter("campusId"));

        HttpSession session = request.getSession();
        session.setAttribute("campusId", campusId);

        request.getRequestDispatcher("/student/register.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
