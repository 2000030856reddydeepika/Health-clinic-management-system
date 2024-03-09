<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        .gradient-custom {
            background: linear-gradient(to bottom right, rgb(44, 43, 43), rgb(14, 13, 13));
           


}
.form{
background-color:#BCB88A;
padding: 50px 35px;
}
.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}
.blink {
  animation: blink 1s steps(1, end) infinite;
}


    </style>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>


<body>



 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-item nav-link active" href="adminhome">Home </a>
         
            <a class="nav-item nav-link" href="login">Logout</a>
          </div>
        </div>
      </nav>
    <section class="form" class="vh-100 gradient-custom">
        <div  class="container py-5 h-100">
          <div class="row justify-content-center align-items-center h-100">
            <div class="col-12 col-lg-9 col-xl-7">
              <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                <div class="card-body p-4 p-md-5">
                  <h3 class="mb-4 pb-2 pb-md-0 mb-md-5"><center>Registration Form</center></h3>
                  
                  <form action="addpatient" method="POST" modelAttribute="stu">
      
                    <div class="row">
                      <div  class="col-md-6 mb-4">
      
                        <div class="form-outline">
                          <input type="text" name="name" id="firstName" class="form-control form-control-lg" />
                          <label class="form-label" for="firstName">Name</label>
                        </div>
      
                      </div>

                      <div class="col-md-6 mb-4">
      
                        <h6 class="mb-2 pb-1">Gender: </h6>

                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" id="maleGender"
                              value="M" />
                            <label class="form-check-label" for="maleGender">Male</label>
                          </div>
      
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="gender" id="femaleGender"
                            value="F" checked />
                          <label class="form-check-label" for="femaleGender">Female</label>
                        </div>
      
                        
      

                      <!-- <div class="col-md-6 mb-4">
      
                        <div class="form-outline">
                          <input type="text" id="lastName" class="form-control form-control-lg" />
                          <label class="form-label" for="lastName">Last Name</label>
                        </div>
      
                      </div> -->
                    </div>
      
                    <div class="row">
                      <div class="col-md-6 mb-4 d-flex align-items-center">
      
                        <div class="form-outline datepicker w-100">
                          <input type="text" class="form-control form-control-lg" id="birthdayDate"  name="username"/>
                          <label for="birthdayDate" class="form-label">Username</label>
                        </div>
      
                      </div>
                      <div class="col-md-6 mb-4">
      
                        <div class="form-outline">
                          <input type="password" id="lastName" class="form-control form-control-lg" name="password" />
                          <label class="form-label" for="lastName">password</label>
                        </div>
      
                      </div>
      
                      </div>
                    </div>
      
                    <div class="row">
                      <div class="col-md-6 mb-4 pb-2">
      
                        <div class="form-outline">
                          <input type="email" id="emailAddress" class="form-control form-control-lg"  name="emailid" />
                          <label class="form-label" for="emailAddress">Email</label>
                        </div>
      
                      </div>
                      <div class="col-md-6 mb-4 pb-2">
      
                        <div class="form-outline">
                          <input type="number" id="phoneNumber" class="form-control form-control-lg"  name="contactno" />
                          <label class="form-label" for="phoneNumber">Phone Number</label>
                        </div>
      
                      </div>
                    </div>
      
                    <div class="mt-4 pt-2"><center>
                      <input class="btn btn-primary btn-lg" type="submit" value="Register" />
                      </center>
                    </div>
      
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
</body>
</html>