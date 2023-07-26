package com.cleartravel.service;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;

import com.cleartravel.dto.FlightBookingDetailDTO;
import com.cleartravel.dto.FlightLegDTO;
import com.cleartravel.dto.LegInstanceDTO;
import com.cleartravel.entity.LegInstance;
import com.cleartravel.exception.ClearTravelException;

public interface LegInstanceService {

	List<LegInstanceDTO> getAllLegInstance() throws ClearTravelException;

	List<LegInstanceDTO> getLegbytravelDateAndAirport(FlightBookingDetailDTO detail) throws ClearTravelException;

	List<LegInstanceDTO> addAllLegIntance(List<LegInstanceDTO> flightLegs) throws ClearTravelException;

	Integer editLegInstanceById(LegInstanceDTO dto) throws ClearTravelException;

	List<LegInstanceDTO> getLegInstanceByFlightNumberAndjourneyDate(String flightNumber, LocalDate journeyDate)
			throws ClearTravelException;

	HashMap<Integer, Integer> getSeatAvailableByFlightAndJourneyDate(String flightNumber, LocalDate journeyDate)
			throws ClearTravelException;

	LegInstance getLegbyflightNumbertravelDateAndAirport(String flightNumber, LocalDate travelDate,
			Integer legNumber) throws ClearTravelException;

}
