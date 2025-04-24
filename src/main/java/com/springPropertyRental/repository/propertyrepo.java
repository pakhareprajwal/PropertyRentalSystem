package com.springPropertyRental.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springPropertyRental.Model.Property;

@Repository
public interface propertyrepo extends JpaRepository<Property, Integer>
{
	List<Property> findByTitleContainingIgnoreCaseOrAddressContainingIgnoreCase(String title, String address);

}
