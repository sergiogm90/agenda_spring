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

    <title>Modificar Empleados</title>

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

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="index">
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

    <!-- Download Section -->
    <section id="about" class="">
      <div class="container col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
  	    <div class="row">
          <div class="col-md-12">
          <h4 class="col-md-offset-5 col-xs-offset-4">Datos a modificar</h4>
          <div class="table-responsive tablita">


  <table id="mytable" class="table table-bordred table-striped tablita">

		         <form:form action="guardar" method="post" modelAttribute="persona">
				    <form:hidden path="idpersonas" />
				    <form:hidden path="empleados.idempleados"/>
				    <form:hidden path="telefonoses[0].idtelefonos"/>
				    <form:hidden path="direccioneses[0].iddirecciones"/>
				    <form:hidden path="empleados.categorias.idcategorias"/>
				    <form:hidden path="empleados.departamentos.iddepartamento"/>
				    <form:hidden  path="empleados.categorias.descripcion"/>

   <tbody>
    		<tr>
					<td class="dato col-md-4 col-xs-6">Nombre:</td>
          <td class="respuesta"><form:input path="nombre" value="${persona.nombre}"/></td>
				</tr>
				<tr>
					<td class="dato col-md-4 col-xs-6">Primer Apellido:</td>
					<td class="respuesta"><form:input path="apellido1" value="${persona.apellido1}"/></td>
				</tr>
				<tr>
					<td class="dato col-md-4 col-xs-6">Segundo Apellido:</td>
					<td class="respuesta"><form:input path="apellido2" value="${persona.apellido2}" /></td>
				</tr>

				<tr>
					<td class="dato col-md-4 col-xs-6">Dni:</td>
					<td class="respuesta"><form:input path="dni" value="${persona.dni}" /></td>
				</tr>
				<tr>
					<td class="dato col-md-4 col-xs-6">Fecha Nacimiento</td>
					<td class="respuesta"><form:input path="fechaNacimiento" value="${persona.fechaNacimiento}" /></td>
				</tr>
				<tr>
					<td class="dato col-md-4 col-xs-6">Direcci&oacute;n:</td>
					<td class="respuesta"><form:input path="direccioneses[0].direccion" value="${persona.direccioneses[0].direccion}"/></td>
				</tr>
				<tr>
					<td class="dato col-md-4 col-xs-6">C&oacute;digo Postal:</td>
					<td><form:input path="direccioneses[0].codPostal" value="${persona.direccioneses[0].codPostal}"/></td>
				</tr>
				<tr>
					<td class="dato col-md-4 col-xs-6">Localidad:</td>
					<td class="respuesta"><form:input path="direccioneses[0].localidad" value="${persona.direccioneses[0].localidad}"/></td>
				</tr>
				<tr>
					<td class="dato col-md-4 col-xs-6">Provincia:</td>
					<td class="respuesta"><form:input path="direccioneses[0].provincia" value="${persona.direccioneses[0].provincia}"/></td>
				</tr>
				<tr>
					<td class="dato col-md-4 col-xs-6">Tel&eacute;fono:</td>
					<td><form:input path="telefonoses[0].telefono" value="${persona.telefonoses[0].telefono}"/></td>
				</tr>
				<tr>
					<td class="dato col-md-4 col-xs-6">CodEmpleado:</td>
					<td class="respuesta"><form:input path="empleados.codEmpleado" value="${persona.empleados.codEmpleado}"/></td>
				</tr>
				<tr>
					<td class="dato col-md-6 col-xs-6">Salario:</td>
					<td class="respuesta"><form:input path="empleados.salario" value="${persona.empleados.salario}"/></td>
				</tr>
				<tr>
					<td class="dato col-md-6 col-xs-6">Fecha Alta:</td>
					<td class="respuesta"><form:input path="empleados.fechaAlta" value="${persona.empleados.fechaAlta}"/></td>
				</tr>

				<tr>
					<td class="dato col-md-6 col-xs-6">Departamento:</td>
					<td class="respuesta"><form:input path="empleados.departamentos.nombre" value="${persona.empleados.departamentos.nombre}"/></td>
				</tr>
				<tr>
					<td class="dato col-md-6 col-xs-6">Categoria:</td>
					<td class="respuesta"><form:input path="empleados.categorias.nombre" value="${persona.empleados.categorias.nombre}"/></td>
				</tr>
				<tr>
          <td colspan="2" align="center"><input type="submit"
            value="Guardar Registro"></td>
        </tr>
				
				
			</form:form>
      </table>
     </div>
    </div>
  </div>
</div>


  <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
        <div class="modal-dialog">
      <div class="modal-content">
            <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
          <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
        </div>
            <div class="modal-body">
            <div class="form-group">
          <input class="form-control " type="text" placeholder="Mohsin">
          </div>
          <div class="form-group">

          <input class="form-control " type="text" placeholder="Irshad">
          </div>
          <div class="form-group">
          <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>


          </div>
        </div>
            <div class="modal-footer ">
          <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Actualizar</button>
        </div>
          </div>
      <!-- /.modal-content -->
    </div>
        <!-- /.modal-dialog -->
      </div>



      <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
        <div class="modal-dialog">
      <div class="modal-content">
            <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
          <h4 class="modal-title custom_align" id="Heading">Borrar este registro</h4>
        </div>
            <div class="modal-body">

         <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> ¿Esta seguro?</div>

        </div>
          <div class="modal-footer ">
          <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Si</button>
          <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
        </div>
          </div>
      <!-- /.modal-content -->
    </div>
        <!-- /.modal-dialog -->
      </div>

</section>



    
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

</html>
