package com.techelevator.dao.Landmarks;

import com.techelevator.dao.Landmarks.Model.Designations;
import com.techelevator.dao.Landmarks.Model.Landmark;

import java.util.List;

public interface LandmarkDao {

    Landmark getLandmarkById(int id);

    List<Landmark> getLandmarkByName(String name);

    List<Landmark> getAllLandmarks();

    List<Landmark> getLandmarksByDesignation(String landmarkDesignation);

    List<Designations> getDesignationsForLandmark(int landmarkId);

    int createLandmarkStartingPoint(String address, String placeId);

}
