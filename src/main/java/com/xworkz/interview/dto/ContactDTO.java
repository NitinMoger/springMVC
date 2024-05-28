package com.xworkz.interview.dto;

public class ContactDTO {

    private String name;
    private String email;
    private long mobile;
    private String comments;

    public ContactDTO(){
        System.out.println("Create the Contact Dto");
    }
    @Override
    public String toString() {
        return "ContactDTO{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", mobile=" + mobile +
                ", comments='" + comments + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getMobile() {
        return mobile;
    }

    public void setMobile(long mobile) {
        this.mobile = mobile;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}
