<%--
  Created by IntelliJ IDEA.
  User: Yerz
  Date: 2020/12/30
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>首页</title>
  <style type="text/css">
    a {
      text-decoration: none;
      color: black;
      font-size: 20px;
    }
   /* h3 {
      width: 280px;
      height: 38px;
      margin: 100px auto;
      text-align: center;
      line-height: 38px;
      background: deepskyblue;
      border-radius: 4px;
    }*/
    /* 公共样式表css */
    html, body {
      color: #333;
      margin: 0;
      height: 100%;
      font-family: "Myriad Set Pro", "Helvetica Neue", Helvetica, Arial, Verdana, sans-serif;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      font-weight: normal;
    }
    * {
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
    }
    a {
      text-decoration: none;
      color: #000;
    }
    img {
      border: 0;
    }
    body {
      background-color:white;
      color: #666;
    }
    html, body, div, dl, dt, dd, ol, ul, li, h1, h2, h3, h4, h5, h6, p, blockquote, pre, button, fieldset, form, input, legend, textarea, th, td {
      margin: 0;
      padding: 0;
    }
    a {
      text-decoration: none;
      color: #08acee;
    }
    button {
      outline: 0;
    }
    img {
      border: 0;
    }
    button, input, optgroup, select, textarea {
      margin: 0;
      font: inherit;
      color: inherit;
      outline: none;
    }
    li {
      list-style: none;
    }
    a {
      color: #666;
    }
    a:hover {
      color: #eee;
    }
    .clearfix::after {
      clear: both;
      content: ".";
      display: block;
      height: 0;
      visibility: hidden;
    }
    .clearfix {
    }
    /* 必要布局样式css */
    .case-content-bg {
      padding-bottom: 0;
      height: 665px;
      background: url("./images/bg.png") no-repeat;
      background-size: cover;
      background-position: center 50%;
      -webkit-transition: all 1s;
      -moz-transition: all 1s;
      -ms-transition: all 1s;
      -o-transition: all 1s;
      transition: all 1s;
    }
    .case-content-info {
      background-position: center 10%;
      padding: 80px 0;
    }
    .case-box {
      width: 1180px;
      margin: 0 auto;
      position: relative;
    }
    .case-box-title {
      text-align: center;
      color: #fff;
      font-weight: normal;
      padding-bottom: 40px;
    }
    .case-box-title em {
      display: block;
      margin-bottom: 14px;
      font-style: normal;
      font-size: 30px;
      font-weight: normal;
    }
    .case-box-title span {
      font-size: 16px;
      opacity: .6;
      color: #fff;
      text-align: center;
    }
    .case-item {
      cursor: pointer;
      width: 280px;
      height: 390px;
      float: left;
      display: block;
      margin: 20px 0 0 0;
      position: relative;
      -webkit-transition: all 0.3s;
      -moz-transition: all 0.3s;
      -ms-transition: all 0.3s;
      -o-transition: all 0.3s;
      transition: all 0.3s;
      background-image: -webkit-linear-gradient(bottom, rgba(72, 72, 79, 0.3) 0%, #00316d 100%);
      background-image: -moz-linear-gradient(bottom, rgba(72, 72, 79, 0.3) 0%, #00316d 100%);
      background-image: -moz-linear-gradient(to top, rgba(72, 72, 79, 0.3) 0%, #00316d 100%);
      background-image: -o-linear-gradient(to top, rgba(72, 72, 79, 0.3) 0%, #00316d 100%);
      background-image: linear-gradient(to top, rgba(72, 72, 79, 0.3) 0%, #00316d 100%);
      background-repeat: repeat
    }
    .case-wrapper .case-item:hover {
      margin-top: 0;
      height: 430px;
      background-color: #2F4C90;
    }
    .case-item-bg1 {
      margin: auto;
      background: url(./images/case-logo001.png) no-repeat center;
      background-size: contain;
    }
    .case-item-bg2 {
      margin: auto;
      background: url(./images/case-logo002.png) no-repeat center;
      background-size: contain;
    }
    .case-item-bg3 {
      margin: auto;
      background: url(./images/case-logo003.png) no-repeat center;
      background-size: contain;
    }
    .case-item-bg4 {
      margin: auto;
      background: url(./images/case-logo004.png) no-repeat center;
      background-size: contain;
    }
    .case-item-bg {
      width: 100px;
      height: 100px;
      border-radius: 50px;
      margin-top: 50px;
    }
    .case-item-title {
      font-size: 25px;
      color: #fff;
      text-align: center;
      margin: 20px 0;
      line-height: 40px;
    }
    .case-item-text {
      font-size: 14px;
      color: #999999;
      line-height: 24px;
      height: calc(100% - 338px);
      margin: 0 30px;
      overflow: hidden;
    }
    .case-item-doc {
      padding: 20px 30px;
      width: 280px;
      bottom: 0;
      position: absolute;
      background: #27272e;
    }
    .case-item-doc p {
      line-height: 30px;
      margin: 0;
      font-size: 14px;
      color: #999999;
    }
    .case-item-doc p a {
      font-size: 14px;
      color: #fff;
      float: left;
      width: calc(50% - 1px);
    }
    .case-item-doc a+a::before {
      content: '|';
      float: left;
      color: rgba(102,102,102,0.6)
    }
    .case-wrapper .case-item+.case-item {
      margin-left: 20px;
    }
    .case-wrapper .case-item .case-item-doc a+a {
      text-align: right;
    }
    .case-wrapper .case-item a:hover {
      text-decoration: underline;
    }


  </style>
</head>


<body>
<div class="case-content-bg case-content-info">
  <div class="case-box">
    <h3 class="case-box-title">
      <em style="color:#000000">房地产项目设计流程管理系统</em>
    </h3>
    <div class="case-wrapper clearfix">
      <div class="case-item">
        <a href="/index2.jsp">
        <div class="case-item-bg case-item-bg1"></div>
        <div class="case-item-title">总控制台</br><br/></div>
        <div class="case-item-text">员工管理、账号管理及客户管理</div>
        <div class="case-item-doc">

        </div>
        </a>
      </div>


      <div class="case-item">
        <a href="/index3.jsp">
        <div class="case-item-bg case-item-bg2"></div>
        <div class="case-item-title">   前台  </br><br/></div>
        <div class="case-item-text">添加员工、添加用户</div>
        <div class="case-item-doc">

        </div>
        </a>
      </div>

      <div class="case-item">
        <a href="/index4.jsp">
        <div class="case-item-bg case-item-bg3"></div>
        <div class="case-item-title">普通员工</br><br/></div>
        <div class="case-item-text"></div>
        <div class="case-item-doc">

        </div>
        </a>
      </div>

      <div class="case-item">
        <a href="/index5.jsp">
        <div class="case-item-bg case-item-bg4"></div>
        <div class="case-item-title">工资管理</div>
        <div class="case-item-doc">

        </div>
        </a>
      </div>


    </div>
  </div>
</div>
<!--
<h3>
   <a href="/index2.jsp">总控制台</a></br><br/>
 <a href="/index3.jsp">  前台  </a></br><br/>
 <a href="/index4.jsp">普通员工</a></br><br/>
   <a href="/index5.jsp">工资管理</a>

</h3>-->
</body>
</html>
