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
    <title>员工列表</title>
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
                    <small>账户列表 —— 显示所有账户</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/toAddUser">新增</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/allUser">显示全部账户</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/logout">注销账号</a>


        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <%-- 查询书籍--%>
            <form action="${pageContext.request.contextPath}/user/queryUser" method="post" style="float: right">
                <span style="color: red; font-weight: bold">${error}</span>
                <input type="text" name="eid" class="form-color" placeholder="请输入要查询账户的人员id">
                <input type="submit" value="查询" class="btn btn-primary">
            </form>
        </div>
    </div>



    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>员工编号</th>
                    <th>员工账户</th>
                    <th>员工密码</th>

                </tr>
                </thead>

                <tbody>
                <c:forEach var="user" items="${requestScope.get('list')}">
                    <tr>
                        <td>${user.getEid()}</td>
                        <td>${user.getAccount()}</td>
                        <td>${user.getPwd()}</td>

                        <td>
                             |
                            <a href="${pageContext.request.contextPath}/user/del?id=${user.getEid()}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div></body>
</html>
