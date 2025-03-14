package com.development.flight_planning_api.controller;

import com.development.flight_planning_api.model.Flight;
import com.development.flight_planning_api.service.FlightService;

import lombok.RequiredArgsConstructor;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/flights")
@RequiredArgsConstructor

public class FlightController {
    private final FlightService flightService;

    // Get all flights
    @GetMapping
    public List<Flight> getAllFlights() {
        return flightService.getAllFlights();
    }
}
