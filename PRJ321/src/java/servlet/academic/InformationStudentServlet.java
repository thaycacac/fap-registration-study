package servlet.academic;

import dal.AcademicStudentDAO;
import dal.CampusDAO;
import dal.StudentDAO;
import dataobj.AcademicStudent;
import dataobj.Student;
import java.io.IOException;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Thaycacac
 */
public class InformationStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int studentId = Integer.parseInt(request.getParameter("studentId"));

        StudentDAO stdDao = new StudentDAO();
        Student student = stdDao.getStudentById(studentId);

        AcademicStudentDAO acdsDAO = new AcademicStudentDAO();
        AcademicStudent acds = acdsDAO.getAcademicStudent(studentId);

        request.setAttribute("student", student);
        request.setAttribute("acaStudent", acds);

        CampusDAO cpDao = new CampusDAO();
        String campusName = cpDao.getShortNameCampus(student.getCampusId());
        HttpSession session = request.getSession();
        session.setAttribute("campusName", campusName);
        
        int random = new Random().nextInt(10);
        String image = "http://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=SE0574" + random + "&Campus=3";
        session.setAttribute("image", image);

        request.getRequestDispatcher("/academic/infostudent.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
