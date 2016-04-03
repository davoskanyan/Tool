<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
<div style="float: left">
    <a class="logo" href="index.jsp"></a>
</div>
<div style="float: left; margin-left: 30px;">
    <h1>This is not google</h1>
</div>
<c:if test="${!empty sessionScope.firstName}">
    <div style="float: right; margin-right: 30px; top: 60px; position: relative">
        <div class="ui very relaxed horizontal list">
            <div class="item">
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
    <div style="float: right; margin-right: 30px; top: 60px; position: relative">
        <div class="ui very relaxed horizontal list">
            <div class="item">
                <div class="content">
                    <a href="signUp.jsp">Sign Up</a>
                </div>
            </div>
            <div class="item">
                <div class="content">
                    <a href="login.jsp">Login</a>
                </div>
            </div>
        </div>
    </div>
    </div>
</c:if>
<div>
    <div style="float: left; margin-left: 30px; top: 60px; position: relative">
        <div class="ui very relaxed horizontal list">
            <div class="item">
                <div class="content">
                    <a href="index.jsp">Home</a>
                </div>
            </div>
            <div class="item">
                <div class="content">
                    <a href="test.jsp">Test</a>
                </div>
            </div>
            <div class="item">
                <div class="content">
                    <a href="documentation.jsp">Documentation</a>
                </div>
            </div>
        </div>
    </div>
</div>