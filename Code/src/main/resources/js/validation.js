$(document).ready(function() {
  $('#contact_form').bootstrapValidator({
      // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
      feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
      },
      fields: {
        /*

---------------------  DATOS PERSONALES --------------------------------
        */
        nombre: {
          validators: {
            notEmpty: {
              message: 'Introduce tu nombre'
            },
            regexp: {
              regexp: /^([A-z][A-Za-z]*\s*[A-Za-z]*)$/,
              message: 'Nombre o Nombre Compuesto'
            }
          }
        },
        primerApellido: {
          validators: {

            regexp: {
              //  /^(?=\S*['-])([a-zA-Z'-]+)$/
              regexp: /^([A-z][A-Za-z]*)$/,
              message: 'Apellido incorrecto'
            },
            notEmpty: {
              message: 'Introduce tu primer apellido'
            }
          }
        },
        segundoApellido: {
          validators: {

            regexp: {
              regexp: /^([A-z][A-Za-z]*)$/,
              message: 'Apellido incorrecto'
            },
            notEmpty: {
              message: 'Introduce tu segundo apellido'
            }
          }
        },
        dni: {
          validators: {
            notEmpty: {
              message: 'Introduce tu dni'
            },
            regexp: {
              regexp: /^\d{8}[a-zA-Z]$/,
              message: 'Dni incorrecto. Ejemplo: 511108873t'
            }
          }
        },
        fecha: {
          validators: {
            notEmpty: {
              message: 'Introduce tu fecha'
            },
            regexp: {
              regexp:  /^\d{4}-\d{2}-\d{2}$/,
              message: 'Fecha incorrecta yyyy-mm-dd'
            }
          }
        },
        telefono: {
          validators: {
            notEmpty: {
              message: 'Introduce tu telefono'
            },
            regexp: {
              regexp: /^([0-9]{9})$/,
              message: 'Telefono incorrecto'
            }
          }
        },
        direccion: {
          validators: {
            stringLength: {
              min: 3,
              message: 'Direccion incorrecta'
            },
            notEmpty: {
              message: 'Introduce tu direccion'
            }
          }
        },
        localidad: {
          validators: {
            stringLength: {
              min: 4,
              message: 'Localidad incorrecta'
            },
            notEmpty: {
              message: 'Introduce tu localidad'
            }
          }
        },
        provincia: {
          validators: {
            notEmpty: {
              message: 'Introduce tu provincia'
            }
          }
        },
        zip: {
          validators: {
            notEmpty: {
              message: 'Introduce tu codigo postal'
            },
            zipCode: {
              country: 'SP',
              message: 'Codigo postal incorrecto'
            }
          }
        },
        /*

---------------------  DATOS EMPLEADO --------------------------------
/^[A]{1}\s+[0-9]{3}$/
          */
        codigo: {
          validators: {
            notEmpty: {
              message: 'Introduce el codigo'
            },
            regexp: {
              regexp: /^[A]{1}\s+[0-9]{3}$/,
              message: 'Codigo incorrecto'
            }
          }
        },
        comment: {
          validators: {
            stringLength: {
              min: 10,
              max: 200,
              message: 'Minimo 10 caracteres y maximo 200'
            },
            notEmpty: {
              message: ''
            }
          }
        }
      }
    })
    .on('success.form.bv', function(e) {
      $('#success_message').slideDown({
        opacity: "show"
      }, "slow") // Do something ...
      $('#contact_form').data('bootstrapValidator').resetForm();

      // Prevent form submission
      e.preventDefault();

      // Get the form instance
      var $form = $(e.target);

      // Get the BootstrapValidator instance
      var bv = $form.data('bootstrapValidator');

      // Use Ajax to submit form data
      $.post($form.attr('action'), $form.serialize(), function(result) {
        console.log(result);
      }, 'json');
    });
  $('#contact_formEmpleado').bootstrapValidator({
      // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
      feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
      },
      fields: {
        /*

    ---------------------  DATOS EMPLEADO --------------------------------
              */
        codigo: {
          validators: {
            notEmpty: {
              message: 'Introduce el codigo'
            },
            regexp: {
              regexp: /^([A][0-9]{3})$/,
              message: 'Codigo incorrecto. Ejemplo: A187'
            }
          }
        },
        salario: {
          validators: {
            notEmpty: {
              message: 'Introduce el salario'
            },
            regexp: {
              regexp: /^[0-9]{1,9}([,.][0-9]{1,9})?$/,
              message: 'Codigo incorrecto, salario,salario con punto o coma'
            }
          }
        },
        fechaAlta: {
          validators: {
            notEmpty: {
              message: 'Introduce tu fecha'
            },
            regexp: {
              regexp: /^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1]) (2[0-3]|[01][0-9]):[0-5][0-9]$/,
              message: 'Fecha incorrecta 2014-02-04 12:34'
            }
          }
        }
      }
    })

    .on('success.form.bv', function(e) {
      $('#success_message').slideDown({
        opacity: "show"
      }, "slow") // Do something ...
      $('#contact_formEmpleado').data('bootstrapValidator').resetForm();

      // Prevent form submission
      e.preventDefault();

      // Get the form instance
      var $form = $(e.target);

      // Get the BootstrapValidator instance
      var bv = $form.data('bootstrapValidator');

      // Use Ajax to submit form data
      $.post($form.attr('action'), $form.serialize(), function(result) {
        console.log(result);
      }, 'json');
    });
  $('#contact_adicionales').bootstrapValidator({
      // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
      feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
      },
      fields: {
        /*

        ---------------------  DATOS EMPLEADO --------------------------------
                  */

        descripcion: {
          validators: {
            notEmpty: {
              message: 'Introduce tu descripcion'
            },
          }
        },
        categoria: {
          validators: {
            notEmpty: {
              message: 'Introduce tu categoria'
            },
            stringLength: {
              min: 5,
              max: 200,
              message: 'Minimo 5 caracteres y maximo 200'
            },
          }
        }
      }
    })

    .on('success.form.bv', function(e) {
      $('#success_message').slideDown({
        opacity: "show"
      }, "slow") // Do something ...
      $('#contact_formEmpleado').data('bootstrapValidator').resetForm();

      // Prevent form submission
      e.preventDefault();

      // Get the form instance
      var $form = $(e.target);

      // Get the BootstrapValidator instance
      var bv = $form.data('bootstrapValidator');

      // Use Ajax to submit form data
      $.post($form.attr('action'), $form.serialize(), function(result) {
        console.log(result);
      }, 'json');
    });

});
