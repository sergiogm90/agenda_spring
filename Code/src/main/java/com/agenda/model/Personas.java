package com.agenda.model;

import java.util.ArrayList;

// default package
// Generated 07-jul-2017 8:33:19 by Hibernate Tools 5.2.3.Final

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;


/**
 * Personas generated by hbm2java
 */
@Entity
@Table(name = "personas", catalog = "agenda")
public class Personas implements java.io.Serializable {

	private int idpersonas;
	private Empleados empleados;
	private String nombre;
	private String apellido1;
	private String apellido2;
	private String dni;
	private Date fechaNacimiento;
	private List<Direcciones> direccioneses = new ArrayList<Direcciones>(0);
	private List<Telefonos> telefonoses = new ArrayList<Telefonos>(0);

	public Personas() {
	}

	public Personas(String nombre, String apellido1) {
		this.nombre = nombre;
		this.apellido1 = apellido1;
	}

	public Personas(Empleados empleados, String nombre, String apellido1, String apellido2, String dni,
			Date fechaNacimiento, List<Direcciones> direccioneses, List<Telefonos> telefonoses) {
		this.empleados = empleados;
		this.nombre = nombre;
		this.apellido1 = apellido1;
		this.apellido2 = apellido2;
		this.dni = dni;
		this.fechaNacimiento = fechaNacimiento;
		this.direccioneses = direccioneses;
		this.telefonoses = telefonoses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idpersonas", unique = true, nullable = false)
	public int  getIdpersonas() {
		return this.idpersonas;
	}

	public void setIdpersonas(int idpersonas) {
		this.idpersonas = idpersonas;
	}

	//@ManyToOne(fetch = FetchType.LAZY,targetEntity = Empleados.class)
	@ManyToOne(cascade={CascadeType.ALL})
	@JoinColumn(name = "idEmpleado")
	public Empleados getEmpleados() {
		return this.empleados;
	}

	public void setEmpleados(Empleados empleados) {
		this.empleados = empleados;
	}

	@Column(name = "nombre", nullable = false, length = 45)
	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Column(name = "apellido1", nullable = false, length = 45)
	public String getApellido1() {
		return this.apellido1;
	}

	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}

	@Column(name = "apellido2", length = 45)
	public String getApellido2() {
		return this.apellido2;
	}

	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}

	@Column(name = "dni", length = 20)
	public String getDni() {
		return this.dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "fechaNacimiento", length = 10)
	public Date getFechaNacimiento() {
		return this.fechaNacimiento;
	}

	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "personas",cascade={CascadeType.ALL})
	public List<Direcciones> getDireccioneses() {
		return this.direccioneses;
	}

	public void setDireccioneses(List<Direcciones> direccioneses) {
		this.direccioneses = direccioneses;
	}
	
	
	@OneToMany( mappedBy = "personas",cascade={CascadeType.ALL})
	@LazyCollection(LazyCollectionOption.FALSE)
	public List<Telefonos> getTelefonoses() {
		return this.telefonoses;
	}

	public void setTelefonoses(List<Telefonos> telefonoses) {
		this.telefonoses = telefonoses;
	}

}