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
        .button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date],input[type=file],textarea
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}

    </style>
</head>

<body>


    <header>
        <nav class="navbar">
            <ul>
                <li><a href="patienthome">Home</a></li>
                <li><a href="login">Logout</a></li>
            </ul>
        </nav>
    </header>
    
<br><br>

<h3 align=center><u>Add Appointment</u></h3>

<br>

<form action="insertappointment" method="post" enctype="multipart/form-data">

<table align=center>


<tr>
<td><label>Hospital Name</label></td>
<td>
<select name="hospitalname" required="required">
<option value="-1">---Select---</option>
<option value="Aayush Hospitals">Aayush Hospitals</option>
<option value="Andhra Hospitals">Andhra Hospitals</option>
<option value="Anu Hospitals">Anu Hospitals</option>
<option value="Apollo Hospitals">Apollo Hospitals</option>
<option value="Capital Hospitals">Capital Hospitals</option>
<option value="Kamineni Hospitals">Kamineni Hospitals</option>
<option value="KIMS Hospitals">KIMS Hospitals</option>
<option value="Manipal Hospitals">Manipal Hospitals</option>
<option value="Ramesh Hospitals">Ramesh Hospitals</option>
</select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Specialist</label></td>
<td>
<select name="specialist" required="required">
<option value="-1">---Select---</option>
<option value="Epidemiologist">Epidemiologist</option>
<option value="Podiatrist">Podiatrist</option>
<option value="Audiologist">Audiologist</option>
<option value="General practitioner">General practitioner</option>
<option value="Pediatrician">Pediatrician</option>
<option value="Obstetrics and gynecology physician">Obstetrics and gynecology physician</option>
<option value="Oncologist">Oncologist</option>
<option value="Dentist"> Dentist</option>
<option value="Neonatologist">Neonatologist</option>
<option value="Orthopedist">Orthopedist</option>
<option value="Surgeon">Surgeon</option>
<option value="Neurologist">Neurologist</option>
<option value="Urologist">Urologist</option>
<option value="Dermatologist">Dermatologist</option>
<option value="Plastic surgeon">Plastic surgeon</option>
<option value="Psychiatrist">Psychiatrist</option>
</select>
</td>
</tr>


<tr><td></td></tr>

<tr>
<td><label>Problem</label></td>
<td>
<textarea name="problem"></textarea>
</td>
</tr>

<tr>
<td><label>Date</label></td>
<td colspan=2><input type="date" value="date" ></td>
</tr>


<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Book" class="button"></td>
</tr>

</table>

</form>
    
    
</body>

</html>
