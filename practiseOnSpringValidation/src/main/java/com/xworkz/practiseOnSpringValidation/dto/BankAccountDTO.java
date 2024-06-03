package com.xworkz.practiseOnSpringValidation.dto;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;

public class BankAccountDTO {

    @NotNull(message = "Please enter a valid Holder Name")
    @Size(min = 3, max = 30, message = "Holder name should be between 3 and 30 characters")
    private String accountHolderName;

    @NotNull(message = "Please enter a valid Branch Name")
    @Size(min = 3, max = 30, message = "Branch name should be between 3 and 30 characters")
    private String accountBranchName;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate dateOfBirth;

    @NotNull(message = "Please enter a valid Address")
    @Size(min = 5, max = 300, message = "Address should be between 5 and 300 characters")
    private String address;

    @NotNull(message = "Please enter a valid City Name")
    @Size(min = 3, max = 30, message = "City name should be between 3 and 30 characters")
    private String city;

    @NotNull(message = "Please enter a valid State Name")
    @Size(min = 3, max = 30, message = "State name should be between 3 and 30 characters")
    private String state;

    @NotNull(message = "Please enter a valid Postal Code")
    @Size(min = 5, max = 10, message = "Postal code should be between 5 and 10 characters")
    private String postalCode;

    @NotNull(message = "Please enter a valid Phone Number")
    @Min(value = 1000000000L, message = "Phone number should be at least 10 digits")
    @Max(value = 9999999999L, message = "Phone number should be at most 10 digits")
    private Long phoneNumber;

    @Override
    public String toString() {
        return "BankAccountDTO{" +
                "accountHolderName='" + accountHolderName + '\'' +
                ", accountBranchName='" + accountBranchName + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", postalCode='" + postalCode + '\'' +
                ", phoneNumber=" + phoneNumber +
                '}';
    }

    public String getAccountHolderName() {
        return accountHolderName;
    }

    public void setAccountHolderName(String accountHolderName) {
        this.accountHolderName = accountHolderName;
    }

    public String getAccountBranchName() {
        return accountBranchName;
    }

    public void setAccountBranchName(String accountBranchName) {
        this.accountBranchName = accountBranchName;
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

    public Long getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Long phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
