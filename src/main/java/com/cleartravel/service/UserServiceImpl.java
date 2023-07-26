package com.cleartravel.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cleartravel.dto.BookingDTO;
import com.cleartravel.dto.FlightBookingDetailDTO;
import com.cleartravel.dto.FlightDTO;
import com.cleartravel.dto.UserDTO;
import com.cleartravel.entity.Booking;
import com.cleartravel.entity.LegInstance;
import com.cleartravel.entity.User;
import com.cleartravel.exception.ClearTravelException;
import com.cleartravel.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	LegInstanceService legInstanceService;
	
	@Autowired
	FlightService flightService;
	
	@Override
	public List<UserDTO> getAllUser() throws ClearTravelException{
		List<UserDTO> userListToController = new ArrayList<>();
		Iterable<User> userListTFromDB = userRepository.findAll();
		userListTFromDB.forEach(a->{
			a.getBookingList().stream().map(s-> { BookingDTO bookDTO = new BookingDTO(s.getBookingId(), s.getFlightNumber(),
					s.getLegNumber(), s.getDateOfFlight(), s.getSeatNumber(),
					s.getCustomerName(), s.getCustomerPhone(), s.getUserId());
				try {
					addAirportAndAirlineDetail(bookDTO);
				} catch (NumberFormatException | ClearTravelException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return bookDTO;
			}
			).collect(Collectors.toList());
			UserDTO dtoObj = new UserDTO(a.getId(), a.getName(), a.getEmail(), a.getPsswd(),
					a.getBookingList().stream().map(s-> { BookingDTO bookDTO = new BookingDTO(s.getBookingId(), s.getFlightNumber(),
							s.getLegNumber(), s.getDateOfFlight(), s.getSeatNumber(),
							s.getCustomerName(), s.getCustomerPhone(), s.getUserId());
						try {
							addAirportAndAirlineDetail(bookDTO);
						} catch (NumberFormatException | ClearTravelException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						return bookDTO;
					}).collect(Collectors.toList()));
			userListToController.add(dtoObj);
		});
		return userListToController;
	}
	
	@Override
	public UserDTO getUserByid(String userId) throws ClearTravelException {
		Optional<User> userFromDB = userRepository.findById(userId);
		User a = userFromDB.orElseThrow(()-> new ClearTravelException("No Such User exist in system"));
		return new UserDTO(a.getId(), a.getName(), a.getEmail(), a.getPsswd(),
				a.getBookingList().stream().map(s-> { BookingDTO bookDTO = new BookingDTO(s.getBookingId(), s.getFlightNumber(),
						s.getLegNumber(), s.getDateOfFlight(), s.getSeatNumber(),
						s.getCustomerName(), s.getCustomerPhone(), s.getUserId());
					try {
						addAirportAndAirlineDetail(bookDTO);
					} catch (NumberFormatException | ClearTravelException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return bookDTO;
				}).collect(Collectors.toList()));
	}
	
	@Override
	public String addNewUser(UserDTO user) throws ClearTravelException {
		User toDb = new User(user.getEmail(), user.getName(), user.getEmail(), user.getPsswd(), new ArrayList<Booking>());
		toDb = userRepository.save(toDb);
		return "User "+toDb.getEmail()+" created SuccessFully";
		
	}
	
	private void addAirportAndAirlineDetail(BookingDTO dto) throws NumberFormatException, ClearTravelException {
		List<FlightDTO> flight = flightService.getFlightDetailByFlightNumber(List.of(dto.getFlightNumber()));
		LegInstance leg = legInstanceService.getLegbyflightNumbertravelDateAndAirport(dto.getFlightNumber(), dto.getDateOfFlight(),  Integer.valueOf(dto.getLegNumber()));
		dto.setDepartureAirportCode(leg.getDepartureAirportCode());
		dto.setDepartureTime(leg.getDepartureTime());
		dto.setArrivalAirportCode(leg.getArrivalAirportCode());
		dto.setArrivalTime(leg.getArrivalTime());
		dto.setAirline(flight.get(0).getAirline());
	}
}
