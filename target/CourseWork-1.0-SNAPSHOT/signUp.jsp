<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <script src="library/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="signUpConfirmation.js" type="text/javascript"></script>
    <script src="functions.js" type="text/javascript"></script>
    <script src="library/jquery.validate.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <!--<script src="semantic.js" type="text/javascript"></script>-->
    <%--<link href="styles.css" type="text/css" rel="stylesheet"/>--%>
    <%--<link href="semantic.css" type="text/css" rel="stylesheet"/>--%>
</head>
<body>

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

<div id="main_container">
    <%@ include file="header.jsp" %>
    <div class="center_content">
        <div id="content" style= "margin-left: 50px; width: 80%; max-width: 600px">
            <form action="" method="post" class="ui form" id="signUpForm">
                <div class="field centerField">
                    <label for="login">Login</label>
                    <input type="text" id="login" name="login" placeholder="Login">
                </div>
                <div class="field leftField">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Password">
                </div>
                <div class="field rightField">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password">
                </div>
                <div id="passwordMessage"></div>
                <div class="field leftField">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" placeholder="First Name">
                </div>
                <div class="field rightField">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" placeholder="Last Name">
                </div>
                <button class="ui button" type="submit" style="width: 15%; float: right;">Submit</button>
                <div style="clear:both;"></div>
            </form>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>