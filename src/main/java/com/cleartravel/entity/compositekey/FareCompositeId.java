package com.cleartravel.entity.compositekey;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor 
@NoArgsConstructor
@EqualsAndHashCode
public class FareCompositeId implements Serializable {

	private String flightNumber;
	private String fareCode;
	
	
}
