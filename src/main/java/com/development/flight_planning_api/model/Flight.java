package com.development.flight_planning_api.model;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "flights") 

public class Flight { 
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private Long id; 

    @Enumerated(EnumType.STRING)
    private Location origin;

	private String destination; 
	private LocalDate start_date; 
    private LocalDate end_date; 
    private int price; 

	public Flight(Location origin, String destination, LocalDate start_date, LocalDate end_date, int price) { 
		this.origin = origin; 
		this.destination = destination; 
		this.start_date = start_date;
        this.end_date = end_date;
        this.price = price;
	} 

	// Getters 
	public Long getId() { 
		return id; 
	} 

	public Location getOrigin() { 
		return origin; 
	} 

	public String getDestination() { 
		return destination; 
	} 

	public LocalDate getStartDate() { 
		return start_date; 
	} 

    public LocalDate getEndDate() {
        return end_date;
    }

    public int getPrice() {
        return price;
    }

	// Setters 
	public void setId(Long id) { 
		this.id = id; 
	} 

	public void setOrigin(Location origin) { 
		this.origin = origin; 
	} 

	public void setDestination(String destination) { 
		this.destination = destination; 
	} 

	public void setStartDate(LocalDate start_date) { 
		this.start_date = start_date; 
	} 

    public void setEndDate(LocalDate end_date) {
        this.end_date = end_date;
    }

    public void setPrice(int price) {
        this.price = price;
    }
} 
