package com.example.demo.servicios;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.demo.modelos.Dojo;
import com.example.demo.modelos.Ninja;
import com.example.demo.repositorios.RepositorioDojos;
import com.example.demo.repositorios.RepositorioNinjas;

@Service
public class Servicios 
{
	private final RepositorioNinjas repositorio_ninja;
	private final RepositorioDojos repositorio_dojo;
	
	public Servicios(RepositorioNinjas repositorio_ninja, RepositorioDojos repositorio_dojo) 
	{
		this.repositorio_ninja = repositorio_ninja;
		this.repositorio_dojo = repositorio_dojo;
	}
	
	 public Dojo save_dojo(Dojo dojo) 
	 {
		 return repositorio_dojo.save(dojo);
	 }
	 
	 public List<Dojo> allDojo() 
	 {
		 return repositorio_dojo.findAll();
	 }
	    
	 public Dojo find_dojo(Long id)
	 {
		 Optional<Dojo> optionalDojo = repositorio_dojo.findById(id);
		 if(optionalDojo.isPresent())
		 {
			 return optionalDojo.get();
		 }
		 else
		 {
			 return null;
		 }
	}
	 
	public Ninja save_ninja(Ninja ninja) 
	{
		return repositorio_ninja.save(ninja);
	}
	 
	public List<Ninja> allNinja() 
	{
		return repositorio_ninja.findAll();
	}
	
	public Ninja find_ninja(Long id)
	{
		 Optional<Ninja> optionalNinja = repositorio_ninja.findById(id);
		 if(optionalNinja.isPresent())
		 {
			 return optionalNinja.get();
		 }
		 else
		 {
			 return null;
		 }
	}
}
