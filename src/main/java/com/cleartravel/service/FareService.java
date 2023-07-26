package com.cleartravel.service;

import java.util.List;

import com.cleartravel.dto.FareDTO;
import com.cleartravel.entity.Fare;
import com.cleartravel.entity.compositekey.FareCompositeId;
import com.cleartravel.exception.ClearTravelException;

public interface FareService {

	FareDTO getFareById(FareCompositeId id) throws ClearTravelException;

	String addFare(FareDTO fareDto) throws ClearTravelException;

	String deleteFare(FareDTO fareDto) throws ClearTravelException;

	List<FareDTO> getAllFare() throws ClearTravelException;

	List<FareDTO> getFareByFlightIdsAndClass(List<String> flightIds,String passengerClass) throws ClearTravelException;

}
