<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增用户</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增账户</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/user/addUser" method="post">
        员工ID：<input type="text" name="eid" required><br><br><br>
        员工账号：<input type="text" name="account" required><br><br><br>
        员工账号密码：<input type="text" name="pwd" required><br><br><br>
        <input type="submit" value="添加">
    </form>

</div>
</body>
</html>
