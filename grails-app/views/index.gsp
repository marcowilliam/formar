<!DOCTYPE html>
<html lang="en">

<head>

    <meta name="layout" content="freelancer"/>
        <title>Formar</title>

</head>

<body id="page-top" class="index">

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="${resource(dir: 'img', file: 'profile.png')}" alt="">
                    <div class="intro-text">
                        <span class="name">FORMAR</span>
                        <hr class="star-light">
                        <span class="skills">Acompanhe seus eventos acadêmicos</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- About Section -->
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Sobre</h2>
                    <p></p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>A preparação durante o semestre é um dos pontos fracos de muitos dos alunos universitários, não ter noção do que irá acontecer nas suas próximas semanas, pode ser fatal, te fazendo assumir compromissos desnecessários ou dormir horas importantes pode valer a sua vida.</p>
                </div>
                <div class="col-lg-4">
                    <p>Nossa ferramenta está aqui para propor uma melhoria na sua visão sobre o que poderá te esperar, cadastre suas matérias e suas atividades para nunca mais perder de vista, toda aquela bola de neve que pode estar se preparando.</p>
                </div>
                <sec:ifNotLoggedIn>
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="/user/create" class="btn-lg">
                        The winter is coming, registre-se
                    </a>
                </div>
                </sec:ifNotLoggedIn>
            </div>
        </div>
    </section>
    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-6">
                        <h3>De onde somos</h3>
                        <p>Engenharia de Software<br>FGA, Universidade de Brasília</p>
                    </div>
                    <div class="footer-col col-md-6">
                        <h3>Quem somos?</h3>
                        <p>Alunos da matéria de Paradigmas de Programação.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Paradigmas 2016
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visible-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

</body>

</html>
