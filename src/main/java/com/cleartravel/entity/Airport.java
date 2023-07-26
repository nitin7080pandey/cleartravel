package com.cleartravel.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data@AllArgsConstructor@NoArgsConstructor
public class Airport {
	@Id
	private Integer airportSrId;
	private String airportCode;
	private String airportName;
	private String airportCity;
	
}
