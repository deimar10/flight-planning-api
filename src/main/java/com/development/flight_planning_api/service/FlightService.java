package com.development.flight_planning_api.service;

import com.development.flight_planning_api.model.Flight;
import com.development.flight_planning_api.repository.FlightRepository;
import com.development.flight_planning_api.exception.ResourceNotFoundException;

import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor

public class FlightService {
    private final FlightRepository flightRepository;

    public List<Flight> getAllFlights() {
        List<Flight> flights = flightRepository.findAll();

        if (flights.isEmpty()) {
            throw new ResourceNotFoundException("No flights were found");
        }

        return flights;
    }
}
