package com.cleartravel.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cleartravel.dto.BookingDTO;
import com.cleartravel.dto.FareDTO;
import com.cleartravel.entity.Booking;
import com.cleartravel.entity.Fare;
import com.cleartravel.entity.compositekey.FareCompositeId;
import com.cleartravel.exception.ClearTravelException;
import com.cleartravel.repository.FareRepository;

@Service
public class FareServiceImpl implements FareService {

	@Autowired
	FareRepository fareRepository;
	
	
	@Override
	public FareDTO getFareById(FareCompositeId id) throws ClearTravelException {
		Optional<Fare> fromDB = fareRepository.findById(id);
		Fare fareForFlight = fromDB.orElseThrow(()->new ClearTravelException("No such details exist for flight :"+id.getFlightNumber()));	
		return new FareDTO(fareForFlight.getFlightNumber(), fareForFlight.getFareCode(), fareForFlight.getAmount(), fareForFlight.getRestrictions());
	}
	
	@Override
	public String addFare(FareDTO fareDto) throws ClearTravelException {
		Optional<Fare> fromDB = fareRepository.findById(new FareCompositeId(fareDto.getFlightNumber(), fareDto.getFareCode()));
		if(fromDB.isPresent()) {
			throw new ClearTravelException("fare for the flight already exist");
		}
		else {
			Fare toDB = new Fare(fareDto.getFlightNumber(), fareDto.getFareCode(), fareDto.getAmount(), fareDto.getRestrictions());
			fareRepository.save(toDB);
		}
		return fareDto.getFlightNumber()+"'s fare details saved successfully.";
	}
	
	@Override
	public String deleteFare(FareDTO fareDto) throws ClearTravelException {
		Optional<Fare> fromDB = fareRepository.findById(new FareCompositeId(fareDto.getFlightNumber(), fareDto.getFareCode()));
		Fare fareForFlight = fromDB.orElseThrow(()->new ClearTravelException("No such details exist for flight :"+fareDto.getFlightNumber()));
		fareRepository.delete(fareForFlight);
		return "Fare details deleted for flight: "+fareDto.getFlightNumber();
	}
	
	@Override
	public List<FareDTO> getAllFare() throws ClearTravelException {
		List<FareDTO> fareListToController = new ArrayList<>();
		Iterable<Fare> fareListTFromDB = fareRepository.findAll();
		if(fareListTFromDB!=null) {
			fareListTFromDB.forEach(a -> {
				FareDTO dtoObj = new FareDTO(a.getFlightNumber(), a.getFareCode(), a.getAmount(), a.getRestrictions());
				fareListToController.add(dtoObj);
			});
		}
		else {
			throw new ClearTravelException("No Fare Details in the System");
		}
		return fareListToController;
		
	}
	
	@Override
	public List<FareDTO> getFareByFlightIdsAndClass(List<String> flightIds, String passengerClass) throws ClearTravelException {
		List<FareDTO> fareListToController = new ArrayList<>();
		Iterable<Fare> fareListTFromDB = fareRepository.getFarebyflightIdAndClass(flightIds, passengerClass);
		if(fareListTFromDB!=null) {
			fareListTFromDB.forEach(a -> {
				FareDTO dtoObj = new FareDTO(a.getFlightNumber(), a.getFareCode(), a.getAmount(), a.getRestrictions());
				fareListToController.add(dtoObj);
			});
		}
		else {
			throw new ClearTravelException("No Fare Details in the System");
		}
		return fareListToController;
	}
}
