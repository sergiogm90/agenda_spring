package com.agenda.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.agenda.model.Departamentos;
import com.agenda.model.Empleados;
import com.agenda.model.Personas;
import com.agenda.services.PersonasService;



@Controller
public class FormController {
	@Autowired
	private PersonasService personasService;
		
		@RequestMapping("/newPersona")
	    public String initForm(ModelMap model) {
	        System.out.println("-- Accedo a la página de Form");
	        model.addAttribute("persona",new Personas());
			return "registro";
	    }
		
		
		@RequestMapping(value = "/savePersona", method = RequestMethod.POST)
		public String saveUser(@ModelAttribute Personas p,BindingResult result) {
			personasService.saveOrUpdatePersonas(p);
			return "redirect:/";
		}
		
}
