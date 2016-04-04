<%--
  Created by IntelliJ IDEA.
  User: Voskanyan
  Date: 4/3/2016
  Time: 12:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div id="header" style="float:left">
    <div class="logo"><img src="images/logo.gif" border="0" alt=""/></div>
</div>
<div id="hello">
    <c:if test="${!empty sessionScope.firstName}">
        <div>
            <div>
                <div class="">
                    <span>Hello ${sessionScope.firstName} ${sessionScope.lastName}</span>
                </div>
                <div class="item">
                    <div class="content">
                        <a href="signOut">Sign Out</a>
                    </div>
                </div>
            </div>
        </div>
    </c:if>
    <c:if test="${empty sessionScope.firstName}">
        <div>
            <div class="header-item">
                <a class="header-link" href="signUp.jsp">Sign Up</a>
            </div>
            <div class="header-item">
                <a class="header-link" href="login.jsp">Login</a>
            </div>
        </div>
    </c:if>
</div>
<div class="menu">
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="test.jsp">Test</a></li>
        <li><a href="documentation.jsp">Documentation</a></li>
    </ul>
</div>
</body>
</html>
