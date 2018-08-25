package servlet;

import dal.AcademicDAO;
import dal.StudentDAO;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Thaycacac
 */
public class AcceptStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String studentId = request.getParameter("studentId");
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String DOB = request.getParameter("dob");
        String strGender = request.getParameter("gender");
        String address = request.getParameter("address");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String specialized = request.getParameter("specialized");
        HttpSession session = request.getSession();
        String rollNumber = session.getAttribute("campusName") + studentId;
        String membercode = request.getParameter("membercode");
        String mode = request.getParameter("mode");
        Date enrollDate = Date.valueOf(request.getParameter("enrolldate"));

        if (membercode == null || membercode.trim().isEmpty()
                || mode == null || mode.trim().isEmpty()
                || enrollDate == null) {
            request.setAttribute("error", "You must be input Member Code and Mode, Enroll Date");
            request.getRequestDispatcher("/academic/error.jsp").forward(request, response);
        } else {
            int gender = Integer.parseInt(strGender);
            int id = Integer.parseInt(studentId);

            StudentDAO stdDao = new StudentDAO();
            stdDao.acceptStudent(firstName, lastName, DOB, gender, address,
                    telephone, email, getSpecializedId(specialized), id);
            AcademicDAO acdDao = new AcademicDAO();
            acdDao.insertStudent(rollNumber, membercode, mode, enrollDate, id);

            request.setAttribute("message-success", "Accept Student Success");
            request.getRequestDispatcher("/student/success.jsp").forward(request, response);
        }
    }

    private int getSpecializedId(String specialized) {
        if (specialized.equalsIgnoreCase("se")) {
            return 1;
        } else if (specialized.equalsIgnoreCase("id")) {
            return 2;
        } else {
            return 3;
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
