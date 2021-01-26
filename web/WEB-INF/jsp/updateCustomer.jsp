<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
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
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/Customer/updateCustomer" method="post">
        <input type="hidden" name="cid" value="${customer.getCid()}"/>
        客户名称：<input type="text" name="cname" value="${customer.getCname()}"><br><br><br>
        客户一级单位：<input type="text" name="unit1" value="${customer.getUnit1()}"><br><br><br>
        客户二级单位：<input type="text" name="unit2" value="${customer.getUnit2()}"><br><br><br>
        电话：<input type="text" name="phone" value="${customer.getPhone()}"><br><br><br>
        qq：<input type="text" name="qq" value="${customer.getQq()}"><br><br><br>
        email：<input type="text" name="email" value="${customer.getEmail()}"><br><br><br>

        <input type="submit" value="提交"/>
    </form>

</div>
</body>
</html>