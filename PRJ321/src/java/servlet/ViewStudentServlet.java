package servlet;

import dal.CampusDAO;
import dal.SpecializedDAO;
import dal.StudentDAO;
import dataobj.Student;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thaycacac
 */
public class ViewStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int studentId = Integer.parseInt(request.getParameter("studentId"));
        StudentDAO stdDao = new StudentDAO();
        Student student = stdDao.getStudentById(studentId);
        request.setAttribute("student", student);

        CampusDAO cpDao = new CampusDAO();
        String campusName = cpDao.getShortNameCampus(student.getCampusId());
        request.setAttribute("campusName", campusName);

        SpecializedDAO spDao = new SpecializedDAO();
        String specializedCode = spDao.getCodeSpecialized(student.getSpecializedId());
        request.setAttribute("specializedCode", specializedCode);

        request.getRequestDispatcher("/academic/inforegister.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
