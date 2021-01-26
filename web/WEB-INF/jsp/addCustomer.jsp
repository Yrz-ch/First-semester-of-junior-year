<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增顾客</title>
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
                    <small>新增顾客</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/Customer/addCustomer" method="post">
        客户ID：<input type="text" name="cid" required><br><br><br>
        客户名称：<input type="text" name="cname" required><br><br><br>
        客户一级单位：<input type="text" name="unit1" required><br><br><br>
        客户二级单位：<input type="text" name="unit2" required><br><br><br>
        电话：<input type="text" name="phone" required><br><br><br>
        qq：<input type="text" name="qq" required><br><br><br>
        email：<input type="text" name="email" required><br><br><br>

        <input type="submit" value="添加">
    </form>

</div>
</body>
</html>
