package com.example.Brunchvana.Controllers;

import com.example.Brunchvana.Restaurant;
import com.example.Brunchvana.Service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by phillipdelia on 10/22/17.
 */




@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class RestaurantController {


@Autowired
    RestaurantService restaurantService;

    @RequestMapping(path = "/search", method = RequestMethod.GET)


    public List<Restaurant> getRestaurant() {

        List<Restaurant> searchList = new ArrayList<>();


        return RestaurantService.findAll();

        // store in a variable

        // use streams to filter results by zipcode or location

    }



    // Phase II filter via secondary booleans

  //  @RequestMapping(path = "/results", method = RequestMethod.GET)


    //public List<Restaurant> getRestaurant() {


      //  return RestaurantService.findAll();
    //}




}
