<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<meta charset="ISO-8859-1">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDP3</title>
 
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <link rel="stylesheet" href="style.css">

</head>
<body>

<header>

    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>H</span>ealth<span>C</span>entre

    <nav class="navbar">
        <a href="#home">Home</a>
        <a href="#book">Appoinment</a>
        <a href="#packages">Specialists</a> 
        <a href="#hotels">Hospitals</a>
        <a href="#contact">Contact</a>
        <a href="login.jsp">Login/Register</a>
    </nav>

    

</header>

<section class="home" id="home">

    <div class="content">
        <h3 style="color:black">WELCOME</h3>

    </div>

        <div class="image"><center>
            <img src="images/hospital-management.jpg" alt=""  ></center>
        </div>

</section>

<section class="book" id="book">

    <h1 class="heading">
        <span>M</span>
        <span>a</span>
        <span>k</span>
        <span>e</span>
        <span class="space"></span>
        <span>a</span>
        <span>n</span>
        <span class="space"></span>
        <span>a</span>
        <span>p</span>
        <span>p</span>
        <span>o</span>
        <span>i</span>
        <span>n</span>
        <span>t</span>
        <span>m</span>
        <span>e</span>
        <span>n</span>
        <span>t</span>
    </h1>

    <div class="row">

        <div class="image">
            <img src="images/appointment.jpg" alt="">
        </div>

        <form action="">
             <div class="inputBox">
                <h3>Hospital Name</h3>
                <input type="text" placeholder="place name" required>
            </div>
            <div class="inputBox">
                <h3>Specialist</h3>
                <input type="text" placeholder="place name" required>
            </div>
            <div class="inputBox">
                <h3>Problem </h3>
                <input type="number" placeholder="number of guests" required>
            </div>
            <div class="inputBox">
                <h3>Select data</h3>
                <input type="date" required>
            </div>
            <input type="submit" class="btn" value="book now">
        </form>

    </div>
<br> </br>
<br> </br>
<br> </br>
<br> </br>
</section>
<section class="packages" id="packages">

    <h1 class="heading">
        <span>S</span>
        <span>p</span>
        <span>e</span>
        <span>c</span>
        <span>i</span>
        <span>a</span>
        <span>l</span>
        <span>i</span>
        <span>s</span>
        <span>t</span>
        <span>s</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <img src="images/nephrologist.jpg" alt="">
            <div class="content">
                <h3> nephrologist </h3>
                <p>A nephrologist is a medical doctor who specializes in kidney care and treating diseases of the kidneys.</p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <img src="images/neurons.jpg" alt="">
            <div class="content">
                <h3> Neurologist</h3>
                <p>A neurologist is an expert in the diagnosis and treatment of diseases of the brain and nervous system.</p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <img src="images/dental.jpg" alt="">
            <div class="content">
                <h3> Dentist</h3>
                <p>A Dentist repair fractured teeth, fill cavities, remove tooth decay, straighten teeth, place sealants, within patients teeth, and educate on proper oral hygiene.</p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <img src="images/diabetologis.jpg" alt="">
            <div class="content">
                <h3> Diabetologist </h3>
                <p>Diabetologists are specialized doctors who help in diagnosing, managing, and treating diabetes.</p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <img src="images/gastro.jpg" alt="">
            <div class="content">
                <h3>Gastroenterologist </h3>
                <p> A gastroenterologist is a specialist with expertise in the disorders and diseases that affect the digestive system which includes esophagus, stomach, small intestine, large intestine, rectum and anus.</p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <img src="images/psychiatist.jpg" alt="">
            <div class="content">
                <h3>Psychiatist </h3>
                <p>A psychiatrist is a medical doctor who specializes in mental health, including substance use disorders. Psychiatrists are qualified to assess both the mental and physical aspects of psychological problems.</p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>
        
        <div class="box">
            <img src="images/endocrinology.jpg" alt="">
            <div class="content">
                <h3> Endocrinologist</h3>
                <p> An endocrinologist is a healthcare provider who's an expert in endocrinology â the study of your body's hormones.</p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>
        
        <div class="box">
            <img src="images/pulmonology.jpg" alt="">
            <div class="content">
                <h3>Pulmonologist </h3>
                <p> A pulmonologist is a doctor who diagnoses and treats diseases of the respiratory system the lungs and other organs that help you breathe.</p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>
        
        <div class="box">
            <img src="images/dietion.jpg" alt="">
            <div class="content">
                <h3>Dietitian </h3>
                <p> Dietitians offer advice on food choices to help people improve their health. They do this to learn how diet can promote good health and prevent disease.</p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>
        
        <div class="box">
            <img src="images/Cosmetology.jpg" alt="">
            <div class="content">
                <h3>Cosmetologist </h3>
                <p>A cosmetologist is an expert in applying cosmetic procedures, therapies, and treatments to beautify oneâs outer appearance, and implementing cosmetic treatments to peopleâs hair, skin, and nails. </p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <img src="images/cardiologist.jpg" alt="">
            <div class="content">
                <h3>cardiologist </h3>
                <p>Cardiologists are doctors who have extra education and training in preventing, diagnosing and treating heart conditions. They are experts on the heart muscle itself and the arteries and veins that carry blood. </p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>
        
        <div class="box">
            <img src="images/general-surgery.jpg" alt="">
            <div class="content">
                <h3>General-surgery </h3>
                <p>General Surgery is a specialty where surgeons perform general surgery procedures for a wide range of common ailments. They are also responsible for patient care before, during, and after the surgery.</p>
                <a href="#" class="btn">book now</a>
            </div>
        </div>
    </div>
    
