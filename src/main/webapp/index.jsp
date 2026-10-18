<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.sendRedirect(request.getContextPath() + "/customers");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hiển thị danh sách khách hàng</title>
</head>
<body>
    <p>Đang chuyển hướng tới danh sách khách hàng... <a href="customers">Bấm vào đây nếu không tự chuyển hướng</a></p>
</body>
</html>
