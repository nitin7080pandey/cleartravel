package com.cleartravel.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cleartravel.entity.Fare;
import com.cleartravel.entity.Flight;

public interface FlightRepository extends JpaRepository<Flight, String>{

	@Query("select f from Flight f where f.flightNumber in :flightId")
	List<Flight> getAirlineDetailByflightId(@Param("flightId") List<String> flightIds);
}
