package com.cleartravel.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cleartravel.dto.BookingDTO;
import com.cleartravel.dto.FlightDTO;
import com.cleartravel.entity.Booking;
import com.cleartravel.entity.Flight;
import com.cleartravel.entity.User;
import com.cleartravel.exception.ClearTravelException;
import com.cleartravel.repository.BookingRepository;
import com.cleartravel.repository.UserRepository;


@Service
public class BookingServiceImpl implements BookingService {

	@Autowired
	BookingRepository bookingRepo;
	
	@Autowired
	UserRepository userRepo;
	
	@Override
	public List<BookingDTO> getAllBooking(){
		List<BookingDTO> bookingListToController = new ArrayList<>();
		Iterable<Booking> bookingListTFromDB = bookingRepo.findAll();
		bookingListTFromDB.forEach(a->{
			BookingDTO dtoObj = new BookingDTO(a.getBookingId(), a.getFlightNumber(), a.getLegNumber(),
							a.getDateOfFlight(), a.getSeatNumber(), a.getCustomerName(), a.getCustomerPhone(), a.getUserId());
			bookingListToController.add(dtoObj);
		});
		return bookingListToController;
	}
	
	@Override
	public BookingDTO getBookingByID(Integer id) throws ClearTravelException {
		Optional<Booking> bookingFromDB = bookingRepo.findById(id);
		Booking booking = bookingFromDB.orElseThrow(()-> new ClearTravelException("No Such Booking Found"));
		return new BookingDTO(booking.getBookingId(), booking.getFlightNumber(), booking.getLegNumber(),
					booking.getDateOfFlight(),booking.getSeatNumber(), booking.getCustomerName(), booking.getCustomerPhone(), booking.getUserId());
		
	}
	
	@Override
	public String editBooking(BookingDTO editBookingDTO) throws ClearTravelException{
		Optional<Booking> bookingFromDB = Optional.of(bookingRepo.getById(editBookingDTO.getBookingId()));
		Booking booking = bookingFromDB.orElseThrow(()-> new ClearTravelException("No Such Booking Found"));
		booking.setCustomerName(editBookingDTO.getCustomerName());
		booking.setCustomerPhone(editBookingDTO.getCustomerPhone());
		booking.setDateOfFlight(editBookingDTO.getDateOfFlight());
		booking.setFlightNumber(editBookingDTO.getFlightNumber());
		booking.setLegNumber(editBookingDTO.getLegNumber());
		booking.setSeatNumber(editBookingDTO.getSeatNumber());
		bookingRepo.save(booking);
		return "Booking Changes Saved Successfully for booking:"+booking.getBookingId();
	}
	
	@Override
	public String deleteBooking(BookingDTO deleteBookingDTO) throws ClearTravelException {
		Optional<Booking> bookingFromDB = bookingRepo.findById(deleteBookingDTO.getBookingId());
		Booking booking = bookingFromDB.orElseThrow(()-> new ClearTravelException("No Such Booking Found"));
		
		Optional<User> customerFromDB = userRepo.findById(booking.getUserId());
		User customer = customerFromDB.orElseThrow(()-> new ClearTravelException("No Such User Found"));
		
		customer.getBookingList().removeIf(b->b.getBookingId().equals(deleteBookingDTO.getBookingId()));
		bookingRepo.delete(booking);
		
		return "Booking Deleted Succesfully";	
	}
	
	@Override
	public BookingDTO makeBooking(BookingDTO booking) throws ClearTravelException {
		Booking toDb = new Booking(booking.getFlightNumber(), booking.getLegNumber(), booking.getDateOfFlight(),
				booking.getSeatNumber(), booking.getCustomerName(), booking.getCustomerPhone(), booking.getUserId());
		
		toDb = bookingRepo.save(toDb);
		
		Optional<User> customerFromDB = userRepo.findById(booking.getUserId());
		User customer = customerFromDB.orElseThrow(()-> new ClearTravelException("No Such User Found"));
		customer.getBookingList().add(toDb);
		 booking.setBookingId(toDb.getBookingId());
		 return booking;
	}
}
