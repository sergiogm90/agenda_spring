package com.agenda.dao;

import java.util.List;

import com.agenda.model.Personas;



public interface InterfaceDao<T> {

public List<T> list();
	
	public  T getPersona(int id);
	
	public void saveOrUpdate(T t);
	
	public void delete(T t);
	
	public List<Personas> getNombre(String nombre);
	public void saveOrUpdatePersonas(Personas p);
	
}
