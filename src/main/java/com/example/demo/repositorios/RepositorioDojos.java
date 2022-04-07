package com.example.demo.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.modelos.Dojo;

@Repository
public interface RepositorioDojos extends CrudRepository<Dojo,Long>
{
	List<Dojo> findAll();
	List<Dojo> findById(long id);
}
