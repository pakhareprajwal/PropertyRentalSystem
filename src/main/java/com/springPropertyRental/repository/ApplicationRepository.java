package com.springPropertyRental.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springPropertyRental.Model.Application;

@Repository
public interface ApplicationRepository extends JpaRepository<Application,Integer>
{

}
