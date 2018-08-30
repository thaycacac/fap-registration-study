<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Information Register</title>
        <link href="../myStyle.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link rel="shortcut icon" href="../favicon.ico"/>
    </head>
    <body>
        <div class="container">
            <div class="container-form">
                <h1>Information Register</h1>
                <hr>
                <form action="AcceptStudentServlet" method="POST">
                    <div class="form-group">
                        <label>First Name</label>
                        <input type="text" class="form-control input-student" value="${student.firstName}" name="firstname">
                    </div>
                    <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" class="form-control input-student" value="${student.lastName}" name="lastname">
                    </div>
                    <div class="form-group">
                        <label>Date Of Birth</label>
                        <input type="date" class="form-control input-student" value="${student.DOB}" name="dob">
                    </div>
                    <div class="form-group">
                        <label>Gender</label>
                        <div>
                            <input type="radio" name="gender" value="1" class="gender"<c:if test="${student.gender == true}">checked</c:if>> Male
                            <input type="radio" name="gender" value="0" class="gender"<c:if test="${student.gender == false}">checked</c:if>>Female
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input type="text" class="form-control input-student" value="${student.address}" name="address">
                    </div>
                    <div class="form-group">
                        <label>Telephone</label>
                        <input type="text" class="form-control input-student" value="${student.telephone}" name="telephone">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control input-student" value="${student.email}" name="email">
                    </div>
                    <div class="form-group">
                        <label>Specialized</label>
                        <select class="form-control input-student" name="specialized">
                            <option value="SE" <c:if test="${student.specializedId == 1}">selected</c:if>>Kỹ Thuật Phần Mềm</option>
                            <option value="IA" <c:if test="${student.specializedId == 2}">selected</c:if>>An Toàn Thông Tin</option>
                            <option value="SB" <c:if test="${student.specializedId == 3}">selected</c:if>>Quản Trị Kinh Doanh</option>
                            </select>
                        </div>
                        <br>
                        <h3>For Acadamic Staff</h3><hr>
                        <div class="form-group">
                            <label>Roll Number</label>
                            <input type="text" class="form-control input-student" value="${campusName}${student.id}" name="rollNumber" disabled>
                    </div>
                    <div class="form-group">
                        <label>Old Roll Number</label>
                        <input type="text" class="form-control"  name="oldrollnumber">
                    </div>
                    <div class="form-group">
                        <label>Member Code</label>
                        <input type="text" class="form-control"  name="membercode" value="${nameFPT}${specializedCode}${student.id}">
                    </div>
                    <div class="form-group">
                        <label>Enroll Date</label>
                        <input type="date" class="form-control"  name="enrolldate">
                    </div>
                    <div class="form-group">
                        <label>Mode</label>
                        <input type="text" class="form-control"  name="mode">
                    </div>
                    <input type="hidden" name="studentId" value="${student.id}"/>
                    <button type="submit" class="btn btn-success botton-academic" >Accept</button>
                    <button type="submit" class="btn btn-danger botton-academic btn-reject" formaction="RejectStudentServlet">Reject</button>
                </form>
            </div>
        </div>
    </body>
</html>
