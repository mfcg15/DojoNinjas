package com.example.demo.controladores;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.modelos.Dojo;
import com.example.demo.modelos.Ninja;
import com.example.demo.servicios.Servicios;

@Controller
@RequestMapping("/ninjas")
public class ControladorNinjas 
{
	private final Servicios servicio;

	public ControladorNinjas(Servicios servicio) 
	{
		this.servicio = servicio;
	}

	@GetMapping("/new")
	public String registro_dojo(@ModelAttribute("ninja") Ninja ninja,Model model)
	{
		List<Dojo> lista_dojos = servicio.allDojo();
		model.addAttribute("dojos",lista_dojos);
		return "ninja.jsp";
	}
	
	@PostMapping("/create")
	public String create(@Valid @ModelAttribute("ninja") Ninja ninja,
						 BindingResult result)
	{
		
		if(result.hasErrors())
		{
			return "ninja.jsp";
		}
		else
		{
			servicio.save_ninja(ninja);
			return "redirect:/dojos/"+ninja.getDojo().getId();
		}
	
	}
	
}
