<!DOCTYPE html>
<html lang="en">
  <head>
	<!--// OPTIONAL & CONDITIONAL CSS FILES //-->   
	<!-- date picker css -->
	
	<link rel="stylesheet" href="${resource(dir: 'freelancer/css', file: 'bootstrap.min.css')}" type="text/css">

    <!-- Custom CSS -->

    <link rel="stylesheet" href="${resource(dir: 'freelancer/css', file: 'freelancer.css')}" type="text/css">
    
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  </head>
  <body id="page-top" class="index">
  	<!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <sec:ifNotLoggedIn>
                <a class="navbar-brand" href="/#">FORMAR</a>
                </sec:ifNotLoggedIn>
                <sec:ifLoggedIn>
                <a class="navbar-brand" href="/course/index">FORMAR</a>
                </sec:ifLoggedIn>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="/#"></a>
                    </li>
                    <sec:ifNotLoggedIn>
                    <li class="page-scroll">
                        <a href="#about">Sobre</a>
                    </li>
                    <li class="page-scroll">
                        <a href="/login">Login</a>
                    </li>
                    </sec:ifNotLoggedIn>
                    <sec:ifLoggedIn>
                    <li>
                        <a href="/user/show/${sec.loggedInUserInfo(field:'id')}"> Olá, ${sec.loggedInUserInfo(field: 'username')}</a>
                    </li>
                    <li class="page-scroll">
                        <a href="/logout">Logout</a>
                    </li>
                    </sec:ifLoggedIn>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
  

	</aside>
	<!-- aside end -->
	<!-- main content -->
	<div id="page-content">
		<g:layoutBody/>
	</div>
	<!-- end main content -->
	<!-- aside right on high res -->
	<aside class="right">
	<!-- jQuery -->
	<script src="${resource(dir: 'freelancer/js', file: 'jquery.js')}" ></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${resource(dir: 'freelancer/js', file: 'bootstrap.min.js')}" ></script>
    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="${resource(dir: 'freelancer/js', file: 'classie.js')}" ></script>
    <script src="${resource(dir: 'freelancer/js', file: 'cbpAnimatedHeader.js')}" ></script>

    <!-- Contact Form JavaScript -->
    <script src="${resource(dir: 'freelancer/js', file: 'jqBootstrapValidation.js')}" ></script>
    <script src="${resource(dir: 'freelancer/js', file: 'contact_me.js')}" ></script>

    <!-- Custom Theme JavaScript -->
    <script src="${resource(dir: 'freelancer/js', file: 'freelancer.js')}" ></script>
  </body>
</html>