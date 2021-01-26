<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="java.io.File" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h3>文件下载</h3>
<% String path = request.getSession().getServletContext().getRealPath("/files/");
    File file = new File(path);
    File[] fs = file.listFiles();
    for(File f:fs){
        if(!f.isDirectory()){
            String filename = f.getName();	//取出文件的名字(非绝对路径名)
%>
<a href="download?filename=${requestScope.pfile.file.originalFilename}"><%out.print(filename);%></a><br>
<%}
}%>
</body>
</html>