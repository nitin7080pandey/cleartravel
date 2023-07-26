package com.cleartravel.entity;



import com.cleartravel.entity.compositekey.FareCompositeId;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@IdClass(FareCompositeId.class)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Fare {
	
	@Id
	private String flightNumber;
	@Id
	private String fareCode;
	private Integer amount;
	private Boolean restrictions;
	
}
