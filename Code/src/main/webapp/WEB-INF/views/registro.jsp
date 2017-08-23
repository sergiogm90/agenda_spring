<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>

<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Agenda agregar contacto</title>
  <link href="http://servidordaw.hol.es/AgendaHTML/step_files/B294v_data/bootstrap.css" rel="stylesheet">
  <link href="http://servidordaw.hol.es/AgendaHTML/css/step.css" rel="stylesheet">


<link rel='stylesheet' href='"http://servidordaw.hol.es/AgendaHTML/typicons/src/font/typicons.min.css' />



  <!-- Bootstrap Core CSS -->
  <link href="http://servidordaw.hol.es/AgendaHTML/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- <link href="http://servidordaw.hol.es/AgendaHTML/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
  <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link href="http://servidordaw.hol.es/AgendaHTML/css/grayscale.min.css" rel="stylesheet">
  <link href="http://servidordaw.hol.es/AgendaHTML/css/agendaBusqueda.css" rel="stylesheet">
  <link href="http://servidordaw.hol.es/AgendaHTML/css/step.css" rel="stylesheet">

  <script type="text/javascript" src="http://servidordaw.hol.es/AgendaHTML/step_files/B294v_data/jquery-1.js"></script>
  <script type="text/javascript" src="http://servidordaw.hol.es/AgendaHTML/step_files/B294v_data/bootstrap.js"></script>
  <script src="http://servidordaw.hol.es/AgendaHTML/js/step.js"></script>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

      <!-- Navigation -->
      <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
          <div class="container">
              <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                      Menu <i class="fa fa-bars"></i>
                  </button>
                  <a class="navbar-brand page-scroll" href="index.html">
                     
                       <span class="light">Buscar</span> Empleado
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


  <div id="about" class="container">
    <div class="stepwizard col-md-offset-3">
      <div class="stepwizard-row setup-panel">
        <div class="stepwizard-step">
          <a href="#step-1" type="button" class="btn btn-circle btn-default btn-primary">1</a>
          <p>Paso 1</p>
        </div>
        <div class="stepwizard-step">
          <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
          <p>Paso 2</p>
        </div>
        <div class="stepwizard-step">
          <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
          <p>Paso 3</p>
        </div>
      </div>
    </div>
    <form:form role="form" action="savePersona" method="post" commandName="persona">
     <form:hidden path="idpersonas" />
     <form:hidden path="empleados.categorias.idcategorias" />
      <div class="row setup-content" id="step-1" style="display: block;">
        <div class="col-xs-6 col-md-offset-3">
          <div class="col-md-12">
            <h3> Paso 1</h3>
            <div class="well form-horizontal formularioAgregar" id="contact_form">
              <fieldset>
                <!-- Form Name -->
                <legend>Datos personales</legend>
                <!-- Nombre-->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="nombre">Nombre</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                      <form:input path="nombre" required="true" id="nombre" name="nombre" placeholder="Nombre" class="form-control" pattern="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" type="text"/>
                    </div>
                  </div>
                </div>
                <!-- Primer Apellido-->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="primerApellido">Primer Apellido</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-user-o" aria-hidden="true"></i></span>
                      <form:input path="apellido1" id="primerApellido" name="primerApellido" placeholder="Primer Apellido" class="form-control" type="text" required="true" pattern="^([A-z][A-Za-z]*)$"/>
                    </div>
                  </div>
                </div>
                <!-- Segundo Apellido-->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="segundoApellido">Segundo apellido</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-user-circle" aria-hidden="true"></i></span>
                      <form:input path="apellido2" id="segundoApellido" name="segundoApellido" placeholder="Segundo Apellido" class="form-control" type="text" required="true" pattern="^([A-z][A-Za-z]*)$"/>
                    </div>
                  </div>
                </div>
                <!-- Dni-->
                <div class="form-group">
                  <label for="dni" class="col-md-4 control-label labels">Dni</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                      <form:input path="dni" id="dni" name="dni" placeholder="Dni" class="form-control" type="text" required="true" pattern="^\d{8}[a-zA-Z]$"/>
                    </div>
                  </div>
                </div>
                <!-- Fecha-->
                <div class="form-group">
                  <label for="fecha" class="col-md-4 control-label labels">Fecha Nacimiento</label>
                  <div class="col-md-7 inputGroupContainer labels">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                      <form:input path="fechaNacimiento" id="fecha" name="fecha" placeholder="yyyy/mm/dd" class="form-control" type="text" required="false" pattern="^\d{4}(?:/\d{1,2}){2}$"/>
                    </div>
                  </div>
                </div>
                <!-- Telefono-->
                <div class="form-group">
                  <label for="telefono" class="col-md-4 control-label labels">Tel&eacute;fono</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-phone" aria-hidden="true"></i></span>
                     <form:input path="telefonoses[0].telefono" id="telefono" name="telefono" placeholder="696888766" class="form-control" type="text" pattern="^([0-9]{9})$" required="true"/>
                    </div>
                  </div>
                </div>
                <!--Direccion-->
                <div class="form-group">
                  <label for="direccion" class="col-md-4 control-label labels">Direcci&oacute;n</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-address-card" aria-hidden="true"></i></span>
                      <form:input path="direccioneses[0].direccion" id="direccion" name="direccion" placeholder="Direccion" class="form-control" type="text" required="true"/>
                    </div>
                  </div>
                </div>
                <!-- Provincia -->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="provincia">Provincia</label>
                  <div class="col-md-7 selectContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                      <form:select path="direccioneses[0].provincia" id="provincia" name="provincia" class="form-control selectpicker" required="true">
                          <option value=" " selected="selected">Introduce tu provincia</option>
                            <option value="Alava">&Aacute;lava</option>
                            <option value="Albacete">Albacete</option>
                            <option value="Alicante">Alicante</option>
                            <option value="Almeria">Almer&iacute;a</option>
                            <option value="Asturias">Asturias</option>
                            <option value="Avila">&Aacute;vila</option>
                            <option value="Badajoz">Badajoz</option>
                            <option value="Baleares">Baleares</option>
                            <option value="Barcelona">Barcelona</option>
                            <option value="Burgos">Burgos</option>
                            <option value="Caceres">C&aacute;ceres</option>
                            <option value="Cadiz">C&aacute;diz</option>
                            <option value="Cantabria">Cantabria</option>
                            <option value="Castellon">Castell&oacute;n</option>
                            <option value="Ciudad Real">Ciudad Real</option>
                            <option value="Cordoba">C&oacute;rdoba</option>
                            <option value="Coruna;a">Coru&ntilde;a</option>
                            <option value="Cuenca">Cuenca</option>
                            <option value="Girona">Girona</option>
                            <option value="Granada">Granada</option>
                            <option value="Guadalajara">Guadalajara</option>
                            <option value="Guipuzcua">Guip&uacute;zcua</option>
                            <option value="Huelva">Huelva</option>
                            <option value="Huesca">Huesca</option>
                            <option value="Jaen">Ja&eacute;n</option>
                            <option value="Rioja">La Rioja</option>
                            <option value="Palmas">Las Palmas</option>
                            <option value="Leon">Le&oacute;n</option>
                            <option value="Lleida">Lleida</option>
                            <option value="Lugo">Lugo</option>
                            <option value="Madrid">Madrid</option>
                            <option value="Malaga">M&aacute;laga</option>
                            <option value="Murcia">Murcia</option>
                            <option value="Navarra">Navarra</option>
                            <option value="Orense">Orense</option>
                            <option value="Palencia">Palencia</option>
                            <option value="Pontevedra">Pontevedra</option>
                            <option value="Salamanca">Salamanca</option>
                            <option value="Segovia">Segovia</option>
                            <option value="Sevilla">Sevilla</option>
                            <option value="Soria">Soria</option>
                            <option value="Tarragona">Tarragona</option>
                            <option value="Tenerife">Santa Cruz de Tenerife</option>
                            <option value="Teruel">Teruel</option>
                            <option value="Toledo">Toledo</option>
                            <option value="Valencia">Valencia</option>
                            <option value="Valladolid">Valladolid</option>
                            <option value="Vizcaya">Vizcaya</option>
                            <option value="Zamora">Zamora</option>
                            <option value="Zaragoza">Zaragoza</option>

                      </form:select>
                    </div>
                  </div>
                </div>
                <!-- Localidad-->
                <div class="form-group">
                  <label for="localidad" class="col-md-4 control-label labels">Localidad</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-map-pin" aria-hidden="true"></i></span>
                      <form:input path="direccioneses[0].localidad" id="localidad" name="localidad" placeholder="Localidad" class="form-control" type="text" required="true"/>
                    </div>
                  </div>
                </div>
                <!-- Codigo Postal-->
                <div class="form-group">
                  <label for="zip" class="col-md-4 control-label labels">C&oacute;digo postal</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-map-signs" aria-hidden="true"></i></span>
                      <form:input path="direccioneses[0].codPostal" name="zip" placeholder="Codigo postal" class="form-control" type="text" required="true"/>
                    </div>
                  </div>
                </div>
                <!-- Success message -->
                <div class="alert alert-success" role="alert" id="success_message" name="success_message mensajitos">Enviado <i class="glyphicon glyphicon-thumbs-up"></i> Se envi&oacute; correctamente.</div>
                <!-- Button -->
                <div class="form-group">
                  <label class="col-md-4 control-label"></label>
                </div>
              </fieldset>
            </div>
            <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Siguiente</button>
          </div>
        </div>
      </div>
      <div class="row setup-content" id="step-2" style="display: none;">
        <div class="col-xs-6 col-md-offset-3">
          <div class="col-md-12">
            <h3> Paso 2</h3>
            <div class="well form-horizontal formularioAgregar" id="contact_formEmpleado">
              <fieldset>
                <!-- Form Name -->
                <legend>Datos empleado</legend>

                <!-- Codigo Empleado-->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="codEmpleado">C&oacute;digo</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-barcode" aria-hidden="true"></i></span>
                      <form:input path="empleados.codEmpleado" required="true" id="codEmpleado" name="codEmpleado" placeholder="Codigo" class="form-control" type="text" patter="^([A][0-9]{3})$"/>
                    </div>
                  </div>
                </div>
                <!-- Salario -->
                <div class="form-group">
                  <label for="salario" class="col-md-4 control-label labels">Salario</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-eur" aria-hidden="true"></i></span>
                      <form:input path="empleados.salario" id="salario" name="salario" placeholder="Salario" class="form-control" type="text" required="true" pattern="^[0-9]{1,9}([,.][0-9]{1,9})?$"/>
                    </div>
                  </div>
                </div>
                <!--  Fecha Alta  -->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="fechaAlta">Fecha Alta</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                      <form:input path="empleados.fechaAlta" required="true" id="fechaAlta" name="fechaAlta" placeholder="yyyy/mm/dd" class="form-control" type="text" pattern="^\d{4}(?:/\d{1,2}){2}$"/>
                    </div>
                  </div>
                </div>
                <div class="alert alert-success" role="alert" id="success_message" name="success_message mensajitos">Enviado <i class="glyphicon glyphicon-thumbs-up"></i> Se envi&oacute; correctamente.</div>
                <!-- Button -->
                <div class="form-group">
                  <label class="col-md-4 control-label"></label>
                </div>
              </fieldset>
            </div>
            <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Siguiente</button>
          </div>
        </div>
      </div>
      <div class="row setup-content" id="step-3" style="display: none;">
        <div class="col-xs-6 col-md-offset-3">
          <div class="col-md-12">
            <h3> Paso 3</h3>
            <div class="well form-horizontal formularioAgregar" action=" " method="post" id="contact_adicionales">
              <fieldset>
                <!-- Form Name -->
                <legend>Datos adicionales</legend>s
                <!-- Departamento-->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="departamento">Departamento</label>
                  <div class="col-md-7 selectContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-folder-open" aria-hidden="true"></i></span>
                      <form:select path="empleados.departamentos.iddepartamento" id="departamento" name="departamento" class="form-control selectpicker" required="true">
                          <optgroup label="Departamentos">
                            <option value="1">Direcci&oacute;n</option>
                            <option value="2">Informaci&oacute;n</option>
                            <option value="3">Log&iacute;stica</option>
                            <option value="4">RRHH</option>
                          </optgroup>
                      </form:select>
                    </div>
                  </div>
                </div>
                <!-- Categoria-->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="categoria">Categoria</label>
                  <div class="col-md-7 selectContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-folder-open-o" aria-hidden="true"></i></span>
                      <form:select path="empleados.categorias.idcategorias" id="categoria" name="categoria" class="form-control selectpicker" required="true">
                              <optgroup label="Categoria">
                                <option value="1">Analista</option>
                                <option value="2">Master Universo</option>
                                <option value="3">Programador</option>
                                <option value="4">Recepcionista</option>
                                <option value="5">Secretario</option>
                                <option value="6">Técnico Recursos Humanos</option>
                              </optgroup>
                          </form:select>
                    </div>
                  </div>
                </div>
                <!-- Descripcion Categoria
                <div class="form-group">
                  <label for="descripcion" class="col-md-4 control-label labels">Descripci&oacute;n Categor&iacute;a</label>
                  <div class="col-md-7 inputGroupContainer">
                    <div class="input-group">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-edit"></i></span>
                      <form:input path="empleados.categorias.descripcion" id="descripcion" name="descripcion" placeholder="descripcion" class="form-control" type="text" required="true"/>
                    </div>
                  </div>
                </div>-->
                <button class="btn btn-success btn-lg pull-right" type="submit">Submit</button>
            </div>
          </div>
        </div>
    </form:form>

    </div>
  </div>
  <!-- Map Section -->
  <div id="map"></div>

  <!-- Footer -->
  <footer>
      <div class="container text-center">
          <p>Copyright &copy; Grupo 3 2017</p>
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


  <script src="http://servidordaw.hol.es/AgendaHTML/form/index_data/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26.js"></script>
  <script src="http://servidordaw.hol.es/AgendaHTML/form/index_data/jquery.js"></script>
  <script src="http://servidordaw.hol.es/AgendaHTML/form/index_data/bootstrap.js"></script>
  <script src="http://servidordaw.hol.es/AgendaHTML/form/index_data/bootstrapvalidator.js"></script>

  </body>

</html>
