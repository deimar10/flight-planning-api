package com.development.flight_planning_api.service;

import com.development.flight_planning_api.model.Flight;
import com.development.flight_planning_api.repository.FlightRepository;

import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor

public class FlightService {
    private final FlightRepository flightRepository;

    public List<Flight> getAllFlights() {
        return flightRepository.findAll();
    }
}
