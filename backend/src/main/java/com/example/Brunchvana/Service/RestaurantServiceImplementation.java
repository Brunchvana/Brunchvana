package com.example.Brunchvana.Service;

import com.example.Brunchvana.Model.Restaurant;
import com.example.Brunchvana.Repository.RestaurantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by phillipdelia on 10/23/17.
 */


@Service
@Transactional
public class RestaurantServiceImplementation implements RestaurantService {

    @Autowired
    RestaurantRepository restaurantRepository;

    @Override
    @Transactional(readOnly = true)

    public List<Restaurant> findAll() {

        return restaurantRepository.findAll();
    }


}
