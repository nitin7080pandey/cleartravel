package com.cleartravel.service;

import java.awt.event.WindowFocusListener;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cleartravel.dto.BookingDTO;
import com.cleartravel.dto.FlightBookingDetailDTO;
import com.cleartravel.dto.FlightLegDTO;
import com.cleartravel.dto.LegInstanceDTO;
import com.cleartravel.entity.Booking;
import com.cleartravel.entity.FlightLeg;
import com.cleartravel.entity.compositekey.FlightLegCompositeKey;
import com.cleartravel.exception.ClearTravelException;
import com.cleartravel.repository.FlightLegRepository;

@Service
public class FlightLegServiceImpl implements FlightLegService {
	
	
	@Autowired
	FlightLegRepository flightLegRepo;
	
	@Override
	public Integer getMaxSeatInTheflight(LegInstanceDTO leg) throws ClearTravelException{
		Optional<FlightLeg> fromDB = flightLegRepo.findById(new FlightLegCompositeKey(leg.getFlightNumber(),leg.getLegNumber(),leg.getDate().getDayOfWeek()));
		return fromDB.orElseThrow(()-> new ClearTravelException("No Such Flight Leg exist in system")).getTotalNumberOfSeats();
	}
	
	@Override
	public FlightLeg addFlightLeg(FlightLegDTO flightLeg) throws ClearTravelException {
		Optional<FlightLeg> fromDB = flightLegRepo.findById(new FlightLegCompositeKey(flightLeg.getFlightNumber(), flightLeg.getLegNumber(),flightLeg.getDayOfWeek()));
		if(!fromDB.isEmpty()) {
			throw new ClearTravelException("Flight Leg Already Exist in The System");
		}
		else {
			FlightLeg toDB = new FlightLeg(flightLeg.getFlightNumber(), flightLeg.getLegNumber(),flightLeg.getAirplaneTypeName(),flightLeg.getTotalNumberOfSeats(),
					flightLeg.getDepartureAirportCode(), flightLeg.getScheduledDepartureTime(), flightLeg.getArrivalAirportCode(),
					flightLeg.getScheduledArrivalTime(), flightLeg.getDayOfWeek());
			return flightLegRepo.save(toDB);
		}
		
	}
	
	@Override
	public List<FlightLegDTO> getAllFlightLeg() throws ClearTravelException {
		List<FlightLegDTO> flightLegListToController = new ArrayList<>();
		Iterable<FlightLeg> flightLegListTFromDB = flightLegRepo.findAll();
		flightLegListTFromDB.forEach(flightLeg ->{
			FlightLegDTO dtoObj = new FlightLegDTO(flightLeg.getFlightNumber(), flightLeg.getLegNumber(),flightLeg.getAirplaneTypeName(),flightLeg.getTotalNumberOfSeats(),
					flightLeg.getDepartureAirportCode(), flightLeg.getScheduledDepartureTime(), flightLeg.getArrivalAirportCode(),
					flightLeg.getScheduledArrivalTime(), flightLeg.getDayOfWeek());
			flightLegListToController.add(dtoObj);
		});
		return flightLegListToController;
	}
	
	
	@Override
	public List<FlightLegDTO> getFlightLegByDayOFWeek(FlightBookingDetailDTO input) throws ClearTravelException{
		List<FlightLegDTO> flightLegListToController = new ArrayList<>();
		Iterable<FlightLeg> flightLegListTFromDB = flightLegRepo.getFlightLegByDayOfWeek(input.getDateOfFlight().getDayOfWeek(),input.getDepartureAirportCode(),input.getArrivalAirportCode());
		flightLegListTFromDB.forEach(flightLeg ->{
			FlightLegDTO dtoObj = new FlightLegDTO(flightLeg.getFlightNumber(), flightLeg.getLegNumber(),flightLeg.getAirplaneTypeName(),flightLeg.getTotalNumberOfSeats(),
					flightLeg.getDepartureAirportCode(), flightLeg.getScheduledDepartureTime(), flightLeg.getArrivalAirportCode(),
					flightLeg.getScheduledArrivalTime(), flightLeg.getDayOfWeek());
			flightLegListToController.add(dtoObj);
		});
		return flightLegListToController;
	}

}
