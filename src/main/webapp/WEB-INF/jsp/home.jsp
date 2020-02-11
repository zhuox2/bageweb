<%--
  Created by IntelliJ IDEA.
  User: 孙卓
  Date: 2020/2/11
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.staticfile.org/react/16.4.0/umd/react.development.js"></script>
<script src="https://cdn.staticfile.org/react-dom/16.4.0/umd/react-dom.development.js"></script>
<script src="https://cdn.staticfile.org/babel-standalone/6.26.0/babel.min.js"></script>


<html>
<head>
    <title>home</title>
</head>
<body>
<div id="example"></div>

<script type="text/babel">

    ReactDOM.render(
        <div>
                <ul>
                    <li>
                        <a href="register">register</a>
                    </li>
                    <li>
                        <a href="login">login</a>
                    </li>
                </ul>
        </div>
        ,
        document.getElementById("example"))

</script>
</body>
</html>
