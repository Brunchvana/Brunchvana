package com.example.Brunchvana.Controllers;

import com.example.Brunchvana.Model.Restaurant;
import com.example.Brunchvana.Service.RestaurantService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by phillipdelia on 10/22/17.
 */

@CrossOrigin(origins = "http://localhost:3000", maxAge = 3600)
@RestController
public class RestaurantController {


    @Autowired
    RestaurantService restaurantService;


    @RequestMapping(path = "/search", method = RequestMethod.POST)
    public String getRestaurant(Model model) {

    List<Restaurant> restaurants = restaurantService.findAll();

    model.addAttribute("restaurants" , restaurants );

    return "restaurantList";

        // Charleston filter
      //  if () {

       // restaurants.stream()

      //  }

            // West Ashley filter

        //    else if(){

       // }
        // East Cooper / Mt.Pleasant
       // else if(){

   // }

    //North Charleston
       }


        }



  //  @RequestMapping(path = "/filter", method = RequestMethod.POST)

 //  public String getRestaurant(Model model){

  //      List <Restaurant> restaurantsFilter = restaurantService.findAll();

  //      model.addAttribute("restaurantsFilter" , restaurantsFilter );

  //      return "restaurantFilterList";
 //   }


//}
