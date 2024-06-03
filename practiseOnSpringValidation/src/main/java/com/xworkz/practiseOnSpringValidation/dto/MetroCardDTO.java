package com.xworkz.practiseOnSpringValidation.dto;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.time.LocalDate;

public class MetroCardDTO {

    @NotNull(message = "Please enter a valid full name")
    @Size(min = 3, max = 30, message = "Full name should be between 3 and 30 characters")
    private String fullName;

    @Email(message = "Please enter a valid email")
    @NotNull(message = "Email is required")
    private String email;

    @NotNull(message = "Please enter a valid phone number")
    @Pattern(regexp = "^\\d{10}$", message = "Phone number should be a 10-digit number")
    private String phoneNumber;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate dob;

    @NotNull(message = "Please enter a valid address")
    @Size(min = 3, max = 100, message = "Address should be between 3 and 100 characters")
    private String address;

    @NotNull(message = "Please enter a valid city")
    @Size(min = 3, max = 30, message = "City should be between 3 and 30 characters")
    private String city;

    @NotNull(message = "Please enter a valid state")
    @Size(min = 3, max = 30, message = "State should be between 3 and 30 characters")
    private String state;

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public LocalDate getDob() {
        return dob;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }


    @Override
    public String toString() {
        return "MetroCardDTO{" +
                "fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", dob=" + dob +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                '}';
    }
}
