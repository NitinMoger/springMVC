package com.xworkz.practiseOnSpringValidation.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("com.xworkz.practiseOnSpringValidation")
@EnableWebMvc
public class ApplicationConfig {

    public ApplicationConfig(){
        System.out.println("No argument constructor for ApplicationConfig");
    }


    @Bean
    public ViewResolver viewResolver(){
        System.out.println("ViewResolver method exicuted");
        return new InternalResourceViewResolver("/",".jsp");
    }

}

