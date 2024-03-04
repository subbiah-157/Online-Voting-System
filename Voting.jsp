<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <style>
* {
margin: 0;
padding: 0;
box-sizing: border-box;
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
        .container {
            width: 100%;
            height: 100px;
            display: flex;
            justify-content: center;
            
        }
        .card {
            width: 250px;
            height: 370px;
            background-color: #121211;
            margin: 20px;
            border-radius: 5px;
            text-align: center;
            text-color:white;
            margin: 13% auto;
           border: 5px solid white;
        }
        .card h1{
            font-size: 4rem;
        }
        .card label{
            color: gray;
            margin: 50px 0;
        }
        .card:hover{
            box-shadow: 2px 2px 35px black;       
        }
        .card button {
            padding: 10px 30px;
            border-radius: 20px;
            background-color: rgb(23, 233, 30);
            border: none;
            font-weight: bold;
            color: black;

        }
        .i{
        color:white;
        }
        .card button:hover{
           background-color: white;
}
    body {
  background-image: url("Images/voting1.webp");
  background-size: cover;
  background-attachment: fixed;
  background-repeat: no-repeat;
}
.img{
border: 5px solid white;
}
.1{
border: 5px solid white;
}
label{
color:white;
}
    </style>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VOTING</title>
</head>
<body>
    <nav>
        <h2>ONLINE VOTING SYSTEM</h2>
        <ul>
            <li><a href="Index.jsp">HOME</a></li>
            <li><a href="#">ABOUT</a></li>
            <li><a href="#">HELP</a></li>
        </ul>
    </nav>
    <center>
    <form action="VotingServlet" method="post" class="f1">
    <div class="bg">
    <div class="container">
        <div class="card">
        <br>
            <img alt="Modi" src="Images/Modi.jpg" height="240px" width="200px" class="img">
            <label class="i" style="color:white">Narendra Modi Ji</label><br>
            <br>
            <button value="Narendra modi" name="candidates">Vote</button>
        </div>
        <div class="card">
        <br>
               <img alt="Modi" src="Images/Stalin.jpg" height="240px" width="200px" class="img">
               <br>
            <label class="i" style="color:white"> M k Stalin</label><br>
            <br>
                <button value="Stalin" name="candidates">Vote</button>
        </div>
        <div class="card">
        <br>
            <img alt="Modi" src="Images/edappadi.jpg" height="240px" width="200px" class="img">
            <br>
            <label class="i" style="color:white">Edappadi K. Palaniswami</label><br>
            <br>
                <button value="Edappadi" name="candidates" >Vote</button>
        </div>
        <div class="card">
        <br>
                <img alt="Modi" src="Images/ragupathi.jpg" height="240px" width="200px" class="img">
                <br>
            <label class="i" style="color:white">Regupathy S</label><br>
            <br>
                <button value="Ragupathy" name="candidates">Vote</button>
        </div>
    </div>
    </div>
    </form>
    </center>
</body>
</html>