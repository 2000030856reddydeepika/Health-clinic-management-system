<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Project</title>
    <style>
        .navbar{
            background-color: black;
            border-radius: 30px;
            
        }
        .navbar ul{
            overflow: auto;
        }
        .navbar li{
            float:left; 
            list-style: none; 
            margin: 13px 20px;
            
        }
        .navbar li a{
            padding: 3px 3px;
            text-decoration: none;
            color: white;
        }
        .navbar li a:hover{
            color: red
        }
        .search{
            float: right;
            color: white;
            padding: 12px 75px;
        }
        .navbar input{
            border: 2px solid black;
            border-radius: 14px;
            padding: 3px 17px;
            width: 129px;
        }
    </style>
</head>

<body>

<h2 align="center">Product Management System</h2>

    <header>
        <nav class="navbar">
            <ul>
                <li><a href="adminhome">Home</a></li>
                 <li><a href="login">Logout</a></li>
            </ul>
        </nav>
    </header>
    <br><br>
    
    <form:form method="post" action="displayhospital">
    <table align="center">
    
    <tr>
    <td>Select ID:</td>
    <td>
    <select name="hid" required>
    <c:forEach items="${hospitallist}" var="hospital">
<option value="${hospital.id}">${hospital.id}</option>

</c:forEach>
</select>
    </td>
    </tr>
    <tr>
    <td colspan="2">
    <input type="submit" value="View">
    </td>
    </tr>
    
    </table>
    </form:form>
   
</body>

</html>
