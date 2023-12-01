<%@ page import="java.util.List" %>
<%@ page import="com.example.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users list</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Super app!</h1>
</div>

<div class="w3-container w3-center w3-margin-bottom w3-padding">
    <div class="w3-card-4">
        <div class="w3-container w3-light-blue">
            <h2>Users</h2>
        </div>
        <% List<User> names = (List<User>) request.getAttribute("userNames");%>

        <div class="w3-ul"></div>
        <%
            if (names != null && !names.isEmpty()) {
                for (User s : names) {
        %>
        <%= s.getName()  %>
        <div class="w3-hover-sand"></div>
        <br>
        <%}%>
        <%} else {%>
        <h1>There are no users yet!</h1>
        <% }%>
        <div class="w3-panel w3-red w3-display-container w3-card-4 w3-round">
            <span onclick=this.parentElement.style.display='none'>
             <div class="w3-button w3-margin-right w3-display-right w3-round-large w3-hover-red w3-border w3-border-red w3-hover-border-grey\">
           </div>
            </span>
        </div>
    </div>
</div>

<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
    <button class="w3-btn w3-round-large" onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>