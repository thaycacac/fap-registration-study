package servlet.academic;

import dal.AcademicDAO;
import dal.StudentDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thaycacac
 */
public class RejectStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String studentId = request.getParameter("studentId");

        AcademicDAO acdDao = new AcademicDAO();
        acdDao.deleteStudent(studentId);

        StudentDAO stdDao = new StudentDAO();
        stdDao.deleteStudent(studentId);

        response.sendRedirect("ShowListStudentRegisterServlet");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
