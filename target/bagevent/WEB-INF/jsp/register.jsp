<%--
  Created by IntelliJ IDEA.
  User: 孙卓
  Date: 2020/2/11
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <script src="https://cdn.staticfile.org/react/16.4.0/umd/react.development.js"></script>
    <script src="https://cdn.staticfile.org/react-dom/16.4.0/umd/react-dom.development.js"></script>
    <script src="https://cdn.staticfile.org/babel-standalone/6.26.0/babel.min.js"></script>
    <script>
    function x() {
        if(document.getElementById("user_name").value==""){
            alert("请输入用户名");
        }else if(document.getElementById("password").value==""){
            alert("请输入密码");
        }else if(document.getElementById("cellphone").value==""&&document.getElementById("email").value==""){
            alert("请输入账户或邮箱");
        }
    }

</script>
</head>
<body>
    <form method="post" action="user_add" >
        user_name:<input name="user_name" id="user_name"  type="text" >
        email:<input  name="email" type="text" id="email">
        cellphone:<input  name="cellphone" type="text" id="cellphone">
        password:<input  name="password" type="password" id="password">
        salt:<input  name="salt" type="text" >

        <input type="submit" value="submit" id="submit" onclick="x()">
    </form>
<div id="example"></div>
<script type="text/babel">
    const element=(
        <div>
            <form method="post" action="user_add" >
                user_name:<input name="user_name" id="user_name"  type="text" >
                email:<input  name="email" type="text" id="email">
                cellphone:<input  name="cellphone" type="text" id="cellphone">
                password:<input  name="password" type="password" id="password">
                salt:<input  name="salt" type="text" >

                <input type="submit" value="submit" id="submit" onclick="x()">
            </form>
        </div>
    )
    ReactDOM.render(
    register,
    document.getElementById('example')
    );
</script>
</body>
</html>
