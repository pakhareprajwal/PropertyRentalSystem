package com.springPropertyRental.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springPropertyRental.Model.User;
import java.util.List;

@Repository
public interface userrepo extends JpaRepository<User, Integer>
{
	public User findByEmail(String email);
	
	public User findByEmailAndPassword(String email,String password);
}
