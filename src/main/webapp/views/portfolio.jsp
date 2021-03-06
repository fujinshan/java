<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html lang="zxx">

<head>
    <title>Portfolio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="<%=path%>/views/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <!-- portfolio -->
    <link href="<%=path%>/views/css/portfolio.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="<%=path%>/views/css/font-awesome.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <!-- header -->
    <div class="main-header">
        <!-- header top -->
        <div class="header-top text-md-left text-center">
            <div class="container">
                <div class="d-md-flex justify-content-between">
                    <p class="text-capitalize">if you have any question? Call Us +12 345 678 </p>
                    <ul class="social-icons">
                        <li>
                            <a href="#">
                                <i class="fa fa-facebook-f"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-google-plus" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-linkedin" aria-hidden="true"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //header top -->
        <!-- header-middle -->
        <div class="middle-header">
            <div class="container">
                <div class="row">
                    <div class="mx-auto d-flex">
                        <ul class="timer-wthree">
                            <li>days<span id="days"></span></li>
                            <li>Hours<span id="hours"></span></li>
                            <li>Minutes<span id="minutes"></span></li>
                            <li>Seconds<span id="seconds"></span></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
        <!-- //header middle -->
        <!-- navigation -->
        <header class="main-header">
            <nav class="navbar second navbar-expand-lg navbar-light pagescrollfix">
                <div class="container">
                    <h1>
                        <a class="navbar-brand" href="<%=path%>/views/index.jsp">
                            <span class="fa fa-vine" aria-hidden="true"></span>ersatile
                        </a>
                    </h1>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-toggle"
                        aria-controls="navbarNavAltMarkup1" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse navbar-toggle" id="navbarNavAltMarkup1">
                        <div class="navbar-nav secondfix ml-lg-auto">
                            <ul class="navbar-nav text-center">
                                <li class="nav-item  mr-lg-3">
                                    <a class="nav-link" href="<%=path%>/views/index.jsp">Home
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item   mr-lg-3">
                                    <a class="nav-link" href="<%=path%>/views/about.jsp">about</a>
                                </li>
                                <li class="nav-item dropdown mr-lg-3  active">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Dropdown
                                    </a>
                                    <div class="dropdown-menu text-lg-left text-center" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item nav-link" href="portfolio.jsp">portfolio</a>
                                        <a class="dropdown-item nav-link" href="error.jsp">404</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=path%>/views/contact.jsp">contact</a>
                                </li>
                                <li class="nav-item">
                                    <button type="button" class="btn theme-btn" data-toggle="modal" aria-pressed="false"
                                        data-target="#exampleModal">
                                        Login
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <!-- navigation -->
    </div>
    <!-- //header -->
    <!-- inner banner -->
    <div class="inner-banner-w3ls">
    </div>
    <!-- //inner banner -->
    <!-- breadcrumbs -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb d-flex justify-content-center bg-theme">
            <li class="breadcrumb-item">
                <a href="<%=path%>/views/index.jsp">Home</a>
            </li>
            <li class="breadcrumb-item active font-weight-bold" aria-current="page">Portfolio</li>
        </ol>
    </nav>
    <!-- //breadcrumbs -->
    <!-- portfolio -->
    <section class="wthree-row w3-gallery cliptop-portfolio-wthree py-lg-5" id="portfolio">
        <div class="container">
            <div class="text-center">
                <h4 class="w3pvt-title">portfolio
                </h4>
                <span class="sub-title">add your caption here</span>
            </div>
            <ul class="demo row py-lg-5 py-sm-4 pb-4">
                <li class="col-lg-3 col-sm-6 my-lg-4 mt-4">
                    <div class="gallery-grid1">
                        <img src="images/s4.jpg" alt=" " class="img-fluid" />
                    </div>
                </li>
                <li class="col-lg-3 col-sm-6 my-lg-4 mt-4">
                    <div class="gallery-grid1">
                        <img src="<%=path%>/views/images/s1.jpg" alt=" " class="img-fluid" />
                    </div>
                </li>
                <li class="col-lg-3 col-sm-6 my-4">
                    <div class="gallery-grid1">
                        <img src="<%=path%>/views/images/s3.jpg" alt=" " class="img-fluid" />
                    </div>
                </li>
                <li class="col-lg-3 col-sm-6 mt-sm-4">
                    <div class="gallery-grid1">
                        <img src="<%=path%>/views/images/s2.jpg" alt=" " class="img-fluid" />
                    </div>
                </li>
                <li class="col-lg-4 col-sm-6 my-sm-0 my-4">
                    <div class="gallery-grid1">
                        <img src="<%=path%>/views/images/s3.jpg" alt=" " class="img-fluid" />
                    </div>
                </li>
                <li class="col-lg-4 col-sm-6">
                    <div class="gallery-grid1">
                        <img src="<%=path%>/views/images/s5.jpg" alt=" " class="img-fluid" />
                    </div>
                </li>
                <li class="col-lg-4 col-sm-6 mx-auto mt-lg-0 mt-4">
                    <div class="gallery-grid1">
                        <img src="<%=path%>/views/images/s4.jpg" alt=" " class="img-fluid" />
                    </div>
                </li>
                <li class="col-lg-3 col-sm-6 my-4">
                    <div class="gallery-grid1">
                        <img src="<%=path%>/views/images/s2.jpg" alt=" " class="img-fluid" />
                    </div>
                </li>
                <li class="col-lg-3 col-sm-6 my-lg-4">
                    <div class="gallery-grid1">
                        <img src="<%=path%>/views/images/s4.jpg" alt=" " class="img-fluid" />
                    </div>
                </li>
                <li class="col-lg-3 col-sm-6 my-lg-4  mt-sm-0 mt-4">
                    <div class="gallery-grid1">
                        <img src="<%=path%>/views/images/s1.jpg" alt=" " class="img-fluid" />
                    </div>
                </li>
                <li class="col-lg-3 col-sm-6 mt-4">
                    <div class="gallery-grid1">
                        <img src="<%=path%>/views/images/s3.jpg" alt=" " class="img-fluid" />
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <!-- //portfolio -->
    <!--portfolio bottom -->
    <div class="abt_bottom py-lg-5 bg-theme1">
        <div class="container py-sm-4 py-3">
            <div class="clearfix">
                <h4 class="abt-text text-capitalize text-white float-md-left">versatile is unique in the world</h4>
                <a href="<%=path%>/views/about.jsp" class="text-capitalize serv_link btn bg-theme2 float-md-right">explore now</a>
            </div>
        </div>
    </div>
    <!-- //portfolio bottom -->
    <!-- footer top -->
    <div class="footer-top py-5">
        <div class="container">
            <div class="row">

                <div class="col-lg-4 footer-logo">
                    <h2>
                        <a href="<%=path%>/views/index.jsp">Versatile</a>
                    </h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                        industry. Lorem Ipsum
                        has
                        been
                        the
                        industry's standard.</p>
                    <div class="social-icons">
                        <h5 class="footer-top-title">stay connected</h5>
                        <ul class="social-icons">
                            <li>
                                <a href="#">
                                    <i class="fa fa-facebook-f"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-google-plus" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4  my-lg-0 my-4">
                    <h5 class="footer-top-title">latest posts</h5>
                    <ul class="post-links">
                        <li>
                            <a href="#">
                                Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non mattis.
                            </a>
                            <span class="fa fa-clock-o mr-3"></span> 3 hrs ago
                        </li>
                        <li>
                            <a href="#">
                                Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non mattis.
                            </a>
                            <span class="fa fa-clock-o mr-3"></span> 10 hrs ago
                        </li>
                        <li>
                            <a href="#">
                                Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non mattis.
                            </a>
                            <span class="fa fa-clock-o mr-3"></span> 22 hrs ago

                        </li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <h5 class="footer-top-title">contact information</h5>
                    <ul class="d-flex flex-column">
                        <li>
                            <span class="fa fa-home mr-3"></span>
                            <p class="d-inline">+4667 Woodland, California 916-983-6577.</p>
                        </li>
                        <li class="my-3">
                            <span class="fa fa-envelope-open mr-3"></span>
                            <a href="mailto:example@email.com" class="text-secondary">info@example.com</a>
                        </li>
                        <li>
                            <span class="fa fa-phone mr-3"></span>
                            <p class="d-inline">+456 123 7890</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- //footer top -->
    <!-- footer -->
    <footer>
        <div class="container">
            <div class="cpy-right text-center">
                <p>Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
                </p>
            </div>
        </div>
    </footer>
    <!-- //footer -->
    <!-- Login modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header bg-theme2">
                    <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-theme1">
                    <form action="#" method="post">
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label text-white">Username</label>
                            <input type="text" class="form-control border" placeholder="john mercy " name="Name" id="recipient-name"
                                required="">
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-form-label text-white">Password</label>
                            <input type="password" class="form-control border" placeholder="****" name="Password" id="password"
                                required="">
                        </div>
                        <div class="right-w3l">
                            <input type="submit" class="form-control border text-white bg-theme1" value="Login">
                        </div>

                        <div class="row sub-w3l my-3">
                            <div class="col sub-w3layouts">
                                <input type="checkbox" id="brand1" value="">
                                <label for="brand1" class="text-white">
                                    <span></span>Remember me?</label>
                            </div>
                            <div class="col forgot-w3l text-right text-dark">
                                <a href="#" class="text-white">Forgot Password?</a>
                            </div>
                        </div>
                        <p class="text-center text-white">Don't have an account?
                            <a href="#" data-toggle="modal" data-target="#exampleModal1" class="text-theme1 font-weight-bold">
                                Register Now</a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- //Login modal -->
    <!-- Register modal -->
    <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header  bg-theme2">
                    <h5 class="modal-title" id="exampleModalLabel1">Register</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body  bg-theme1">
                    <form action="#" method="post">
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label text-white">Username</label>
                            <input type="text" class="form-control border" placeholder="john mercy " name="Name" id="recipient-rname"
                                required="">
                        </div>
                        <div class="form-group">
                            <label for="recipient-email" class="col-form-label text-white">Email</label>
                            <input type="email" class="form-control border" placeholder="username@email.com" name="Email"
                                id="recipient-email" required="">
                        </div>
                        <div class="form-group">
                            <label for="password1" class="col-form-label text-white">Password</label>
                            <input type="password" class="form-control border" placeholder="****" name="Password" id="password1"
                                required="">
                        </div>
                        <div class="form-group">
                            <label for="password2" class="col-form-label text-white">Confirm Password</label>
                            <input type="password" class="form-control border" placeholder="****" name="Confirm Password"
                                id="password2" required="">
                        </div>
                        <div class="sub-w3l">
                            <div class="sub-w3layouts">
                                <input type="checkbox" id="brand2" value="">
                                <label for="brand2" class="mb-3 text-white">
                                    <span></span>I Accept to the Terms & Conditions</label>
                            </div>
                        </div>
                        <div class="right-w3l">
                            <input type="submit" class="form-control bg-theme1 text-white" value="Register">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- // Register modal -->
    <!-- js -->
    <script src="<%=path%>/views/js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- Scrolling Nav JavaScript -->
    <script src="<%=path%>/views/js/scrolling-nav.js"></script>
    <!-- //fixed-scroll-nav-js -->
    <script>
        $(window).scroll(function () {
            if ($(document).scrollTop() > 70) {
                $('nav.pagescrollfix,nav.RWDpagescrollfix').addClass('shrink');
            } else {
                $('nav.pagescrollfix,nav.RWDpagescrollfix').removeClass('shrink');
            }
        });
    </script>
    <!-- count down -->
    <script src="<%=path%>/views/js/count-down.js"></script>
    <!-- script for password match -->
    <script>
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- script for password match -->
    <!-- portfolio -->
    <script src="<%=path%>/views/js/jquery.picEyes.js"></script>
    <script>
        $(function () {
            //picturesEyes($('.demo li'));
            $('.demo li').picEyes();
        });
    </script>
    <!-- //portfolio -->

    <!-- start-smooth-scrolling -->
    <script src="<%=path%>/views/js/move-top.js"></script>
    <script src="<%=path%>/views/js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <script src="<%=path%>/views/js/SmoothScroll.min.js"></script>
    <!-- //smooth-scrolling-of-move-up -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=path%>/views/js/bootstrap.js"></script>
</body>

</html>