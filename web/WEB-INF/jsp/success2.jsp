<%--
  Created by IntelliJ IDEA.
  User: Yerz
  Date: 2021/1/3
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        a {
            text-decoration: none;
            color: black;
            font-size: 18px;
        }
        h3 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<h3>
    <a href="${pageContext.request.contextPath}/user/jumplogin">登录</a></br>
    <a href="${pageContext.request.contextPath}/staff/toAddStaff">添加员工</a></br>
    <a href="${pageContext.request.contextPath}/user/toAddUser">添加用户</a></br>
    <a href="${pageContext.request.contextPath}/index.jsp">首页</a>

</h3>

</body>
</html>
