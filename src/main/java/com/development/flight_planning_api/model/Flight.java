package com.development.flight_planning_api.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.time.LocalDate;

@Entity
@Table(name = "flights") 
@SuperBuilder
@NoArgsConstructor
@Data

public class Flight { 
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private Long id; 

    @Enumerated(EnumType.STRING)
	@Column(columnDefinition = "ENUM('Tallinn')")
	private Location origin;

	private String destination; 
	private LocalDate startDate; 
    private LocalDate endDate; 
    private int price; 
} 
