package com.xworkz.practiseOnSpringValidation.bean;


import com.xworkz.practiseOnSpringValidation.dto.CheckBookApplicationDTO;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Component
@RequestMapping("/")
@Validated
public class CheckBookApplicationBean {

    public CheckBookApplicationBean(){
        System.out.println("create the no argument constructor for checkBookApplication ");
    }

    @PostMapping("check")
    public String checkProceed(@Valid CheckBookApplicationDTO checkBookApplicationDTO, BindingResult bindingResult, Model model){

        System.out.println("exicute the method of checkProceed in the CheckBookApplicationBean");
        if(bindingResult.hasErrors()){
            System.err.println("You are entering the invalid data");
            bindingResult.getAllErrors().forEach(objectError -> System.err.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());
            return "CheckBookApplication";
        }
        else {
            System.out.println("All the user data:"+checkBookApplicationDTO);
            model.addAttribute("fullName",checkBookApplicationDTO.getFullName());
            model.addAttribute("checkBookApplicationDTO",checkBookApplicationDTO);
        }
        return "Success";
    }

}
