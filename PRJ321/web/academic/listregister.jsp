<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Register</title>
        <link href="../myStyle.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="container-form">
                <h1>List Student </h1>
                <hr>
                <ul class="list-group">
                    <c:forEach var="student" items="${listRegister}">
                        <form>
                            <li class="list-group-item">${student.firstName} ${student.lastName}
                                <button type="submit" class="btn btn-info">Info</button>
                            </li>
                        </form>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </body>
</html>
