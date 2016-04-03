<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <script src="library/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="signUpConfirmation.js" type="text/javascript"></script>
    <script src="functions.js" type="text/javascript"></script>
    <!--<script src="semantic.js" type="text/javascript"></script>-->
    <link href="styles.css" type="text/css" rel="stylesheet"/>
    <link href="semantic.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div id="header">
    <%@ include file="header.jsp" %>


    <script>
        $(document).ready(function () {
            <c:if test="${!empty sessionScope.firstName}">
            var firstName = "${sessionScope.firstName}";
            var lastName = "${sessionScope.lastName}";
            </c:if>
            if (firstName && lastName) {
                alert(firstName + " " + lastName);
            }
        });

    </script>

</div>
<div id="main">
    <div id="content" style="position: absolute; top: 50px; margin-left: 50px; width: 80%; max-width: 600px">
        <form action="signUp" method="post" class="ui form" id="signUpForm">
            <div class="centerField">
                <label>Login</label>
                <input type="text" name="login" placeholder="Login">
            </div>
            <div class="leftField">
                <label>Password</label>
                <input type="password" name="password" placeholder="Password">
            </div>
            <div class="rightField">
                <label>Confirm Password</label>
                <input type="password" name="confirmPassword" placeholder="Confirm Password">
            </div>
            <div id="passwordMessage"></div>
            <div class="leftField">
                <label>First Name</label>
                <input type="text" name="firstName" placeholder="First Name">
            </div>
            <div class="rightField">
                <label>Last Name</label>
                <input type="text" name="lastName" placeholder="Last Name">
            </div>
            <button class="ui button" type="submit" style="width: 15%; float: right;">Submit</button>
        </form>
    </div>
</div>
<div id="footer"></div>
</body>
</html>