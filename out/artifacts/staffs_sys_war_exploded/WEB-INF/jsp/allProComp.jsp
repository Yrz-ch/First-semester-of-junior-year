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
    <title>个人绩效列表</title>
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
                    <small>绩效列表 —— 显示所有绩效</small>
                </h1>
            </div>
        </div>
    </div>





    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>员工编号</th>
                    <th>项目id</th>
                    <th>完成情况</th>
                    <th>价格</th>

                </tr>
                </thead>

                <tbody>
                <c:forEach var="proComp" items="${requestScope.get('list')}">
                    <tr>
                        <td>${proComp.getEid()}</td>
                        <td>${proComp.getPid()}</td>
                        <td>${proComp.getComplete()}</td>
                        <td>${proComp.getPrice()}</td>

                    </tr>
                </c:forEach>
                </tbody>
                <thead>
                <tr >
                    <td colspan="4" style="text-align: center;">合计</td>
                </tr>

                </thead>
                <tbody>
                <tr >
                    <td colspan="4"><div style="text-align: center;">${salary.getMoney()}</div></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div></body>
</html>
