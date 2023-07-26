package com.cleartravel.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cleartravel.dto.FareDTO;
import com.cleartravel.dto.FlightDTO;
import com.cleartravel.entity.Fare;
import com.cleartravel.entity.Flight;
import com.cleartravel.exception.ClearTravelException;
import com.cleartravel.repository.FlightRepository;

@Service
public class FlightServiceImpl implements FlightService{
	
	@Autowired
	FlightRepository flightRepository;
	
	@Override
	public List<FlightDTO> getAllFlights(){
		List<FlightDTO> listu = new ArrayList<>();
		Iterable<Flight> fromDB = flightRepository.findAll();
		fromDB.forEach(a->{
			FlightDTO d = new FlightDTO(a.getFlightNumber(), a.getAirline(), a.getWeekdays());
			listu.add(d);
		});
		return listu;
	}
	
	@Override
	public List<FlightDTO> getFlightDetailByFlightNumber(List<String> flightNumbers) throws ClearTravelException{
		List<FlightDTO> airlineDetailListToController = new ArrayList<>();
		Iterable<Flight> airlineDetailListTFromDB = flightRepository.getAirlineDetailByflightId(flightNumbers);
		if(airlineDetailListTFromDB!=null) {
			airlineDetailListTFromDB.forEach(a -> {
				FlightDTO dtoObj = new FlightDTO(a.getFlightNumber(), a.getAirline(), a.getWeekdays());
				airlineDetailListToController.add(dtoObj);
			});
		}
		else {
			throw new ClearTravelException("No Fare Details in the System");
		}
		return airlineDetailListToController;
	}
}
