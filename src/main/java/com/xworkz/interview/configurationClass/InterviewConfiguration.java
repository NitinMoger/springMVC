package com.xworkz.interview.configurationClass;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("com.xworkz.interview")
public class InterviewConfiguration{

    InterviewConfiguration(){
        System.out.println("Create the InterviewConfiguration");
    }

    @Bean
    public ViewResolver viewResolver(){
        System.out.println("Viewresolver method");
        return new InternalResourceViewResolver("/",".jsp");
    }
}
