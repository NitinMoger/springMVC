package com.xworkz.interview.beanClass;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("/")
public class SendMessage {

    public SendMessage(){
        System.out.println("create the sendmessage");
    }

    @PostMapping("/sent")
    public String sendingMessage(){
        System.out.println("Send the message successsfully");
        return "index";
    }
}
