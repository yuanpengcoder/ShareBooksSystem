<%--
  Created by IntelliJ IDEA.
  User: LiuQuanwei
  Date: 2018/6/24
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <title>管理员借出图书</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/operatorShareBook.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div id="main">
        <form action="operatorBorrowBookAction" method="post" namespace="/bookManagement">
            <div>
                <label for="borrowCode">借阅码:</label>
                <input type="number" class="form-control" id="borrowCode" name="borrowCode">
            </div>
            <span class="text-danger"><s:property value="#session.operatorBorrowBookError"/></span>
            <div id="submitButton">
                <button type="submit" class="btn btn-primary" id="update">确定</button>
                <a class="btn btn-primary" href="operator_main.jsp" role="button" id="back">返回</a>
            </div>
        </form>
    </div>
    <% session.removeAttribute("operatorBorrowBookError"); %>
</body>
</html>
