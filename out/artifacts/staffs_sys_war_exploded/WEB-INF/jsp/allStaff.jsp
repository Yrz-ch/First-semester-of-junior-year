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
                    <small>员工列表 —— 显示所有员工</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/staff/toAddStaff">新增</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/staff/allStaff">显示全部员工</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/index.jsp">返回首页</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/logout">注销账号</a>

        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <%-- 查询书籍--%>
            <form action="${pageContext.request.contextPath}/staff/queryStaff" method="post" style="float: right">
                <span style="color: red; font-weight: bold">${error}</span>
                <input type="text" name="queryStaffName" class="form-color" placeholder="请输入要查询人员的名称">
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
                    <th>员工名字</th>
                    <th>员工职位</th>

                </tr>
                </thead>

                <tbody>
                <c:forEach var="staff" items="${requestScope.get('list')}" varStatus="index">
                    <tr>
                        <td>${staff.getEid()}</td>
                        <td>${staff.getEname()}</td>
                        <c:choose>
                            <c:when test="${2 eq staff.getPower() }"><td>主管</td>></c:when>
                            <c:otherwise>  </c:otherwise>

                        </c:choose>
                        <c:choose>

                            <c:when test="${3 eq staff.getPower() }"><td>普通员工</td>></c:when>
                            <c:otherwise> </c:otherwise>
                        </c:choose>

                        <c:choose>

                            <c:when test="${4 eq staff.getPower() }"><td>前台</td>></c:when>
                            <c:otherwise> </c:otherwise>
                        </c:choose>

                        <td>
                            <a href="${pageContext.request.contextPath}/staff/toUpdateStaff?id=${staff.getEid()}">更改</a>
                            <a href="${pageContext.request.contextPath}/staff/del?id=${staff.getEid()}">删除</a>
                            <a href="${pageContext.request.contextPath}/proComp/toAddProComp?id=${staff.getEid()}">增加绩效</a>
                            <a href="${pageContext.request.contextPath}/proComp/allProComp?id=${staff.getEid()}">查看绩效</a>


                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div></body>
</html>
