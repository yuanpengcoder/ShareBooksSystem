<%--
  Created by IntelliJ IDEA.
  User: LiuQuanwei
  Date: 2018/6/5
  Time: 23:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.sharebookssystem.model.User" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/UserInfor.css"/>
    <link rel="stylesheet" href="css/fixed.css"/>

    <style type="text/css">
        #container{
            background:url("img/UserBg.jpg") center center fixed no-repeat;
            -webkit-background-size:cover;
            background-attachment:fixed;
            background-position: center center;
        }
    </style>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<body>
<script type="text/javascript" src="js/bootstrap.min.js" ></script>
<script src="js/homepage.js"></script>
<script>
    var strSession = "<%=session.getAttribute("succcessRegister") %>".toString();
    if( strSession == ""||strSession=="null") {
    }
    else {
        alert(strSession);
        <%  session.removeAttribute("succcessRegister");%>
    }
</script>

<s:include value="newNav.jsp"></s:include>


<%--<div id="naver" >--%>

    <%--<img src="img/logo.png"/>--%>
    <%--<div id="logo_text"><a href="aheadhome.jsp"><span>&nbsp;HIMB</span></a></div>--%>
    <%--<ul id="flex_naver" class="navbar-nav ">--%>
        <%--<li id="serch_nav">--%>
            <%--<form class="form-inline my-2 my-lg-0 nav_form" action="../bookUser/getCheckBookAction.action"  method="post">--%>
                <%--<input class="form-control mr-sm-2 " type="search" placeholder="书名/作者"--%>
                       <%--aria-label="Search" name="check_data">--%>
                <%--<button  class="nav_ss "  type="submit">--%>
                    <%--&lt;%&ndash;<img  src="image/nav_serch.png" style="width:20px; height:20px;">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</img>&ndash;%&gt;--%>
                <%--</button>--%>
            <%--</form>--%>
        <%--</li>--%>
        <%--<li class="nr dropdown"  onmouseover="nrselect(this)"  onmouseleave="nrleave(this)"><a class="dropdown-toggle" href="#" data-toggle="dropdown"><span>图书</span>--%>
            <%--&lt;%&ndash;<img  style="width: 10px;height: 10px" src="img/bot_logo.png" />&ndash;%&gt;--%>
        <%--</a>--%>
            <%--<ul  class="dropdown-menu " role="menu">--%>
                <%--<li><a href="borrows.jsp">已借图书</a></li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li><a href="">个人图书</a></li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li><a class="btn-group" href="">添加图书</a></li>--%>
            <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="nr dropdown" onmouseover="nrselect(this)"  data-toggle="dropdown" onmouseleave="nrleave(this)">--%>
            <%--<a class="dropdown-toggle" href="#" data-toggle="dropdown"><span>个人信息</span>--%>
            <%--&lt;%&ndash;<img  style="width: 10px;height: 10px" src="img/bot_logo.png" />&ndash;%&gt;--%>
        <%--</a>--%>
            <%--<ul class="dropdown-menu">--%>
                <%--<li><a href="UserInfor.jsp">个人中心</a></li>--%>
                <%--<li class="divider"></li>--%>

                <%--<li><a href="ChangePerson.jsp">管理信息</a></li>--%>
            <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="nr" onmouseover="nrselect(this)" onmouseleave="nrleave(this)">--%>
            <%--<a href="">借阅车</a>--%>
        <%--</li>--%>
    <%--</ul>--%>
<%--</div>--%>
<div id="container">
    <div id="container_main">
        <div id="container_main_head">
            <div id= "c_m_t"><% User u=(User) session.getAttribute("user"); %>
                <span><%=u.getUserName()%></span><p>Welcome</p>
            </div>
            <div id="main_na">
                <img src="img/UserInNa.jpg" />
            </div>

        </div>
        <div id="container_main_info">
            <div class="info_groups">
                <div class="col-sm-3 info_group">
                    <span class="g_title">用户名</span>
                    <span><%=u.getUserAccount()%></span>
                </div>
                <div class="col-sm-3 info_group">  <span class="g_title">学号</span>
                    <span><%=u.getUserIdentity()%></span></div>
                <div class="col-sm-3 info_group">  <span class="g_title">性别</span>
                    <span><%=u.getUserGender()%></span></div>
            </div>
            <div class="info_groups">
                <div class="col-sm-3 info_group">
                    <span class="g_title">年龄</span>
                    <span><%=u.getUserAge()%></span>
                </div>
                <div class="col-sm-3 info_group">  <span class="g_title">权限</span>
                    <span><%=u.getUserPermission()%></span></div>
                <div class="col-sm-3 info_group">  <span class="g_title">邮箱</span>
                    <span><%=u.getUserEmail()%></span></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
