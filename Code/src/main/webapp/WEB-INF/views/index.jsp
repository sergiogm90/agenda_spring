<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Gesti&oacute;n Empleados</title>

    <!-- Bootstrap Core CSS -->
    <link href="http://servidordaw.hol.es/AgendaHTML/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- Theme CSS -->
    <link href="http://servidordaw.hol.es/AgendaHTML/css/grayscale.min.css" rel="stylesheet">
    <link href="http://servidordaw.hol.es/AgendaHTML/css/agendaBusqueda.css" rel="stylesheet">
    <link href="http://servidordaw.hol.es/AgendaHTML/css/step.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
      <script src="http://servidordaw.hol.es/AgendaHTML/js/j.js"></script>

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-play-circle"></i> <span class="light">Buscar</span> Empleado
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="newPersona">Agregar</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="listar">Modificar</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="listaMostrar">Mostrar</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                       <div class="container barraBusqueda">
	                        <div class="row">
		                        <div class="col-md-7">
                              <div class="input-group" id="adv-search">
                             	<form:form action="search" method="post" modelAttribute="persona">
								<form:hidden path="idpersonas" />
                                <form:input type="text" class="form-control" placeholder="Buscar empleado" path="nombre"/>
                                </form:form>
                                  <div class="input-group-btn">
                                    <div class="btn-group" role="group">
                                      <div class="dropdown dropdown-lg">
                                        <button type="button" class="btn btn-default dropdown-toggle botonXpanse" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>
                                          <div class="dropdown-menu dropdown-menu-right" role="menu">
                                            <form class="form-horizontal" role="form">
                                              <div class="form-group">
                                                <label for="filter" class="labels">Filtrar por</label>
                                                  <select class="form-control">
                                                    <option value="0" selected>Departamentos</option>
                                                    <option value="1">RRHH</option>
                                                    <option value="2">Inform&aacute;tica</option>
                                                    <option value="3">Log&iacute;stica</option>
                                                    <option value="4">Direcc&oacute;in</option>
                                                  </select>
                                              </div>
                                              <div class="form-group">
                                                <label for="contain" class="labels">Nombre completo</label>
                                                <input class="form-control" type="text" />
                                              </div>
                                            <button type="submit" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i>
</button>
                                          </form>
                                        </div>
                                      </div>
                                    <button type="button" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i>
</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
	                      </div>
                      </div>
                      <a href="add.html" class="btn btn-circle page-scroll redondoDesplegable">
                          <i class="fa fa-angle-double-down animated"></i>
                      </a>
                    </div>
                </div>
            </div>
        </div>
    </header>


    <!-- Contact Section -->
    <section id="contact" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Contacto Servicio T&eacute;cnico</h2>
                <p>En caso de duda o sugerencia escr&iacute;banos a la siguiente direcci&oacute;n o a trav&eacute;s de una red social</p>
                <p><a href="mailto:feedback@startbootstrap.com">info@grupo3.com</a>
                </p>
                <ul class="list-inline banner-social-buttons">
                    <li>
                        <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                    </li>
                    <li>
                        <a href="https://github.com/IronSummitMedia/startbootstrap" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                    </li>
                    <li>
                        <a href="https://plus.google.com/+Startbootstrap/posts" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Map Section -->
    <div id="map"></div>

    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright Grupo 3 2017</p>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="http://servidordaw.hol.es/AgendaHTML/vendor/jquery/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="http://servidordaw.hol.es/AgendaHTML/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>
    <!-- Theme JavaScript -->
    <script src="http://servidordaw.hol.es/AgendaHTML/js/grayscale.min.js"></script>
    <script src="http://servidordaw.hol.es/AgendaHTML/js/step.js" charset="utf-8"></script>
    <script src="http://servidordaw.hol.es/AgendaHTML/js/validation.js"></script>
    <script src="http://servidordaw.hol.es/AgendaHTML/js/shorcut.js"></script>

  </body>

</html>
