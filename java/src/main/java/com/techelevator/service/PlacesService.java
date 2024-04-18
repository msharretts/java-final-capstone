package com.techelevator.service;

import com.techelevator.AppConfiguration;
import com.techelevator.dao.Landmarks.LandmarkDao;
import com.techelevator.exception.DaoException;
import com.techelevator.service.models.places.PlacesResponse;
import com.techelevator.service.models.places.Result;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class PlacesService {

    private final RestTemplate restTemplate = new RestTemplate();
    private final String BASE_API = "https://maps.googleapis.com/maps/api/place/details/json?place_id=";
    private final String API_KEY;
    private final AppConfiguration appConfiguration;

    public PlacesService(AppConfiguration appConfiguration) {
        this.appConfiguration = appConfiguration;
        API_KEY = "&key=" + appConfiguration.getGoogleapikey();
    }



    public Result getPlaceInfoByPlaceId(String placeId) {
        PlacesResponse response = new PlacesResponse();
        String url = BASE_API + placeId + API_KEY;

        try {
            response = restTemplate.getForObject(url, PlacesResponse.class);
        } catch (Exception e) {
            throw new DaoException("Cannot connect to external places API");
        }

        return response.getResult();
    }

}
