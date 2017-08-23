package com.agenda.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.agenda.model.Personas;
import com.agenda.services.PersonasService;



@Controller
public class PersonasController {
	
	@Autowired
	PersonasService personaService;
	

	
	@RequestMapping("/listar")
	public ModelAndView handleRequest() throws Exception {
		List<Personas> listUsers = personaService.list();
		ModelAndView model = new ModelAndView("PersonList");
		model.addObject("personList", listUsers);
		return model;
	}
	@RequestMapping("/listaMostrar")
	public ModelAndView mostrar() throws Exception {
		List<Personas> listUsers = personaService.list();
		ModelAndView model = new ModelAndView("busqueda");
		model.addObject("personList", listUsers);
		return model;
	}

	@RequestMapping("/search")
	public ModelAndView searchPersona(@ModelAttribute Personas persona) {
		List<Personas> listaPersonas = personaService.getListNombre(persona.getNombre());
		ModelAndView model= new ModelAndView("PersonList");
		model.addObject("personList", listaPersonas);
		return model;
	}
	
	@RequestMapping("/")
	public ModelAndView search() {
		ModelAndView model= new ModelAndView("index");
		model.addObject("persona", new Personas());
		return model;
}
	@RequestMapping("/index")
	public ModelAndView move() {
		ModelAndView model= new ModelAndView("index");
		model.addObject("persona", new Personas());
		return model;
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView editUser(HttpServletRequest request) {
		System.out.println("-----Entro al metodo edit");
		int personaId = Integer.parseInt(request.getParameter("id"));
		
		Personas persona = personaService.getPersona(personaId);
		ModelAndView model = new ModelAndView("UserForm");
		model.addObject("persona", persona);
		return model;		
	}
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpServletRequest request) {
		System.out.println("-----Entro al metodo delete");
		int personId = Integer.parseInt(request.getParameter("id"));
		Personas persona = personaService.getPersona(personId);
		personaService.delete(persona);
		return new ModelAndView("redirect:/listar");		
	}
	
	@RequestMapping(value ="/guardar", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute Personas persona , BindingResult result) {
		System.out.println("-----Entro al metodo save");
		personaService.saveOrUpdate(persona);
		System.out.println("-----Salgo del metodo save");
		
		
		return new ModelAndView("redirect:/listar");
	}
	
}
