package com.techelevator.dao.Itinerary;

import com.techelevator.dao.Itinerary.Model.CreateItineraryDTO;
import com.techelevator.dao.Itinerary.Model.Itinerary;
import com.techelevator.dao.Itinerary.Model.UpdateItineraryDTO;
import com.techelevator.dao.User.UserDao;
import com.techelevator.exception.DaoException;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.security.Principal;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcItineraryDao implements ItineraryDao {
    private final JdbcTemplate jdbcTemplate;
    private final UserDao userDao;

    public JdbcItineraryDao(JdbcTemplate jdbcTemplate, UserDao userDao) {
        this.jdbcTemplate = jdbcTemplate;
        this.userDao = userDao;
    }

    @Override
    public List<Itinerary> getItinerariesByUserId(int userId) {
        List<Itinerary> userItineraries = new ArrayList<>();
        String sql = "SELECT itineraries.*, landmark_name FROM itineraries JOIN landmarks ON starting_location_id = landmark_id WHERE user_id = ? ORDER BY tour_date;";

        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
            while (results.next()) {
                userItineraries.add(mapRowToItinerary(results));
            }

        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }

        return userItineraries;
    }

    @Override
    public Itinerary getItineraryById(int itineraryId) {
        Itinerary itinerary = null;
        String sql = "SELECT itineraries.*, itineraries_landmarks.*, landmark_name FROM itineraries JOIN itineraries_landmarks USING (itinerary_id) JOIN landmarks USING (landmark_id) " +
                "WHERE itinerary_id = ? ORDER BY stop_order";

        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, itineraryId);
            while (results.next()) {
                itinerary = mapRowToItinerary(results);
            }

        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }

        return itinerary;
    }

    @Override
    public int getTourIdFromItineraryId(int itineraryId) {
        int tourId = 0;
        String sql = "SELECT tour_id FROM itineraries WHERE itinerary_id = ?;";

        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, itineraryId);
            if (results.next()) {
                tourId = results.getInt("tour_id");
            }
            if (tourId == 0) {
                throw new DaoException("Unable to retrieve tour Id");
            }

        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }

        return tourId;
    }

    @Override
    public Itinerary createItinerary(CreateItineraryDTO createItineraryDTO, Principal principal) {
        Itinerary newItinerary = null;
        String sqlGet = "SELECT landmark_id FROM landmarks WHERE landmark_name = ?;";
        String sql = "INSERT INTO itineraries (user_id, itinerary_name, starting_location_id, tour_date) VALUES (?, ?, ?, ?) RETURNING itinerary_id;";
        int userId = userDao.getLoggedInUserByPrinciple(principal).getId();
        String name = createItineraryDTO.getItineraryName();
        String startingLocation = createItineraryDTO.getStartingLocation();
        LocalDate date = createItineraryDTO.getDate();
        try {
            int startingLocationId = jdbcTemplate.queryForObject(sqlGet, int.class, startingLocation);
            int newItineraryId = jdbcTemplate.queryForObject(sql, int.class, userId, name, startingLocationId, date);
            newItinerary = getItineraryById(newItineraryId);
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }

        return newItinerary;
    }

    @Override
    public void updateItinerary(UpdateItineraryDTO itineraryDTO) {
        int itineraryId = itineraryDTO.getItineraryId();
        int landmarkId = itineraryDTO.getLandmarkId();
        int stopNum = getStopNum(itineraryId, landmarkId);

        String sql = "INSERT INTO itineraries_landmarks (itinerary_id, landmark_id, stop_order) VALUES (?, ?, ?);";

        try {
            int numOfRows = jdbcTemplate.update(sql, itineraryId, landmarkId, stopNum);

            if (numOfRows == 0) {
                throw new DaoException("Zero rows affected, expected at least one");
            }

        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
    }

    @Override
    public int deleteItinerary(int itineraryId) {
        int numOfRows = 0;
        String sql = "DELETE FROM itineraries WHERE itinerary_id = ?;";

        try {
            numOfRows = jdbcTemplate.update(sql, itineraryId);
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return numOfRows;
    }

    @Override
    public List<String> retrieveItineraryStops(int itineraryId) {
        List<String> listOfItineraryLandmarkGooglePlaceIds = new ArrayList<>();
        String sql = "SELECT google_place_id FROM landmarks JOIN itineraries_landmarks USING (landmark_id) WHERE itinerary_id = ? ORDER BY stop_order;";

        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, itineraryId);
            while (results.next()) {
                listOfItineraryLandmarkGooglePlaceIds.add(results.getString("google_place_id"));
            }

        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }

        return listOfItineraryLandmarkGooglePlaceIds;
    }

    private Itinerary mapRowToItinerary(SqlRowSet rowSet) {
        Itinerary itinerary = new Itinerary();
        itinerary.setItineraryId(rowSet.getInt("itinerary_id"));
        itinerary.setUserId(rowSet.getInt("user_id"));
        itinerary.setItineraryName(rowSet.getString("itinerary_name"));
        itinerary.setStartingLocationId(rowSet.getInt("starting_location_id"));
        itinerary.set(rowSet.getString("landmark_name"));
        itinerary.setStartingLocationName(rowSet.getString("landmark_name"));
        itinerary.setStartingLocationName(rowSet.getString("landmark_name"));
        itinerary.setStartingLocationName(rowSet.getString("landmark_name"));

        Date tourDateTemp = rowSet.getDate("tour_date");
        LocalDate tourDate = null;
        if (tourDateTemp != null) {
            tourDate = tourDateTemp.toLocalDate();
        }

        itinerary.setTourDate(tourDate);

        return itinerary;
    }

    private int getStopNum(int itineraryId, int landmarkId) {
        String sql = "SELECT stop_order from itineraries_landmarks where itinerary_id = ? and landmark_id = ? ORDER BY stop_order DESC LIMIT 1;";

        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, itineraryId, landmarkId);
            if (results.next()) {
                return results.getInt("stop_order") + 1;
            } else {
                return 1;
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
    }
}

