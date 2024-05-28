package com.xworkz.interview.beanClass;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("/")
public class SaveMessage {

    public SaveMessage(){
        System.out.println("create the save method");
    }

    @PostMapping("/recv")
    public String saveData(){
        System.out.println("Data Saved Successfully");
        return "index";
    }
}
