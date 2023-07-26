package com.cleartravel.entity;

import java.time.LocalDate;
import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "seat_reservation")
@Data@AllArgsConstructor
@NoArgsConstructor
public class Booking {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer bookingId;
	
	private String flightNumber;

	private String legNumber;

	private LocalDate dateOfFlight;

	private String seatNumber;
	
	private String customerName;
	
	private String customerPhone;
	
	private String userId;

	public Booking(String flightNumber, String legNumber, LocalDate dateOfFlight, String seatNumber, String customerName,
			String customerPhone, String userId) {
		super();
		this.flightNumber = flightNumber;
		this.legNumber = legNumber;
		this.dateOfFlight = dateOfFlight;
		this.seatNumber = seatNumber;
		this.customerName = customerName;
		this.customerPhone = customerPhone;
		this.userId = userId;
	}
	
	
	
}
