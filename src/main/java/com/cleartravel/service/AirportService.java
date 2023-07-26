package com.cleartravel.service;

import java.util.List;

import com.cleartravel.dto.AirportDTO;
import com.cleartravel.exception.ClearTravelException;

public interface AirportService {

	public List<AirportDTO> getAllAirports() throws ClearTravelException;

}
