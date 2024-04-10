package com.techelevator.controller;

import com.techelevator.dao.Itinerary.ItineraryDao;
import com.techelevator.dao.Landmarks.LandmarkDao;
import com.techelevator.dao.Landmarks.Model.Landmark;
import com.techelevator.dao.Tour.Model.Route;
import com.techelevator.dao.Tour.Model.Tour;
import com.techelevator.dao.Tour.TourDao;
import com.techelevator.service.DirectionsService;
import com.techelevator.service.models.Directions;
import com.techelevator.service.models.DirectionsDTO;
import com.techelevator.service.models.Legs;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@CrossOrigin
public class DirectionController {

    // need to get list of directions for each route in a tour
    private final DirectionsService directionsService = new DirectionsService();
    private final ItineraryDao itineraryDao;
    private final TourDao tourDao;
    private final LandmarkDao landmarkDao;

    public DirectionController(ItineraryDao itineraryDao, TourDao tourDao, LandmarkDao landmarkDao) {
        this.itineraryDao = itineraryDao;
        this.tourDao = tourDao;
        this.landmarkDao = landmarkDao;
    }

    @GetMapping("/directions/{itineraryId}")
    public DirectionsDTO getTourDirectionsList(@PathVariable int itineraryId) {
        DirectionsDTO newDTO = new DirectionsDTO();

        int tourId = itineraryDao.getTourIdFromItineraryId(itineraryId);

        Tour tour = tourDao.getTourById(tourId);

        List<Directions> tourRoutesList = new ArrayList<>();

        for (Route route : tour.getRoutes()) {
            if (route != null) {
                Landmark start = landmarkDao.getLandmarkById(route.getStartingPointId());
                Landmark end = landmarkDao.getLandmarkById(route.getStartingPointId());

                Directions newDirections = directionsService.getDirections(start.getGooglePlaceId(), end.getGooglePlaceId());
                tourRoutesList.add(newDirections);
            }
        }

        Legs[] legs = new Legs[tourRoutesList.size()];

        for (int i = 0; i < tourRoutesList.size(); i++) {
            legs[i] = tourRoutesList.get(i).getRoutes()[0].getLegs()[0];
        }

        newDTO.setLegs(legs);

        return newDTO;
    }

}
