<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.entities.Register" import="com.EnumOfUserType.User" %>
<%
Register user = (Register) session.getAttribute("authenticate-user");
if (user == null) {
	session.setAttribute("message", "You are not logged in !! please login first");
	response.sendRedirect("index.jsp");
	return;
}
else{
	if(user.getUserType() == User.STUDENT) {
		session.setAttribute("message","You are not teacher ! please do not access this page");
		response.sendRedirect("index.jsp");
	}
}
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher - <%=session.getAttribute("Name")%> Dashboard</title>
    <link rel="stylesheet" href="assets/js/javascript.js">
    <link rel="stylesheet" href="assets/css/style3.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>

<body>
    <div class="container">
        <aside>
            <div class="top">
                <div class="logo">
                    <img src="assets/IMAGES/logo.png" alt="">
                    <h2>LEARN<span class="danger">EASY</span></h2>
                </div>

                <div class="close" id="close-btn">
                    <span class="material-symbols-sharp">
                        close
                    </span>
                </div>
            </div>

            <div class="sidebar">

                <a href="#" class="active">
                    <span class="material-symbols-sharp">
                        grid_view
                    </span>
                    <h3>Dahboard</h3>
                </a>

                <a href="#">
                    <span class="material-symbols-sharp">
                        quiz
                    </span>
                    <h3>quiz</h3>
                </a>

                <a href="recordedSession.jsp">
                    <span class="material-symbols-sharp">
                        videocam
                    </span>
                    <h3>Recorded Session</h3>
                </a>

                <a href="#">
                    <span class="material-symbols-sharp">
                        rate_review
                    </span>
                    <h3>Feedback</h3>
                </a>

                <a href="#">
                    <span class="material-symbols-sharp">
                        mail_outline
                    </span>
                    <h3>Messages</h3>
                    <span class="message-count">26</span>
                </a>

                <a href="#">
                    <span class="material-symbols-sharp">
                        settings
                    </span>
                    <h3>Profile</h3>
                </a>

                <a href="#">
                    <span class="material-symbols-sharp">
                        help
                    </span>
                    <h3>Help Centre</h3>
                </a>



                <a href="#">
                    <span class="material-symbols-sharp">
                        grid_view
                    </span>
                    <h3>Online Session</h3>
                </a>
                <a href="LogoutServlet">
                    <span class="material-symbols-sharp">
                        logout
                    </span>
                    <h3>Log out</h3>
                </a>



            </div>
        </aside>

        <!------------------------End of aside ----------------------------->

        <main>
            <h1>Dashboard</h1>
            <div class="date">
                <input type="date">
            </div>
            
            <%@ include file="message.jsp" %>
            
            <div class="insight">
                <div class="sales">

                    <div class="middle">
                        <div class="left">
                            <h3>Your uploaded videos</h3>
                            <h1> 145</h1>
                        </div>
                        <div class="progress">
                            <span class="material-symbols-sharp">
                                quiz
                            </span>
                        </div>
                    </div>
                    <small class="text-muted">Last 24 hours</small>
                </div>
                <!--                   --  end of sales     --      -->

                <div class="expenses">

                    <div class="middle">
                        <div class="left">
                            <h3>Students following</h3>
                            <h1>105</h1>
                        </div>
                        <div class="progress">
                            <span class="material-symbols-sharp">
                                Bar_chart
                            </span>

                        </div>
                    </div>
                    <small class="text-muted">Last 24 hours</small>
                </div>
                <!--end os expenses-->

                <div class="income">

                    <div class="middle">
                        <div class="left">
                            <h3>Watch time</h3>
                            <h1> 120<h5>Hours</h5>
                            </h1>
                        </div>
                        <div class="progress">
                            <span class="material-symbols-sharp">
                                quiz
                            </span>
                        </div>
                    </div>
                    <small class="text-muted">Last 24 hours</small>
                </div>

                <!--------------------End of income------------------>
            </div>
            <!-------------------end of insight--------------------->

            <div class="right recent-order">


                <div class="sale-analytics">
                    <h2>Your Recent Courses</h2>

                    <div class="item offline">
                        <div class="icon">
                            <span class="material-symbols-sharp">
                                shopping_cart_checkout
                            </span>
                        </div>
                        <div class="right">
                            <div class="info">
                                <h3>Complete Web Development</h3>
                                <small class="text-muted">Last 24 hours</small>
                            </div>
                            <h5 class="success">35 videos</h5>
                            <h3>1500-/-</h3>
                        </div>
                    </div>

                    <div class="item online">
                        <div class="icon">
                            <span class="material-symbols-sharp">
                                local_mall
                            </span>
                        </div>
                        <div class="right">
                            <div class="info">
                                <h3>Ethical Hacking</h3>
                                <small class="text-muted">Last 24 hours</small>
                            </div>
                            <h5 class="danger">23 videos</h5>
                            <h3>4000-/-</h3>
                        </div>
                    </div>

                    <div class="item customers">
                        <div class="icon">
                            <span class="material-symbols-sharp">
                                person
                            </span>
                        </div>
                        <div class="right">
                            <div class="info">
                                <h3>Complete Android Dev.</h3>
                                <small class="text-muted">Last 24 hours</small>
                            </div>
                            <h5 class="success">45 videos</h5>
                            <h3>500-/-</h3>
                        </div>
                    </div>
                    <div class="item add-product">
                    <form action="AddVideoServlet" method="POST" enctype="multipart/form-data">
                        <div>
                            <span class="material-symbols-sharp">
                                add
                            </span>
                            <input type="file" name="files" multiple>
                            
                              <input type="submit" value="Add More Videos" style="color: blue; cursor: pointer;">
                            
                        </div>
                    </form>
                </div>
             </div>




                <a href="#">Show All</a>
            </div>

        </main>
        <!----------------------------END OF MAIN-------------------->
        <div class="right">
            <div class="top">
                <button id="menu-btn">
                    <span class="material-symbols-sharp">
                        menu
                    </span>
                </button>
                <div class="theme-toggler">
                    <span class="material-symbols-sharp active">
                        light_mode
                    </span>
                    <span class="material-symbols-sharp">
                        dark_mode
                    </span>
                </div>
                <div class="profile">
                    <div class="info">
                        <p>Welcome, <b><%=session.getAttribute("Name")%></b></p>
                        <small class="text-muted">Teacher</small>
                    </div>
                    <div class="profile-photo">
                        <img src="assets/IMAGES/photo_2023-04-20_13-03-151.jpg" alt="">
                    </div>
                </div>
            </div>
            <!------------------end of top---------------->
            <div class="recent-updates">
                <h2>Recent Notifications</h2>
                <div class="updates">
                    <div class="update">
                      
                       

                    </div>

                    <div class="update">
                        <div class="profile-photo">
                            <img src="assets/IMAGES/profile-2.jpg" alt="">
                        </div>
                        <div class="message">
                            <p><b>Hey Sachin,</b> Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta nam dolores officia iusto id voluptates. </p>
                            <small class="text-muted">Update 2 min. ago</small>
                        </div>

                    </div>

                    <div class="update">
                        <div class="profile-photo">
                            <img src="assets/IMAGES/profile-3.jpg" alt="">
                        </div>
                        <div class="message">
                            <p><b>Hey, Sachin </b> check out the new course</p>
                            <small class="text-muted">Updated 2 min. ago</small>
                        </div>

                    </div>


                </div>
            </div>
            <!----------------End of recent Updates-------------------->


            
        </div>
        <script src="./JS/javascript.js"></script>
</body>

</html>