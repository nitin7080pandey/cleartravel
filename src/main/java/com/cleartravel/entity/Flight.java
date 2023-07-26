package com.cleartravel.entity;


import java.time.DayOfWeek;

import org.springframework.context.annotation.Primary;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data@AllArgsConstructor
@Table(name = "flight")
@NoArgsConstructor
public class Flight {

	@Id 
	@Column(name ="flight_number")
	private String flightNumber;
	@Column(name ="airline")
	private String airline;
	@Column(name ="weekdays")
	private Boolean weekdays;
	

}
