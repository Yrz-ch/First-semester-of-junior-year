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
    <title>Title</title>
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
    <%
        HttpSession httpSession= request.getSession();
        Object id = httpSession.getAttribute("id");
    %>
    <a href="${pageContext.request.contextPath}/proComp/allProComp?id=<%=id%>">显示个人绩效</a></br><br/>

</h3>
</body>
</html>
