package com.xworkz.practiseOnSpringValidation.dto;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class CheckBookApplicationDTO {

    @NotNull(message = "Please enter a valid Holder Name")
    @Size(min = 3, max = 30, message = "Holder name should be between 3 and 30 characters")
    private String fullName;

    @NotNull(message = "Please enter a valid Account Number")
    @Size(min = 1, max = 13, message = "Account number should be between 1 and 12 characters")
    private String accountNumber;

    @Email(message = "Please enter a valid Email")
    private String email;

    @NotNull(message = "Please enter a valid Phone Number")
    @Min(value = 1000000000L, message = "Phone number should be exactly 10 digits")
    @Max(value = 9999999999L, message = "Phone number should be exactly 10 digits")
    private Long phoneNumber;

    @NotNull(message = "Please enter a valid Branch Name")
    @Size(min = 3, max = 30, message = "Branch name should be between 3 and 30 characters")
    private String branchName;

    @NotNull(message = "Please enter a valid Address")
    @Size(min = 3, max = 30, message = "Address should be between 3 and 30 characters")
    private String address;

    @NotNull(message = "Please enter a valid City")
    @Size(min = 3, max = 30, message = "City should be between 3 and 30 characters")
    private String city;

    @NotNull(message = "Please enter a valid Postal Code")
    @Size(min = 6, max = 6, message = "Postal code should be exactly 6 characters")
    private String postalCode;

        @Override
        public String toString() {
            return "CheckBookApplication{" +
                    "fullName='" + fullName + '\'' +
                    ", accountNumber='" + accountNumber + '\'' +
                    ", email='" + email + '\'' +
                    ", phoneNumber=" + phoneNumber +
                    ", branchName='" + branchName + '\'' +
                    ", address='" + address + '\'' +
                    ", city='" + city + '\'' +
                    ", postalCode='" + postalCode + '\'' +
                    '}';
        }

        public String getFullName() {
            return fullName;
        }

        public void setFullName(String fullName) {
            this.fullName = fullName;
        }

        public String getAccountNumber() {
            return accountNumber;
        }

        public void setAccountNumber(String accountNumber) {
            this.accountNumber = accountNumber;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public Long getPhoneNumber() {
            return phoneNumber;
        }

        public void setPhoneNumber(Long phoneNumber) {
            this.phoneNumber = phoneNumber;
        }

        public String getBranchName() {
            return branchName;
        }

        public void setBranchName(String branchName) {
            this.branchName = branchName;
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

        public String getPostalCode() {
            return postalCode;
        }

        public void setPostalCode(String postalCode) {
            this.postalCode = postalCode;
        }


}
