<%--
  Created by IntelliJ IDEA.
  User: Yerz
  Date: 2020/12/30
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>客户列表</title>
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
                    <small>客户列表 —— 显示所有客户</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/Customer/toAddCustomer">新增</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/Customer/allCustomer">显示全部员工</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/index.jsp">返回首页</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/logout">注销账号</a>

        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <%-- 查询书籍--%>
            <form action="${pageContext.request.contextPath}/Customer/queryCustomer" method="post" style="float: right">
                <span style="color: red; font-weight: bold">${error}</span>
                <input type="text" name="queryCustomerName" class="form-color" placeholder="请输入要查询人员的名称">
                <input type="submit" value="查询" class="btn btn-primary">
            </form>
        </div>
    </div>



    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>客户编号</th>
                    <th>客户名字</th>
                    <th>客户一级单位</th>
                    <th>客户二级单位</th>
                    <th>电话</th>
                    <th>qq</th>
                    <th>email</th>

                </tr>
                </thead>

                <tbody>
                <c:forEach var="customer" items="${requestScope.get('list')}">
                    <tr>
                        <td>${customer.getCid()}</td>
                        <td>${customer.getCname()}</td>
                        <td>${customer.getUnit1()}</td>
                        <td>${customer.getUnit2()}</td>
                        <td>${customer.getPhone()}</td>
                        <td>${customer.getQq()}</td>
                        <td>${customer.getEmail()}</td>




                        <td>
                            <a href="${pageContext.request.contextPath}/Customer/toUpdateCustomer?id=${customer.getCid()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/Customer/del?id=${customer.getCid()}">删除</a>

                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div></body>
</html>
