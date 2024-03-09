<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    



<!DOCTYPE html>
<html lang="en">
<head>
   <!-- Design by foolishdeveloper.com -->
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->


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

</head>
<body>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
<div class="con">


    <h1 align=center>Hospitals Avalilable</h1>
    
<div class="col-lg-14">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0"><span class="text-primary"></span></h1>
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

    

<table align=center border=2 class="table table-dark table-striped">

<tr>

<th>ID</th>
<th>Image</th>
<th>Hospital Name</th>
<th>Specialist</th>
<th>Specialist Name</th>
<th>Description</th>
<th>Action</th>

</tr>

<c:forEach items="${hospitallist}" var="hospital">

<tr>

<td> <c:out value="${hospital.id}"></c:out>  </td>
<td><img src="displayhospimage?id=<c:out value='${hospital.id}' ></c:out>" width="40%" height="30%"> </td>
<td> <c:out value="${hospital.hospitalname}"></c:out>   </td>
<td> <c:out value="${hospital.specialist}"></c:out>   </td>
<td> <c:out value="${hospital.specialistname}"></c:out>   </td>
<td> <c:out value="${hospital.description}"></c:out>   </td>
<td> 

<a href='<c:url value='deletehospital?id=${hospitallist.id}'></c:url>'>Delete</a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>


</div>


</body>
</html>