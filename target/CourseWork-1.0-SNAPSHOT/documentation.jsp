<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <script src="library/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="signUpConfirmation.js" type="text/javascript"></script>
    <script src="functions.js" type="text/javascript"></script>
    <script src="semantic.js" type="text/javascript"></script>
    <link href="style.css" type="text/css" rel="stylesheet"/>
    <%--<link href="semantic.css" type="text/css" rel="stylesheet"/>--%>
</head>
<body>
<div id="main_container">
    <%@ include file="header.jsp" %>
    <div class="center_content">
        <div style="padding-left: 10px">
            <h1>
                Here will be documentation
            </h1>
            <c:if test="${!empty sessionScope.firstName}">
                <c:if test="${sessionScope.role < 1}">
                    <span>only admin can see this</span>
                    <br/>
                </c:if>
                <span>only registered users can see this</span>
                <br/>
            </c:if>
            <span>everyone can see this</span>
            <br/>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>