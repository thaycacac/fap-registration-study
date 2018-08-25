<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Information Student</title>
        <link href="../myStyle.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="container-form">
                <h1>Student Information </h1>
                <hr>
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" style="width: 200px;" src="${image}"
                         alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Profile</h4>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Fullname: ${student.firstName} ${student.lastName}</li>
                        <li class="list-group-item">Date of birth: ${student.DOB}</li>
                        <li class="list-group-item">Gender: 
                            <c:if test="${student.gender == true}">Male</c:if>
                            <c:if test="${student.gender == false}">Female</c:if>
                            </li>
                            <li class="list-group-item">ID Card: </li>
                            <li class="list-group-item">Address: ${student.address}</li>
                        <li class="list-group-item">Email: ${student.email}</li>
                        <li class="list-group-item">Date of issue: 14/03/2017</li>
                        <li class="list-group-item">Paice of issue:</li>
                    </ul>
                    <div class="card-body">
                        <h4 class="card-title">Parent</h4>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Name: ....</li>
                        <li class="list-group-item">Phone number: ....</li>
                        <li class="list-group-item">Gender: ....</li>
                        <li class="list-group-item">ID Card: </li>
                        <li class="list-group-item">Address: ....</li>
                        <li class="list-group-item">Email: </li>
                        <li class="list-group-item">Job</li>
                        <li class="list-group-item">Place of work:</li>
                    </ul>
                    <div class="card-body">
                        <h4 class="card-title">Academic</h4>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Campus: ${campusName}</li>
                        <li class="list-group-item">Roll number: ${acaStudent.rollNumber}</li>
                        <li class="list-group-item">Old RollNumber</li>
                        <li class="list-group-item">Membercode: ${acaStudent.memberCode}</li>
                        <li class="list-group-item">Enroll date: ${acaStudent.enrollDate}</li>
                        <li class="list-group-item">Mode: ${acaStudent.mode}</li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
