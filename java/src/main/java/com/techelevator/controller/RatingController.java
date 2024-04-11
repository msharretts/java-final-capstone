package com.techelevator.controller;

import com.techelevator.dao.Rating.Model.Rating;
import com.techelevator.dao.Rating.RatingDao;
import com.techelevator.dao.User.UserDao;
import com.techelevator.dao.User.model.User;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.security.Principal;
import java.util.List;

@PreAuthorize("#rating.userId == authentication.principal.userId")
@RestController
@CrossOrigin
public class RatingController {
    private final RatingDao ratingDao;
    private final UserDao userDao;

    public RatingController(RatingDao ratingDao, UserDao userDao) {
        this.ratingDao = ratingDao;
        this.userDao = userDao;
    }

    //TODO: get all ratings never implemented. Remove from DAO?

    @GetMapping("/ratings/{userId}")
    public List<Rating> getRatingsByUserId(@PathVariable int userId, Principal principal) {
        User loggedInUser = userDao.getLoggedInUserByPrinciple(principal);
        int loggedInUserId = loggedInUser.getId();

        return ratingDao.getRatingsByUserId(loggedInUserId);
    }

    @PreAuthorize("permitAll()")
    @GetMapping("/landmarks/{landmarkId}/ratings")
    public List<Rating> getRatingsByLandmarkId(@PathVariable int landmarkId) {
        return ratingDao.getRatingsByLandmarkId(landmarkId);
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/landmarks/{landmarkId}/ratings")
    public Rating createRating(@PathVariable int landmarkId, Rating rating) {
        return ratingDao.createRating(rating);
    }

    @PutMapping("/ratings/{ratingId}")
    public void updateRating(@PathVariable int landmarkId, @RequestBody Rating rating, Principal principal) {
        User loggedInUser = userDao.getLoggedInUserByPrinciple(principal);
        int loggedInUserId = loggedInUser.getId();

        if (rating.getUserId() != loggedInUserId) {
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "You are not authorized to update this rating.");
        }

        rating.setUserId(loggedInUserId);
        rating.setLandmarkId(landmarkId);

        ratingDao.updateRating(rating);
    }

    @DeleteMapping("/ratings/{ratingId}")
    public void deleteRating(@PathVariable int ratingId, Principal principal) {
        Rating rating = ratingDao.getRatingById(ratingId);

        User loggedInUser = userDao.getLoggedInUserByPrinciple(principal);
        int loggedInUserId = loggedInUser.getId();

        if (rating.getUserId() != loggedInUserId) {
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "You are not authorized to delete this rating.");
        }

        ratingDao.deleteRating(ratingId);
    }

}
