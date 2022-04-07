package com.example.demo.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.modelos.Ninja;

@Repository
public interface RepositorioNinjas extends CrudRepository<Ninja,Long>
{
	List<Ninja> findAll();
	List<Ninja> findById(long id);
}
