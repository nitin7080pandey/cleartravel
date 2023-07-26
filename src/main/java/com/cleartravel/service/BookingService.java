package com.cleartravel.service;

import java.util.List;

import com.cleartravel.dto.BookingDTO;
import com.cleartravel.exception.ClearTravelException;

public interface BookingService {

	public List<BookingDTO> getAllBooking();
	
	public BookingDTO getBookingByID(Integer id) throws ClearTravelException;

	public String editBooking(BookingDTO booking) throws ClearTravelException;

	public String deleteBooking(BookingDTO deleteBookingDTO) throws ClearTravelException;

	BookingDTO makeBooking(BookingDTO booking) throws ClearTravelException;
}
