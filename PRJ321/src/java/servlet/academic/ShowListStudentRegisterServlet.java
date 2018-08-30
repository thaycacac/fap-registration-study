package servlet.academic;

import dal.StudentDAO;
import dataobj.Student;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thaycacac
 */
public class ShowListStudentRegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        StudentDAO stdDao = new StudentDAO();
        ArrayList<Student> listStudentRegister = new ArrayList<>();

        listStudentRegister = stdDao.getListStudentRegister();

        request.setAttribute("listRegister", listStudentRegister);
        request.getRequestDispatcher("/academic/listregister.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
