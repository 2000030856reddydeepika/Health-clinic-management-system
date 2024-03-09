<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">









<style>
  nav{
    display: flex;
    padding: 2% 6%;
    justify-content: space-between;
    align-items: center;
}
nav img{
    width: 100px;
}
/*for moving the alignments from left to right*/
.styled-table {
    border-collapse: collapse;
    margin: px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    
}
.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}

.nav-links{
    flex: 1; 
    text-align: center;
}
.nav-links ul li{
    list-style:none;
    display: inline-block;
    padding: 8px 12px; 
    position: relative;
}
.nav-links ul li a{
    color:#009879;
    text-decoration:none;
    font-size: 13px;
        font-size: 25px;
    
}
/*for underlines of home...*/
.nav-links ul li::after{ 
    content:'';
    width: 0%;
    height:2px;
    background: #009879;
    display:block;
    margin:auto;
    transition: 0.5s;
}
/*when we move the cursor on home the underline will be appeared*/
.nav-links ul li:hover::after{
    width:100%
}
</style>
</head>
<body>

<h1 align=center> </h1>


 <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0"><span class="text-primary">E</span>COURSES</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav py-0">
                            <a href="adminhome" class="nav-item nav-link active">Home</a>
                            <a href="login" class="nav-item nav-link">Logout</a>
                          
                            
                                                       
                
                </nav>
            </div>
    






<table align=center class="styled-table">
    <thead>
       
    </thead>
    <tbody>
        <tr><th>ID:</th>&nbsp;<td>${doctorlist.id}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${doctorlist.name}</td></tr>
<tr><th>Gender:</th>&nbsp;<td>${doctorlist.gender}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${doctorlist.emailid}</td></tr>
<tr><th>Experience:</th>&nbsp;<td>${doctorlist.experience}</td></tr>
<tr><th>Specialization:</th>&nbsp;<td>${doctorlist.specialization}</td></tr>
<tr><th>Username:</th>&nbsp;<td>${doctorlist.username}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${doctorlist.contactno}</td></tr>
        <!-- and so on... -->
    </tbody>
</table>



</body>
</html>

 