<br> </br>
<br> </br>
<br> </br>
<br> </br>


<section class="hotels" id="hotels">

    <h1 class="heading">
        <span>H</span>
        <span>O</span>
        <span>S</span>
        <span>P</span>
        <span>I</span>
        <span>T</span>
        <span>A</span>
        <span>L</span>
        <span>S</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <img src="images/Ramesh-Hospital-logo.jpg" alt="">
            <div class="content">
                <h3>Ramesh Hospitals</h3>
                <a href="#" class="btn">Book Now</a>
            </div>
        </div>
        <div class="box">
            <img src="images/aayush.jpg" alt="">
            <div class="content">
                <h3>Anyush Hospitals</h3>
                <a href="#" class="btn">Book Now</a>
            </div>
        </div>
        <div class="box">
            <img src="images/sunrise hospital.jpg" alt="">
            <div class="content">
                <h3>Sunrise Hospital</h3>
                <a href="#" class="btn">Book Now</a>
            </div>
        </div>
        <div class="box">
            <img src="images/capital hospital.jpg" alt="">
            <div class="content">
                <h3>Capital Hospital</h3>
                <a href="#" class="btn">Book Now</a>
            </div>
        </div>
        <div class="box">
            <img src="images/anu hospitals.jpg" alt="">
            <div class="content">
                <h3>Anu Hospitals</h3>
                
                <a href="#" class="btn">Book Now</a>
            </div>
        </div>
        <div class="box">
            <img src="images/Manipal_Hospitals_Logo.jpg" alt="">
            <div class="content">
                <h3>Manipal Hospitals</h3>
                <a href="#" class="btn">Book Now</a>
            </div>
        </div>
        <div class="box">
            <img src="images/kamineni.jpg" alt="">
            <div class="content">
                <h3>Kamineni</h3>
                <a href="#" class="btn">Book Now</a>
            </div>
        </div>
        <div class="box">
            <img src="images/KIMS.jpg" alt="">
            <div class="content">
                <h3>Kims Hospitals</h3>
                <a href="#" class="btn">Book Now</a>
            </div>
        </div>
        <div class="box">
            <img src="images/Apollo-Hospitals.jpg" alt="">
            <div class="content">
                <h3>Apollo Hospitals</h3>
                <a href="#" class="btn">Book Now</a>
            </div>
        </div>
        
        </div>

    </div>

</section>
<section class="contact" id="contact">
    
    <h1 class="heading">
        <span>c</span>
        <span>o</span>
        <span>n</span>
        <span>t</span>
        <span>a</span>
        <span>c</span>
        <span>t</span>
        <span class="space"></span>
        <span>u</span>
        <span>s</span>
    </h1>

    <div class="row">

        <div class="image">
            <img src="images/contactus.jpg" alt="">
        </div>

        <form action="">
            <div class="inputBox">
                <input type="text" placeholder="Name">
                <input type="email" placeholder="Email">
            </div>
            <div class="inputBox">
                <input type="number" placeholder="Mobile Number">
                <input type="text" placeholder="Subject">
            </div>
            <textarea placeholder="Message" name="" id="" cols="30" rows="10"></textarea>
            <input type="submit" class="btn" value="send message">
        </form>

    </div>
    
</section>

<!-- contact section ends -->

<!-- brand section  -->


<!-- footer section  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>about us</h3>
            <p> 
When you speak to a doctor about your health concerns through an audio/video/ chat, it is known as an online doctor consultation or online medical consultation. This is a good alternative for times when you cannot visit a doctor physically at the clinic or hospital.</p></div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#">home</a>
            <a href="#">book</a>
            <a href="#">packages</a>
            <a href="#">services</a>
            <a href="#">hotels</a>
            <a href="#">review</a>
            <a href="#">contact</a>
        </div>
        <div class="box">
            <h3>follow us</h3>
            <a href="#">facebook</a>
            <a href="#">instagram</a>
            <a href="#">twitter</a>
            <a href="#">linkedin</a>
        </div>

    </div>


</section>

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>