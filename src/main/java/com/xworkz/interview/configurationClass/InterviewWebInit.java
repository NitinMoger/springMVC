package com.xworkz.interview.configurationClass;

import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

public class InterviewWebInit extends AbstractAnnotationConfigDispatcherServletInitializer implements WebMvcConfigurer {

    public InterviewWebInit(){
        System.out.println("create the InterviewWebInit");
    }

    @Override
    protected Class<?>[] getRootConfigClasses() {
        System.out.println("Run the getRootConfigClass");
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        System.out.println("Run the getServletConfigClasses");
        return new Class[]{InterviewConfiguration.class};
    }

    @Override
    protected String[] getServletMappings() {
        System.out.println("Run the getServletMappings");
        return new String[]{"/"};
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        System.out.println("configure default servlet Handling");
        configurer.enable();
    }

}
