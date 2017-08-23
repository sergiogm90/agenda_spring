package com.agenda.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.agenda.dao.InterfaceDao;
import com.agenda.dao.PersonasDao;
import com.agenda.model.Personas;

@Service
@Transactional
public class PersonasService {
	
	
	@Autowired
	private InterfaceDao<Personas> personasDAO;
	
	
	public List<Personas> list() {

		return personasDAO.list();
	}

	public List<Personas> getNombre(String nombre){
		return personasDAO.getNombre(nombre);
		
	}	
	
	public void saveOrUpdate(Personas persona) {
		persona.getDireccioneses().get(0).setPersonas(persona);
		persona.getTelefonoses().get(0).setPersonas(persona);
		personasDAO.saveOrUpdate(persona);

	}
	
	public Personas getPersona(int id){
		return personasDAO.getPersona(id);
	}
	public void delete(Personas p) {
		personasDAO.delete(p);
		

	}
	
	public List<Personas> getListNombre(String nombre){
		return personasDAO.getNombre(nombre);
		
	}
	
//Añadir personas
		public void saveOrUpdatePersonas(Personas p) {
			personasDAO.saveOrUpdatePersonas(p);
			
		}	


	
}
