<%--
  Created by IntelliJ IDEA.
  User: 孙卓
  Date: 2020/2/11
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>welcome</title>

</head>
<body>
<table>
<c:forEach items="${userloginloglist}" var="userloginlog">
    <tr>
        <td>${userloginlog.login_id}</td>
        <td>${userloginlog.user_id}</td>
        <td>${userloginlog.login_ip}</td>
        <td>${userloginlog.login_time}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
