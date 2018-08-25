package servlet;

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
public class AcceptStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String DOB = request.getParameter("dob");
        String strGender = request.getParameter("gender");
        String address = request.getParameter("address");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String specialized = request.getParameter("specialized");
        String rollnumber = request.getParameter("rollnumber");
        String membercode = request.getParameter("membercode");
        String mode = request.getParameter("mode");
        String studentId = request.getParameter("studentId");
        if (membercode == null || membercode.trim().isEmpty()
                || mode == null || mode.trim().isEmpty()) {
            request.setAttribute("error", "You must be input Member Code and Mode");
            request.getRequestDispatcher("/academic/error.jsp").forward(request, response);
        } else {
            StudentDAO stdDao = new StudentDAO();
            int gender = Integer.parseInt(strGender);
            int id = Integer.parseInt(studentId);
            stdDao.acceptStudent(firstName, lastName, DOB, gender, address,
                    telephone, email, getSpecializedId(specialized), id);
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
