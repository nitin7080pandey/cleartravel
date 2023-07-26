package com.cleartravel.entity;

import java.time.LocalDate;
import java.util.Date;

import jakarta.annotation.Generated;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data@AllArgsConstructor@NoArgsConstructor
public class LegInstance {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer serialNumber;
	private String flightNumber;
	private Integer legNumber;
	private LocalDate date;
	private Integer numberOfAvailableSeats;
	private String airplaneTypeName;
	private String departureAirportCode;
	private String departureTime;
	private String arrivalAirportCode;
	private String arrivalTime;
	

}
