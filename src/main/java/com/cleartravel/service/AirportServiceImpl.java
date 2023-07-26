package com.cleartravel.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cleartravel.dto.AirportDTO;
import com.cleartravel.entity.Airport;
import com.cleartravel.exception.ClearTravelException;
import com.cleartravel.repository.AirportRepository;

@Service
public class AirportServiceImpl implements AirportService {

	@Autowired
	AirportRepository airportRepo;
	
	@Override
	public List<AirportDTO> getAllAirports() throws ClearTravelException{
		List<AirportDTO> airportListToController = new ArrayList<>();
		Iterable<Airport> airportListTFromDB = airportRepo.findAll();
		airportListTFromDB.forEach(a->{
			AirportDTO dtoObj = new AirportDTO(a.getAirportSrId(), a.getAirportCode(), a.getAirportName(), a.getAirportCity());
			airportListToController.add(dtoObj);
		});
		return airportListToController;
	}
}
