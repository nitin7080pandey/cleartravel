package com.cleartravel.service;

import java.util.List;

import com.cleartravel.dto.FlightDTO;
import com.cleartravel.exception.ClearTravelException;

public interface FlightService {

	public List<FlightDTO> getAllFlights();

	List<FlightDTO> getFlightDetailByFlightNumber(List<String> flightNumbers) throws ClearTravelException;
}
