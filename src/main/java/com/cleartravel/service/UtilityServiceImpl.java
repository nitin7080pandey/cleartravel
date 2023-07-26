package com.cleartravel.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cleartravel.dto.BookingDTO;
import com.cleartravel.dto.FareDTO;
import com.cleartravel.dto.FlightBookingDetailDTO;
import com.cleartravel.dto.FlightDTO;
import com.cleartravel.dto.FlightLegDTO;
import com.cleartravel.dto.LegInstanceDTO;
import com.cleartravel.entity.LegInstance;
import com.cleartravel.exception.ClearTravelException;

@Service
public class UtilityServiceImpl implements UtilityService {

	
	@Autowired
	LegInstanceService legInstanceService;
	
	@Autowired
	FlightLegService flightLegService;
	
	@Autowired
	FareService fareService;
	
	@Autowired
	FlightService flightService;
	
	@Autowired
	BookingService bookingService;
	
	@Override
	public List<FlightBookingDetailDTO> findFlightdetailsByAirportAndDate(FlightBookingDetailDTO input) throws ClearTravelException {
		List<FlightBookingDetailDTO> flightBookingDetListToUi = new ArrayList<>();
		List<LegInstanceDTO> legInstanceDTOList = legInstanceService.getLegbytravelDateAndAirport(input);
		//List<LegInstance> legInstanceList = null;
		if(legInstanceDTOList.isEmpty()) {
			legInstanceDTOList = this.createInstanceAndGetLegs(input);
		}
		List<String> flightNumList = legInstanceDTOList.stream().map(LegInstanceDTO::getFlightNumber).collect(Collectors.toList());
		List<FareDTO> fareDtoList = fareService.getFareByFlightIdsAndClass(flightNumList, input.getTravelClass());
		List<FlightDTO> airlineDetailDTO = flightService.getFlightDetailByFlightNumber(flightNumList);
		
		convertFareLegAirlineDetailToFlightBookingDetail(legInstanceDTOList,fareDtoList,airlineDetailDTO,flightBookingDetListToUi, input);
			
		return flightBookingDetListToUi;
	}
	
