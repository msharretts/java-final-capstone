package com.techelevator.controller;

import com.techelevator.dao.Landmarks.LandmarkDao;
import com.techelevator.exception.DaoException;
import com.techelevator.service.GeocodingService;
import com.techelevator.service.models.geocoder.GeocodeDTO;
import com.techelevator.service.models.geocoder.Results;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
public class GeocodeController {

    private final GeocodingService geocodingService = new GeocodingService();
    private final LandmarkDao landmarkDao;

    public GeocodeController(LandmarkDao landmarkDao) {
        this.landmarkDao = landmarkDao;
    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping("/geocode")
    public GeocodeDTO getInfoFromAddress(@RequestBody GeocodeDTO dto) {
        // right now GeocodeDTO consists of only an address string that is being posted from front end and formatted string returned to front end.
        // if front end needs nothing or other info, dto response should be changed


        GeocodeDTO responseDTO = new GeocodeDTO();

        Results response = geocodingService.getGeocodeInfo(dto.getAddress()).getResults()[0];
        String placeId = response.getPlaceId();
        String address = response.getAddress();

        try {
            int newLandmarkId = landmarkDao.createLandmarkStartingPoint(address, placeId);

            //TODO: from here use newLandmarkId to insert into other tables like routes, tours, etc.
            //TODO: NEEDs to be associated with itinerary, etc.
        } catch (DaoException e) {
            System.out.println("Couldn't insert new starting point");
        }

        responseDTO.setAddress(response.getAddress());
        return responseDTO;
        }
    }

