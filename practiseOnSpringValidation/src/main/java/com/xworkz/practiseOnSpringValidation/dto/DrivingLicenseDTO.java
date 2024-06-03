package com.xworkz.practiseOnSpringValidation.dto;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;

public class DrivingLicenseDTO {

    @NotNull(message = "Please enter the valid FullName")
    @Size(min = 10,max = 300,message = "name should be min 10 and max 50")
    private String fullName;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate dateOfBirth;

    @NotNull(message = "Please enter the valid address")
    @Size(min = 10,max = 300,message = "address should be min 3 and max 30")
    private String address;

    @NotNull(message = "Please enter the valid city Name")
    @Size(min = 3,max = 30,message = "city should be min 3 and max 30")
    private String city;

    @NotNull(message = "Please enter the valid state Name")
    @Size(min = 3,max = 30,message = "state should be min 3 and max 30")
    private String state;

    @NotNull(message = "please enter postal code")
    @Size(min = 1, max = 6,message = "please enter valid Postcode")
    private String postalCode;

    @NotEmpty(message = "Please choose the License Type")
    private String licenseType;


    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
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

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getLicenseType() {
        return licenseType;
    }

    public void setLicenseType(String licenseType) {
        this.licenseType = licenseType;
    }

    @Override
    public String toString() {
        return "DrivingLicenseDTO{" +
                "fullName='" + fullName + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", postalCode=" + postalCode +
                ", licenseType='" + licenseType + '\'' +
                '}';
    }
}
