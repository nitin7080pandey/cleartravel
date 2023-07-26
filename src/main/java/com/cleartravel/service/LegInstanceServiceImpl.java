package com.cleartravel.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cleartravel.dto.FlightBookingDetailDTO;
import com.cleartravel.dto.FlightLegDTO;
import com.cleartravel.dto.LegInstanceDTO;
import com.cleartravel.entity.Booking;
import com.cleartravel.entity.FlightLeg;
import com.cleartravel.entity.LegInstance;
import com.cleartravel.exception.ClearTravelException;
import com.cleartravel.repository.LegInstanceRepository;

@Service
public class LegInstanceServiceImpl implements LegInstanceService {

	
	@Autowired
	LegInstanceRepository legInstanceRepository;
	
	@Override
	public List<LegInstanceDTO> getLegInstanceByFlightNumberAndjourneyDate(String flightNumber, LocalDate journeyDate) throws ClearTravelException {
		
		Iterable<LegInstance> instanceFromDBList = legInstanceRepository
				.findLegInstanceByFlightNumberAndDate(flightNumber, journeyDate);
		List<LegInstanceDTO> instanceList = new ArrayList<>();
		instanceFromDBList.forEach(instance -> {
			LegInstanceDTO l = new LegInstanceDTO(instance.getSerialNumber(), instance.getFlightNumber(),
					instance.getLegNumber(), instance.getDate(), instance.getNumberOfAvailableSeats(),
					instance.getAirplaneTypeName(), instance.getDepartureAirportCode(), instance.getDepartureTime(),
					instance.getArrivalAirportCode(), instance.getArrivalTime());
			instanceList.add(l);
		});

		if (instanceList.isEmpty()) {
			throw new ClearTravelException("No Such Leg Found");
		}

		return instanceList;
	}
	
	@Override
	public HashMap<Integer, Integer> getSeatAvailableByFlightAndJourneyDate(String flightNumber, LocalDate journeyDate) throws ClearTravelException{
		Iterable<LegInstance> instanceFromDBList = legInstanceRepository.findLegInstanceByFlightNumberAndDate(flightNumber, journeyDate);
		HashMap<Integer, Integer> legSeatAvailbleMap = new HashMap<>();
		instanceFromDBList.forEach(i->legSeatAvailbleMap.put(i.getLegNumber(), i.getNumberOfAvailableSeats()));
		
		if (legSeatAvailbleMap.isEmpty()) {
			throw new ClearTravelException("No Such Leg Found");
		}

		return legSeatAvailbleMap;
		
		//return instanceFromDB.orElseThrow(()-> new ClearTravelException("No Such Leg Found")).getNumberOfAvailableSeats();
	}
	
	
	
	@Override
	public Integer editLegInstanceById(LegInstanceDTO dto) throws ClearTravelException{
		Optional<LegInstance> instanceFromDB = Optional.of(legInstanceRepository.findLegInstanceByFlightNumberDateAndLegNumber(dto.getFlightNumber(), dto.getDate(),dto.getLegNumber()));
		LegInstance lInstance = instanceFromDB.orElseThrow(()-> new ClearTravelException("No Such Leg Found"));
		lInstance.setAirplaneTypeName(dto.getAirplaneTypeName());
		lInstance.setArrivalAirportCode(dto.getArrivalAirportCode());
		lInstance.setArrivalTime(dto.getArrivalTime());
		lInstance.setDate(dto.getDate());
		lInstance.setDepartureAirportCode(dto.getDepartureAirportCode());
		lInstance.setDepartureTime(dto.getDepartureTime());
		lInstance.setFlightNumber(dto.getFlightNumber());
		lInstance.setLegNumber(dto.getLegNumber());
		lInstance.setNumberOfAvailableSeats(dto.getNumberOfAvailableSeats());
		lInstance.setSerialNumber(dto.getSerialNumber());
		legInstanceRepository.save(lInstance);
		
		return lInstance.getSerialNumber();
		
	}
	
	
	
	@Override
	public List<LegInstanceDTO> getAllLegInstance() throws ClearTravelException{
		List<LegInstanceDTO> legListToController = new ArrayList<>();
		Iterable<LegInstance> legListTFromDB = legInstanceRepository.findAll();
		legListTFromDB.forEach(a ->{
			LegInstanceDTO dtoObj = new LegInstanceDTO(a.getSerialNumber(), a.getFlightNumber(), a.getLegNumber(),
					a.getDate(), a.getNumberOfAvailableSeats(), a.getAirplaneTypeName(), a.getDepartureAirportCode(),
					a.getDepartureTime(), a.getArrivalAirportCode(), a.getArrivalTime());
			legListToController.add(dtoObj);
		});
		return legListToController;
	}
	
	@Override
	public List<LegInstanceDTO> getLegbytravelDateAndAirport(FlightBookingDetailDTO detail) throws ClearTravelException{
		List<LegInstanceDTO> legListToController = new ArrayList<>();
		Iterable<LegInstance> legListTFromDB = legInstanceRepository.findLegIntancebyDateAndAiport(detail.getDateOfFlight(),detail.getDepartureAirportCode(),detail.getArrivalAirportCode());
		legListTFromDB.forEach(a ->{
			LegInstanceDTO dtoObj = new LegInstanceDTO(a.getSerialNumber(), a.getFlightNumber(), a.getLegNumber(),
					a.getDate(), a.getNumberOfAvailableSeats(), a.getAirplaneTypeName(), a.getDepartureAirportCode(),
					a.getDepartureTime(), a.getArrivalAirportCode(), a.getArrivalTime());
			legListToController.add(dtoObj);
		});
		return legListToController;
	}
	
	
	@Override
	public LegInstance getLegbyflightNumbertravelDateAndAirport(String flightNumber,LocalDate travelDate,Integer legNumber) throws ClearTravelException{
		
		Optional<LegInstance> instanceFromDB = Optional.ofNullable(legInstanceRepository.findLegInstanceByFlightNumberDateAndLegNumber(flightNumber, travelDate,legNumber));
		LegInstance lInstance = instanceFromDB.orElseThrow(()-> new ClearTravelException("No Such Leg Found"));
		return lInstance;
	}
	
	@Override
	public List<LegInstanceDTO> addAllLegIntance(List<LegInstanceDTO> flightLegs) throws ClearTravelException {
		List<LegInstance> legInstanceList = flightLegs.stream().map(f-> new LegInstance(f.getSerialNumber(), f.getFlightNumber(), f.getLegNumber(), f.getDate(), f.getNumberOfAvailableSeats(),
				f.getAirplaneTypeName(), f.getDepartureAirportCode(), f.getDepartureTime(), f.getArrivalAirportCode(), f.getArrivalTime())).collect(Collectors.toList());
		
		return legInstanceRepository.saveAll(legInstanceList).stream().map(f-> new LegInstanceDTO(f.getSerialNumber(), f.getFlightNumber(), f.getLegNumber(), f.getDate(),
				f.getNumberOfAvailableSeats(), f.getAirplaneTypeName(), f.getDepartureAirportCode(), f.getDepartureTime(),
				f.getArrivalAirportCode(), f.getArrivalTime())).collect(Collectors.toList());
	}
	
}
