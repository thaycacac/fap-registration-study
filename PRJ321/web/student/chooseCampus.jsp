<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FPT University</title>
        <link href="../myStyle.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="container-form">
                <h1>FPT University</h1>
                <p>FPT University opens its Enrollment page for students to register their study campus and their specialization.</p>
                <hr>
                <form action="ChooseCampusServlet" method="POST">
                    <div class="form-group">
                        <label>Select Campus</label>
                        <select class="form-control" name="campus">
                            <option value="8">FU-Hòa Lạc</option>
                            <option value="9">FU-Hồ Chí Minh</option>
                            <option value="10">FU-Đà Nẵng</option>
                            <option value="11">FU-Cần Thơ</option>
                            <option value="12">MSE</option>
                            <option value="13">FE-LAO</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary my-botton">Next</button>
                </form>
            </div>
        </div>
    </body>
</html>
