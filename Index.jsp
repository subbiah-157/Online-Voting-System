<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>
    <link rel="stylesheet" href="Style.css" class="css">
</head>

<body>
<nav>
        <h2>ONLINE VOTING SYSTEM</h2>
        <ul>
            <li><a href="Index.jsp">HOME</a></li>
            <li><a href="#">ABOUT</a></li>
            <li><a href="#">HELP</a></li>
        </ul>

        <form action="Login.jsp">
            <input type="submit" class="button" value = "LOGIN" >
            <button class="button1" type="submit" formaction="Signup.jsp">SIGN UP</button>
        
        </form>
    </nav>
</body>
</html>