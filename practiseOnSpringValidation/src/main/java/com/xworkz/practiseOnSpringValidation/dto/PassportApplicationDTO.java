package com.xworkz.practiseOnSpringValidation.dto;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class PassportApplicationDTO {

    @NotNull(message = "Please enter the valid Fist Name")
    @Size(min = 3,max = 30,message = "first name should be min 3 and max 30")
    private String firstName;

    @NotNull(message = "Please enter the valid Last Name")
    @Size(min = 3,max = 30,message = " last name should be min 3 and max 30")
    private String lastName;

    @NotNull(message = "Please enter the valid address")
    @Size(min = 10,max = 300,message = "address should be min 3 and max 30")
    private String address;

    @NotNull(message = "Please enter the valid city Name")
    @Size(min = 3,max = 30,message = "city should be min 3 and max 30")
    private String city;

    @NotNull(message = "Please enter the valid state Name")
    @Size(min = 3,max = 30,message = "state should be min 3 and max 30")
    private String state;

    @NotNull(message = "Please enter the valid country Name")
    @Size(min = 3,max = 30,message = "country name should be min 3 and max 30")
    private String country;

    @Min(1)
    @Max(9999999999L)
    private Long mobile;

    public Long getMobile() {
        return mobile;
    }

    public void setMobile(Long mobile) {
        this.mobile = mobile;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Override
    public String toString() {
        return "PassportApplicationDTO{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", country='" + country + '\'' +
                ", mobile=" + mobile +
                '}';
    }
}
