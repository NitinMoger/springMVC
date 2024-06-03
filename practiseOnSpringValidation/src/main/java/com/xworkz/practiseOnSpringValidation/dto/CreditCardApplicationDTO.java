package com.xworkz.practiseOnSpringValidation.dto;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.time.LocalDate;

public class CreditCardApplicationDTO {

    @NotNull(message = "Please enter valid Holder Name")
    @Size(min=3,max=30,message = "holder name should be min 3 and max 30 ")
    private String fullName;
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate dob;
    @NotNull(message = "Please select the gender")
    private String gender;
    @NotNull(message = "Please enter valid Bank Name")
    @Size(min=3,max=30,message = "bankName should be min 3 and max 30 ")
    private String bankName;
    @NotNull(message = "Please enter valid address")
    @Size(min=3,max=30,message = "address should be min 3 and max 30 ")
    private String address;
    @NotNull(message = "Please enter valid city Name")
    @Size(min=3,max=30,message = "city should be min 3 and max 30 ")
    private String city;
    @NotNull(message = "Please enter valid state Name")
    @Size(min=3,max=30,message = "state should be min 3 and max 30 ")
    private String state;

    @Pattern(regexp = "^$|^\\d{10}$", message = "should be empty or 10 digits")
    private String  phoneNumber;

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public LocalDate getDob() {
        return dob;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
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

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Override
    public String toString() {
        return "CreditCardApplicationDTO{" +
                "fullName='" + fullName + '\'' +
                ", dob=" + dob +
                ", gender='" + gender + '\'' +
                ", bankName='" + bankName + '\'' +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                '}';
    }
}
