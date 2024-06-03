package com.xworkz.practiseOnSpringValidation.dto;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class StudentIdDTO {

    @NotNull(message = "First Name cannot be null")
    @Size(min = 3,max = 30,message = "First Name should be min 3 and max 30")
    private String firstName;
    @NotNull(message = "Name cannot be null")
    @Size(min = 3,max = 30,message = "Last Name should be min 3 and max 30")
    private String lastName;
    @Min(1)
    @Max(9999999999L)
    private Long mobileNumber;
    @NotBlank(message = "Please select your date of Birth")
    private String dob;
    @NotEmpty(message = "Please select the department")
    private String department;
    @NotEmpty(message = "Please select the bloodGroup")
    private String bloodGroup;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Long getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(Long mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    @Override
    public String toString() {
        return "StudentIdDTO{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", mobileNumber=" + mobileNumber +
                ", dob='" + dob + '\'' +
                ", department='" + department + '\'' +
                ", bloodGroup='" + bloodGroup + '\'' +
                '}';
    }
}
