<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增绩效</title>
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
                    <small>新增绩效</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/proComp/addProComp" method="post">
        <input type="hidden" name="eid" value="${id}"/>
        项目id：<input type="text" name="pid" required/><br/><br/><br/>
        完成百分比：<input type="text" name="complete" required/><br/><br/><br/>
        价格：<input type="text" name="price" required /><br/><br/><br/>
        <input type="submit" value="提交"/>
    </form>

</div>
</body>
</html>
