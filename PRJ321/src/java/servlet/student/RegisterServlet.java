package servlet.student;

import dal.StudentDAO;
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
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        int campusId = (int) session.getAttribute("campusId");

        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String DOB = request.getParameter("dob");
        String genderStr = request.getParameter("gender");
        String address = request.getParameter("address");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        int specializedId = Integer.parseInt(request.getParameter("specialized"));

        if (firstName == null || firstName.trim().isEmpty()
                || lastName == null || lastName.trim().isEmpty()
                || DOB == null || DOB.trim().isEmpty()
                || genderStr == null || genderStr.trim().isEmpty()
                || address == null || address.trim().isEmpty()
                || telephone == null || telephone.trim().isEmpty()
                || email == null || email.trim().isEmpty()) {
            request.setAttribute("error", "You must be input all field!!!");
            request.getRequestDispatcher("/student/register.jsp").forward(request, response);
        } else {
            int gender = Integer.parseInt(genderStr);
            StudentDAO stdao = new StudentDAO();
            stdao.insertStudent(firstName, lastName, DOB, gender, address, telephone, email, specializedId, campusId);
            
            request.setAttribute("success", "Register Success");
            request.getRequestDispatcher("/public/success.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
