<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<style>
*
{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
    body {
  background-image: url("Images/6386.jpg");
  background-size: cover;
  background-attachment: fixed;
  background-repeat: no-repeat;
}
nav {
    display: flex;
    background-color: black;
    color: white;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
}
nav ul {
    display: flex;
}
nav ul{
    list-style-type: none;
}
nav ul li{
    margin: 0 10px;
    padding: 10px 20px;
}
nav ul li a{
    text-decoration: none;
    color: white;
}
nav ul li a:hover{
    color: yellow;
}
.form1{
    position: absolute;
    text-color:black;
    right: 550px;
    top: 120px;
    width: 25rem;
    height: 28rem;
    display: flex;
    flex-direction: column;
    background: rgba(255,255,255,0.06);
    box-shadow: 0 8px 32px 0 rgba(31,38,135,.37);
    border-radius: 30px;
    border-left: 1px solidegba(255,255,255,.3);
    border-top: 1px solidegba(255,255,255,.3);
    background-image: url("Images/vote.jpeg");
  background-size: cover;
  border-style: solid;
  border-color: white;
}

h1{
    font-size: 50px;
    text-align: center;
    color: white;
    text-shadow: 2px 2px 4px rgba(0,0,0,.2);
    letter-spacing: 3px;
    margin-bottom: -5;
    opacity: .7;
}
label{
    font-size: 20px;
    color: white;
    margin-left: 10%;
    opacity: .8;
    text-shadow: 2px2px 4px rgba(0,0,0,.2);
}
input{
    width: 80%;
    margin: 5% auto;
    margin-bottom: 8%;
    border: none;
    outline: none;
    background: transparent;
    color: white;
    border-bottom: 1px solid rgba(255,255,255,0.6);
    opacity: .8;
}
button{
    font-size: 20px;
    width: 50%;
    margin: 3% auto;
    color: white;
    opacity: .7;
    background: rgba(255,255,255,0.06);
    padding: 10px 30px;
    border: none;
    outline: none;
    border-radius: 20px;
    text-shadow: 2px 2px 4px rgba(255,255,255,0.2);
    box-shadow: 3px 3px 5px rgba(31,38,135,.37);
    border-left: 1px solid rgba(255,255,255,.3);
    border-top: 1px solid rgba(255,255,255,.3);
}
button:hover{
    color: white;
    font-weight: bold;
    background-color: magenta;
}
a{
    font-size: 16px;
    text-align: center;
    color: white;
    opacity: .7;
}
a1{
    font-size: 20px;
    text-align: center;
    color: white; 
    margin: 19% auto;
    margin-bottom: 9%;  
}

</style>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <link rel="stylesheet" href="Login" class="css">
</head>
<body>
 <form action = "LoginServlet" method = "post">
        <nav >
            <h2>ONLINE VOTING SYSTEM</h2>
            <ul>
                <li><a href="Index.jsp">HOME</a></li>
                <li><a href="#">ABOUT</a></li>
                <li><a href="#">HELP</a></li>
            </ul>
        </nav>
        <div class="form1">
        <h1>LOGIN</h1>
        <label>Username</label>
        <input type="text" name ="Username">
        <label>Password</label>
        <input type="password" name ="Password" required>
        <button style="font-weight: bold">Login</button>
        <a><a href="Forget.html">Forget Password?</a></a>
    <!--
        <button class="signin"><a href="Homepage.html">Back</a></button>
    -->
        <a1><a href="Index.jsp">Back</a></a1>
    </div>
    </form>
</body>
</html>