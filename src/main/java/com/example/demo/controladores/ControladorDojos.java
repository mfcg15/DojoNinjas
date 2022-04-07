package com.example.demo.controladores;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.modelos.Dojo;
import com.example.demo.servicios.Servicios;

@Controller
@RequestMapping("/dojos")
public class ControladorDojos 
{
	private final Servicios servicio;

	public ControladorDojos(Servicios servicio) 
	{
		this.servicio = servicio;
	}
	
	@GetMapping("/new")
	public String registro_dojo(@ModelAttribute("dojo") Dojo dojo)
	{
		return "dojo.jsp";
	}
	
	@PostMapping("/create")
	public String create(@Valid @ModelAttribute("usuario") Dojo dojo,
						 BindingResult result)
	{
		
		if(result.hasErrors())
		{
			return "dojo.jsp";
		}
		else
		{
			servicio.save_dojo(dojo);
			return "redirect:/ninjas/new";
		}
	
	}
	
	@GetMapping("/{id}")
	public String mostrar_dojo(@PathVariable("id") Long id, Model model)
	{
		Dojo one_dojo =  servicio.find_dojo(id);
		model.addAttribute("dojo",one_dojo);
		return "show.jsp";
	}
}
