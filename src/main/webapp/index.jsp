<!Doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Virtual Classroom</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/animated-headline.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader-start------------>
    
    <header>
        <!-- Header Start -->
        <div class="header-area header-transparent">
            <div class="main-header ">
                <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <!---  <div class="col-xl-2 col-lg-2">

                                <div class="logo">
                                    <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                                </div>
                            </div>-->

                            <div class="top">
                                <div class="logo">
                                    <img src="/IMAGES/logo.png" alt="">
                                    <h2><b>LEARN<span class="danger">EASY</span></b></h2>
                                </div>


                            </div>

                            <div class="col-xl-10 col-lg-10">
                                <div class="menu-wrapper d-flex align-items-center justify-content-end">
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">
                                                <li class="active"><a href="student_dashboard.jsp">Home</a></li>
                                                <li><a href="#">Classroom</a>
                                                    <ul class="submenu">
                                                        <li><a href="">Video Lectures</a></li>
                                                        <li><a href="">Study Materials</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="">Q/A Forum</a></li>
                                               
                                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loginModal">
                                                    Log in
                                                  </button>

                                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                                    sign up
                                                  </button>

                                             
                                               


                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>
    
    <main>
        <!--? slider Area Start-->
        <section class="slider-area ">
            <div class="slider-active">
                <!-- Single Slider -->
                <div class="single-slider slider-height d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-7 col-md-12">
                            
    <div>
		<%@include file="message.jsp" %>
	</div>
    
                                <div class="hero__caption">
                                    <h1 data-animation="fadeInLeft" data-delay="0.2s">Welcome to<br><span
                                            class="le">Learn </span><span class="sp">Easy</span>
                                    </h1>
                                    <p data-animation="fadeInLeft" data-delay="0.4s">Attend video lectures, skim through
                                        study materials and ask doubts at one place.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ? services-area -->
        <div class="services-area">
            <div class="container">
                <div class="row justify-content-sm-center">
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="single-services mb-30">
                            <div class="features-icon">
                                <img src="assets/img/icon/icon1.svg" alt="">
                            </div>
                            <div class="features-caption">
                                <h3>Study Materials</h3>
                                <p>All the books and tutorials at one place.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="single-services mb-30">
                            <div class="features-icon">
                                <img src="assets/img/icon/icon2.svg" alt="">
                            </div>
                            <div class="features-caption">
                                <h3>Live Session</h3>
                                <p>Attend Live Lectures and Doubt Sessions</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="single-services mb-30">
                            <div class="features-icon">
                                <img src="assets/img/icon/icon3.svg" alt="">
                            </div>
                            <div class="features-caption">
                                <h3>Assignments</h3>
                                <p>Turn-in your Assignments</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section-top-border">
                    <h3 class="mb-30">Study Materials</h3>
                    <div class="progress-table-wrap">
                        <div class="progress-table">
                            <div class="table-head">
                                <div class="serial">#</div>
                                <div class="serial">Python</div>
                                <div class="serial" style="color: black;">Java</div>
                                <div class="serial" style="color: black;">C++</div>
                            </div>
                            <div class="table-row">
                                <div class="serial">01</div>
                                <div class="visit">Environment Setup </div>
                                <div class="percentage">
                                    <div class="progress">
                                        <div class="progress-bar color-1" role="progressbar" style="width: 100%"
                                            aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">Downloaded</div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-row">
                                <div class="serial">02</div>
                                <div class="visit">Basic Syntax </div>
                                <div class="percentage">
                                    <div class="progress">
                                        <div class="progress-bar color-1" role="progressbar" style="width: 100%"
                                            aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">Downloaded</div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-row">
                                <div class="serial">03</div>
                                <div class="visit">Variable Types </div>
                                <div class="percentage">
                                    <div class="progress">
                                        <div class="progress-bar color-1" role="progressbar" style="width: 100%"
                                            aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">Downloaded</div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-row">
                                <div class="serial">04</div>
                                <div class="visit">Basic Operators </div>
                                <div class="percentage">
                                    <div class="progress">
                                        <div class="progress-bar color-1" role="progressbar" style="width: 100%"
                                            aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">Downloaded</div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-row">
                                <div class="serial">05</div>
                                <div class="visit">Decision Making </div>
                                <div class="percentage">
                                    <div class="progress">
                                        <div class="progress-bar color-1" role="progressbar" style="width: 100%"
                                            aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-row">
                                <div class="serial">06</div>
                                <div class="visit">Loops </div>
                                <div class="percentage">
                                    <div class="progress">
                                        <div class="progress-bar color-1" role="progressbar" style="width: 100%"
                                            aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="footer-wrappper footer-bg">
            <!-- Footer Start-->
            <div class="footer-area footer-padding">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-xl-4 col-lg-5 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="single-footer-caption mb-30">
                                    <!-- logo -->
                                    <div class="top">
                                        <div class="logos">

                                            <h2><b>LEARN<span class="danger">EASY</span>.Pvt.ltd</b></h2>
                                        </div>


                                    </div>
                                    <div class="footer-tittle">
                                        <div class="footer-pera">
                                            <p>The automated process starts here.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- footer-bottom area -->
                        <div class="footer-bottom-area">
                            <div class="container">
                                <div class="footer-border">
                                    <div class="row d-flex align-items-center">
                                        <div class="col-xl-12 ">
                                            <div class="footer-copy-right text-center">
                                                <p>
                                                    Copyright ©
                                                    <script>
                                                        document.write(new Date().getFullYear());
                                                    </script>2023 All rights reserved
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Footer End-->
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Scroll Up -->
    <div id="back-top">
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>




    <!-- Modal -->
  

    <!-- Button trigger modal -->

  
  <!-- Modal -->


  <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Login Form</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
         <form action="LoginServlet" method="POST" id="login-form" class="form" role="form">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-user"></i>
                            </span>
                        </div>
                        <input type="email" class="form-control" name="email" placeholder="Email" required>
                    </div>

                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-lock"></i>
                            </span>
                        </div>
                        <input type="password" class="form-control" name="password" placeholder="Password" minlength="6" required>
                    </div>
                    <!-- <div class="form-group">
                        <span>Log In as</span>
                        <input type="radio" class="ml-3" id="gender-male" name="gender" value="male" /> Student
                        <label for="gender-male">
                        </label>
                        <input type="radio" class="ml-3" id="gender-female" name="gender" value="female" />
                        <label for="gender-female">
                            Teacher
                        </label>
                    </div>
 -->
                    <div class="form-group">
                        <button type="submit" class="btn btn-block btn-primary">Login</button>
                    </div>
                </form>
        </div>
        <div class="modal-footer" style="background-color: #5A5A5A; justify-content: center;">
                <span style="color: #f4f4f4;">Are you new user ?  
                    <a style="cursor: pointer" data-toggle="modal" data-target="#exampleModal">
                        sign up
                      </a>
                </span>
            </div>
            
      </div>
    </div>
  </div>
  

  
      
      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Register Form</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <form action="RegisterServlet" method="POST" id="signup-form" class="form" role="form">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-user"></i>
                            </span>
                        </div>
                        <input type="text" class="form-control" name="full_name" placeholder="Full Name" maxlength="30" required>
                    </div>

                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-phone"></i>
                            </span>
                        </div>
                        <input type="text" class="form-control" name="phone" placeholder="Phone Number" maxlength="10" minlength="10" required>
                    </div>

                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-envelope"></i>
                            </span>
                        </div>
                        <input type="email" class="form-control" name="email" placeholder="Email" required>
                    </div>

                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-lock"></i>
                            </span>
                        </div>
                        <input type="password" class="form-control" name="password" placeholder="Password" minlength="6" required>
                    </div>

                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-university"></i>
                            </span>
                        </div>
                        <input type="text" class="form-control" name="college_name" placeholder="College Name" maxlength="150" required>
                    </div>

                    <div class="form-group">
                        <span>I'm a</span>
                        <input type="radio" class="ml-3" id="user-student" name="usertype" value="STUDENT" /> Student
                        <label for="user-student">
                        </label>
                        <input type="radio" class="ml-3" id="user-teacher" name="usertype" value="TEACHER" />
                        <label for="user-teacher">
                            Teacher
                        </label> 
                        <!-- <label for="gender">Gender:</label>
						<select name="gender" id="gender">
						    <option value="STUDENT">Student</option>
						    <option value="TEACHER">Teacher</option>
						</select> -->
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-block btn-primary">Create Account</button>
                    </div>
                </form>
                  </div>
                  <div class="modal-footer" style="background-color: #f4f4f4; justify-content: center;">
                   
                </div>
            </div>
          
          </div>
        </div>
      </div>




    <!-- JS here -->
    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="./assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    <!-- Progress -->
    <script src="./assets/js/jquery.barfiller.js"></script>

    <!-- counter , waypoint,Hover Direction -->
    <script src="./assets/js/jquery.counterup.min.js"></script>
    <script src="./assets/js/waypoints.min.js"></script>
    <script src="./assets/js/jquery.countdown.min.js"></script>
    <script src="./assets/js/hover-direction-snake.min.js"></script>

    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>



</body>
</html>