	private void convertFareLegAirlineDetailToFlightBookingDetail(List<LegInstanceDTO> legInstanceDTOList,
			List<FareDTO> fareDtoList, List<FlightDTO> airlineDetailDTO,
			List<FlightBookingDetailDTO> flightBookingDetListToUi, FlightBookingDetailDTO input) throws ClearTravelException {
		List<LegInstanceDTO> connectingFlightsLegList = this.getConnectedFlightLegsInstancesfromList(legInstanceDTOList);
		legInstanceDTOList.forEach(i -> {
			String airlineName = airlineDetailDTO.stream().filter(a->a.getFlightNumber().equals(i.getFlightNumber()))
					.map(FlightDTO::getAirline).findAny().get();
			System.out.println("printttt:"+airlineName);
			Integer fareAmount=null;
			try {
				fareAmount = calculateFare(fareDtoList,input,i.getFlightNumber());
			} catch (ClearTravelException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			FlightBookingDetailDTO fbdDTO = new FlightBookingDetailDTO(i.getFlightNumber(),airlineName,
					i.getDepartureAirportCode(), i.getDepartureTime(), i.getArrivalAirportCode(), i.getArrivalTime(),
					fareAmount, input.getNumberOfPassengers(), input.getTravelClass(), i.getDate(), null, null, null,i.getNumberOfAvailableSeats(),null);
			flightBookingDetListToUi.add(fbdDTO);
		});	
		
		flightBookingDetListToUi.addAll(getFlightDetailBookingForConnectedFlights(connectingFlightsLegList,fareDtoList,airlineDetailDTO,input));
	}

	private List<LegInstanceDTO> getConnectedFlightLegsInstancesfromList(List<LegInstanceDTO> legInstanceDTOList) {
		List<String> connectedFlightNumberList = legInstanceDTOList.stream()
																	.filter(l->l.getLegNumber().equals(2))
																		.map(LegInstanceDTO::getFlightNumber)
																			.distinct()
																				.collect(Collectors.toList());
		List<LegInstanceDTO> connectedFlightInstanceList = legInstanceDTOList.stream()
									.filter(l->connectedFlightNumberList.contains(l.getFlightNumber()))
										.collect(Collectors.toList());
		
		legInstanceDTOList.removeAll(connectedFlightInstanceList);
		
		return connectedFlightInstanceList;
	}
	
	private List<FlightBookingDetailDTO> getFlightDetailBookingForConnectedFlights(List<LegInstanceDTO> flights, List<FareDTO> fareDtoList, List<FlightDTO> airlineDetailDTO, FlightBookingDetailDTO input){
		List<FlightBookingDetailDTO> detailsDTOList =  new ArrayList<>();
		List<String> flightsNumbers = flights.stream().map(LegInstanceDTO::getFlightNumber).distinct().collect(Collectors.toList()); 
		
		for(String flightNumber : flightsNumbers) {
			
			List<LegInstanceDTO> connectedFlight = flights.stream().filter(a->a.getFlightNumber().equals(flightNumber)).collect(Collectors.toList());
			
				FlightBookingDetailDTO connecting = null;
				FlightBookingDetailDTO first = null;
			for (LegInstanceDTO leg : connectedFlight) {
					String airlineName = airlineDetailDTO.stream().filter(a->a.getFlightNumber().equals(leg.getFlightNumber()))
							.map(FlightDTO::getAirline).findAny().get();
					//System.out.println("printttt:"+airlineName);
					Integer fareAmount=null;
					try {
						fareAmount = calculateFare(fareDtoList,input,leg.getFlightNumber());
					} catch (ClearTravelException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					if(leg.getLegNumber().equals(2)) {
						
					connecting = new FlightBookingDetailDTO(leg.getFlightNumber(),airlineName,
							leg.getDepartureAirportCode(), leg.getDepartureTime(), leg.getArrivalAirportCode(), leg.getArrivalTime(),
							fareAmount, input.getNumberOfPassengers(), input.getTravelClass(), leg.getDate(), null, null, null,leg.getNumberOfAvailableSeats(),null);
				}
				else {
							first = new FlightBookingDetailDTO(leg.getFlightNumber(),airlineName,
							leg.getDepartureAirportCode(), leg.getDepartureTime(), leg.getArrivalAirportCode(), leg.getArrivalTime(),
							fareAmount, input.getNumberOfPassengers(), input.getTravelClass(), leg.getDate(), null, null, null,leg.getNumberOfAvailableSeats(),null);
			}
				
			}
			first.setConnectedFlight(connecting);
			detailsDTOList.add(first);
			
		}
		
		return detailsDTOList;
	}

	private List<LegInstanceDTO> createInstanceAndGetLegs(FlightBookingDetailDTO input) throws ClearTravelException{
		List<FlightLegDTO> flightLegList = flightLegService.getFlightLegByDayOFWeek(input);
		
		return legInstanceService.addAllLegIntance(flightLegList.stream().map(f-> new LegInstanceDTO(null, f.getFlightNumber(), f.getLegNumber(), input.getDateOfFlight(),
				f.getTotalNumberOfSeats(), f.getAirplaneTypeName(), f.getDepartureAirportCode(), f.getScheduledDepartureTime(),
				f.getArrivalAirportCode(), f.getScheduledArrivalTime())).collect(Collectors.toList()));
		
	}
	
	private Integer calculateFare(List<FareDTO> fareDtoList,FlightBookingDetailDTO input, String flightNumber) throws ClearTravelException{
			Integer fare = fareDtoList.stream().filter(a->a.getFlightNumber().equals(flightNumber)).map(FareDTO::getAmount).findAny().get();
			Integer finalAmount = fare*input.getNumberOfPassengers();
		return finalAmount;
		
	}

	@Override
	public BookingDTO bookFlightForUser(FlightBookingDetailDTO flightBookingDTO) throws ClearTravelException {
		BookingDTO bookedTicket = null;
		List<LegInstanceDTO> flightLegInstanceList = legInstanceService.getLegInstanceByFlightNumberAndjourneyDate(flightBookingDTO.getFlightNumber(), flightBookingDTO.getDateOfFlight());
		Integer serial = null;
		LegInstanceDTO flightLegInstance = null;
		LegInstanceDTO connectedFlightLegInstance = null;
		//update the leg instance for seats
		if (flightBookingDTO.getConnectedFlight() == null) {
			 flightLegInstance = flightLegInstanceList.get(0);
			if (flightLegInstance.getNumberOfAvailableSeats() < flightBookingDTO.getNumberOfPassengers()) {
				throw new ClearTravelException("No seats available!!");
			} else {
				flightLegInstance.setNumberOfAvailableSeats(
						flightLegInstance.getNumberOfAvailableSeats() - flightBookingDTO.getNumberOfPassengers());
				serial = legInstanceService.editLegInstanceById(flightLegInstance);
			}
		}
		else {
			//update the leg instance for seats connected route
			LegInstanceDTO first = null;
			LegInstanceDTO connectedFlight = null;
			for(LegInstanceDTO a : flightLegInstanceList) {
				if(a.getDepartureAirportCode().equals(flightBookingDTO.getDepartureAirportCode())){
					first = a;
				}
				else {
					connectedFlight=a;
				}
			}
			
			if (first.getNumberOfAvailableSeats() < flightBookingDTO.getNumberOfPassengers()
					|| connectedFlight.getNumberOfAvailableSeats()< flightBookingDTO.getNumberOfPassengers() ) {
				throw new ClearTravelException("No seats available!!");
			} else {
				first.setNumberOfAvailableSeats(
						first.getNumberOfAvailableSeats() - flightBookingDTO.getNumberOfPassengers());
				connectedFlight.setNumberOfAvailableSeats(
						connectedFlight.getNumberOfAvailableSeats() - flightBookingDTO.getNumberOfPassengers());
				serial = legInstanceService.editLegInstanceById(first)+legInstanceService.editLegInstanceById(connectedFlight);
				connectedFlightLegInstance = first;
			}
			
		}
		//create the booking and update user
		if(serial!=null) {
			if(flightBookingDTO.getConnectedFlight()==null) {
				String seats = allocateSeats(flightBookingDTO.getNumberOfPassengers());
				String leg = flightLegInstance.getLegNumber().toString();
				BookingDTO bookingDTO = new BookingDTO(flightBookingDTO.getFlightNumber(), leg, 
						flightBookingDTO.getDateOfFlight(), seats, flightBookingDTO.getCustomerName(),
						flightBookingDTO.getCustomerPhone(), flightBookingDTO.getUserID());
				
				bookedTicket = bookingService.makeBooking(bookingDTO);
				addAirportDetail(bookedTicket,flightBookingDTO);
			}
			else {
				String seats = allocateSeats(flightBookingDTO.getNumberOfPassengers());
				String leg = connectedFlightLegInstance.getLegNumber().toString();
				BookingDTO bookingDTO = new BookingDTO(flightBookingDTO.getFlightNumber(), leg, 
						flightBookingDTO.getDateOfFlight(), seats, flightBookingDTO.getCustomerName(),
						flightBookingDTO.getCustomerPhone(), flightBookingDTO.getUserID());
				
				bookedTicket = bookingService.makeBooking(bookingDTO);
				addAirportDetail(bookedTicket,flightBookingDTO);
			}
		}
		return bookedTicket;
	}
	
	private String allocateSeats(Integer passengers) {
		
		//flightLegService.getMaxSeatInTheflight(flightLegInstance)
		StringBuffer seats = new StringBuffer();
		String seat = null;
		int length = 1;
		String chars = "ABCDEF";
		for(int i=1;i<passengers+1;i++) {
			seat = String.valueOf(i)+new Random().ints(length, 0, chars.length())
                    .mapToObj(a -> "" + chars.charAt(a))
                    .collect(Collectors.joining());
			seats.append(seat+",");
		}
		return seats.deleteCharAt(seats.length()-1).toString();
		
		
	}
	
	private void addAirportDetail(BookingDTO dto,FlightBookingDetailDTO flightBookDto) {
		dto.setDepartureAirportCode(flightBookDto.getDepartureAirportCode());
		dto.setDepartureTime(flightBookDto.getDepartureTime());
		dto.setArrivalAirportCode(flightBookDto.getDepartureAirportCode());
		dto.setArrivalTime(flightBookDto.getArrivalTime());
	}
}
