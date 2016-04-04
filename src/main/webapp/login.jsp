<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <script src="library/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="signUpConfirmation.js" type="text/javascript"></script>
    <script src="functions.js" type="text/javascript"></script>
    <script src="semantic.js" type="text/javascript"></script>
    <link href="style.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div id="main_container">
    <%@ include file="header.jsp" %>
    <div class="center_content">
        <div id="content" style="margin-left: 50px; width: 80%; max-width: 600px">
            <form action="login" method="post" class="ui form" id="loginForm">
                <div class="field centerField">
                    <label>Login</label>
                    <input type="text" name="login" placeholder="Login">
                </div>
                <div class="field centerField">
                    <label>Password</label>
                    <input type="password" name="password" placeholder="Password">
                </div>
                <button class="ui button" type="submit" style="width: 15%; float: right;">Login</button>
                <div style="clear: both"></div>
            </form>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>

