package com.agenda.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.agenda.model.Personas;

@Repository

public class PersonasDao implements InterfaceDao<Personas> {
	
	@Autowired
	SessionFactory sessionFactory;

	public PersonasDao() {
		
	}
	
	public PersonasDao(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	@Transactional
	public List<Personas> list() {
		@SuppressWarnings("unchecked")
		List<Personas> listUser = (List<Personas>) sessionFactory.getCurrentSession()
				.createCriteria(Personas.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listUser;
	}
	@Transactional
	
	public  Personas getPersona(int id) {
		String hql = "from Personas where id="+id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Personas> listaPersonas = (List<Personas>) query.list();
		
		if (listaPersonas != null && !listaPersonas.isEmpty()) {
			return listaPersonas.get(0);
		}
	
		return null;
	}


	@Transactional
	public void saveOrUpdate(Personas t) {
		sessionFactory.getCurrentSession().saveOrUpdate(t);
		
	}


	@Transactional
	public void delete(Personas persona) {
		
		
		sessionFactory.getCurrentSession().delete(persona);
		sessionFactory.getCurrentSession().delete(persona.getEmpleados());
		
	}

	@Transactional
	public List<Personas> getNombre(String nombre) {
		String hql = "from Personas where nombre like '%" + nombre+"%'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Personas> listaPersonas = (List<Personas>) query.list();
		
		if (listaPersonas != null && !listaPersonas.isEmpty()) {
			return listaPersonas;
		}
		return null;
		
	}
	
	
	@Transactional
	public void saveOrUpdatePersonas(Personas p) {
		p.getTelefonoses().get(0).setPersonas(p);
		p.getDireccioneses().get(0).setPersonas(p);
		sessionFactory.getCurrentSession().saveOrUpdate(p);
		
	}
 
	

}
