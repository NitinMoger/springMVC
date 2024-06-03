package com.xworkz.practiseOnSpringValidation.dto;

import org.hibernate.validator.constraints.Email;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ContactUsDTO {


    @NotNull(message = "Please enter a valid Holder Name")
    @Size(min = 3, max = 30, message = "Holder name should be between 3 and 30 characters")
    private String fullName;

    @Email(message = "Please enter a valid Email")
    private String email;

    @NotNull(message = "Please enter a valid Phone Number")
    @Min(value = 1111111111L, message = "Phone number should be at least 10 digits")
    @Max(value = 9999999999L, message = "Phone number should be at most 10 digits")
    private Long phoneNumber;

    @NotNull(message = "Please enter the subject")
    @Size(min = 3, max = 30, message = "Subject should be between 3 and 30 characters")
    private String subject;

    @NotNull(message = "Please enter a valid message")
    @Size(min = 3, max = 300, message = "Message should be between 3 and 300 characters")
    private String message;


    @Override
    public String toString() {
        return "ContactUsDTO{" +
                "fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber=" + phoneNumber +
                ", subject='" + subject + '\'' +
                ", message='" + message + '\'' +
                '}';
    }

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

    public Long getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Long phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
