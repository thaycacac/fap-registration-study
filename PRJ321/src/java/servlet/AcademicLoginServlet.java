package servlet;

import dal.AcademicDAO;
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
public class AcademicLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AcademicDAO acdDao = new AcademicDAO();
        String checkPassword = acdDao.getPassword(username);
        if (password.equals(checkPassword)) {
            StudentDAO stdDao = new StudentDAO();
            ArrayList<Student> listStudent = new ArrayList<>();
            ArrayList<Student> listRegister = new ArrayList<>();

            listStudent = stdDao.getListStudentRegister();
            for (Student student : listStudent) {
                if (student.getCardNo() == 0) {
                    listRegister.add(student);
                }
            }

            request.setAttribute("listRegister", listRegister);
            request.getRequestDispatcher("/academic/listregister.jsp").forward(request, response);
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
