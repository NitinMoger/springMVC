package com.xworkz.practiseOnSpringValidation.bean;


import com.sun.org.apache.xpath.internal.operations.Mod;
import com.xworkz.practiseOnSpringValidation.dto.ContactUsDTO;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import javax.validation.Valid;

@Component
@RequestMapping("/")
@Validated
public class ContactUsBean {

    public ContactUsBean(){
        System.out.println("create the no argument constructor for ContactUsBean");
    }

    @PostMapping("contacting")
    public String contactMe(@Valid ContactUsDTO contactUsDTO, BindingResult bindingResult, Model model){
        System.out.println("exicute the contact me method in ContactUsBean ");
        if(bindingResult.hasErrors()){
            System.err.println("You enterd the invalid Data");
            bindingResult.getAllErrors().forEach(objectError -> System.err.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());
            return "ContactUs";
        }
        else {
            System.out.println("All Data of The user:"+contactUsDTO);
            model.addAttribute("names",contactUsDTO.getFullName());
            model.addAttribute("contactUsDTO",contactUsDTO);
        }
        return "Success";
    }
}
