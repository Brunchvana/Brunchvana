package com.example.Brunchvana;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

/**
 * Created by phillipdelia on 10/19/17.
 */

@Entity
@Table(name = "restaurant")
public class Restaurant {



    private int id;

    private String name;

    private String address;

    private String phone;

    private String url;

    private String image;

    private String menu;

    private String zipCode;

    private String location;

    private String costFor2;

    private boolean vegetarian;

    private boolean kidFriendly;

    private boolean reservations;

    private boolean largeGroups;

    private boolean outdoorSeating;

    private boolean vegan;

    private boolean weekend;

    private boolean weekday;

    private boolean boozyBrunch;

    public Restaurant() {

    }

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column (name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column (name = "address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column (name = "phone")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Column (name = "url")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    @Column (name = "image")
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Column (name = "menu")
    public String getMenu() {
        return menu;
    }

    public void setMenu(String menu) {
        this.menu = menu;
    }
    @Column (name = "zipCode")
    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    @Column (name = "location")
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Column (name = "costFor2")
    public String getCostFor2() {
        return costFor2;
    }

    public void setCostFor2(String costFor2) {
        this.costFor2 = costFor2;
    }

    @Column (name = "vegetarian")
    public boolean isVegetarian() {
        return vegetarian;
    }

    public void setVegetarian(boolean vegetarian) {
        this.vegetarian = vegetarian;
    }

    @Column (name = "kidFriendly")
    public boolean isKidFriendly() {
        return kidFriendly;
    }

    public void setKidFriendly(boolean kidFriendly) {
        this.kidFriendly = kidFriendly;
    }

    @Column (name = "reservations")
    public boolean isReservations() {
        return reservations;
    }

    public void setReservations(boolean reservations) {
        this.reservations = reservations;
    }

    @Column (name = "largeGroups")
    public boolean isLargeGroups() {
        return largeGroups;
    }

    public void setLargeGroups(boolean largeGroups) {
        this.largeGroups = largeGroups;
    }

    @Column (name = "outdoorSeating")
    public boolean isOutdoorSeating() {
        return outdoorSeating;
    }

    public void setOutdoorSeating(boolean outdoorSeating) {
        this.outdoorSeating = outdoorSeating;
    }

    @Column (name = "vegan")
    public boolean isVegan() {
        return vegan;
    }

    public void setVegan(boolean vegan) {
        this.vegan = vegan;
    }

    @Column (name = "weekend")
    public boolean isWeekend() {
        return weekend;
    }

    public void setWeekend(boolean weekend) {
        this.weekend = weekend;
    }

    @Column (name = "weekday")
    public boolean isWeekday() {
        return weekday;
    }

    public void setWeekday(boolean weekday) {
        this.weekday = weekday;
    }

    @Column (name = "boozyBrunch")
    public boolean isBoozyBrunch() {
        return boozyBrunch;
    }

    public void setBoozyBrunch(boolean boozyBrunch) {
        this.boozyBrunch = boozyBrunch;
    }


}
