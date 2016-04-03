<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <script src="library/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="signUpConfirmation.js" type="text/javascript"></script>
    <script src="functions.js" type="text/javascript"></script>
    <script src="semantic.js" type="text/javascript"></script>
    <link href="styles.css" type="text/css" rel="stylesheet"/>
    <link href="semantic.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div id="header">
    <%@ include file="header.jsp" %>
</div>
<div id="main">
    <div id="content" style="position: absolute; top: 50px; margin-left: 50px; width: 80%; max-width: 600px">
        <form action="login" method="post" class="ui form" id="loginForm">
            <div class="centerField">
                <label>Login</label>
                <input type="text" name="login" placeholder="Login">
            </div>
            <div class="centerField">
                <label>Password</label>
                <input type="password" name="password" placeholder="Password">
            </div>
            <button class="ui button" type="submit" style="width: 15%; float: right;">Login</button>
        </form>
    </div>
</div>
<div id="footer"></div>
</body>
</html>

