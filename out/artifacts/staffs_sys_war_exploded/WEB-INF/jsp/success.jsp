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
            width: 500px;
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
<%--    <a href="${pageContext.request.contextPath}/book/allBook">点击进入书籍页面列表</a><br/><br/><br/>--%>
    <a href="${pageContext.request.contextPath}/staff/allStaff">点击进入员工页面列表</a><br/><br/>
    <a href="${pageContext.request.contextPath}/user/allUser">点击进入账号管理页面列表</a><br/><br/>
    <a href="${pageContext.request.contextPath}/Customer/allCustomer">点击进入客户管理页面列表</a><br/><br/>
    <a href="${pageContext.request.contextPath}/file/toupload">上传文件</a><br/><br/>
    <a href="${pageContext.request.contextPath}/file/todownload">下载文件</a><br/><br/>
    <a href="${pageContext.request.contextPath}/user/jumplogin">登录</a></br></br>
    <a href="${pageContext.request.contextPath}/index.jsp">首页</a>



</h3>
</body>
</html>