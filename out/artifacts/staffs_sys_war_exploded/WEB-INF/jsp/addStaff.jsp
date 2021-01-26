<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增员工</title>
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
                    <small>新增员工</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/staff/addStaff" method="post">
        员工ID：<input type="text" name="eid" required><br><br><br>
        员工名称：<input type="text" name="ename" required><br><br><br>
        员工职位代码：<input type="text" name="power" required><br><br><br>
        <span style="color: gray; font-weight: bold">1:ceo 2:主管 3:普通员工</span>
        <input type="submit" value="添加">
    </form>

</div>
</body>
</html>
