package com.xworkz.practiseOnSpringValidation.bean;

import com.xworkz.practiseOnSpringValidation.dto.PassportApplicationDTO;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Component
@RequestMapping("/")
@Validated
public class PassportApplication {

    public PassportApplication(){
        System.out.println("no argument constructor for PassportApplication");
    }


    @PostMapping("/passport")
    public String passportApply(@Valid PassportApplicationDTO passportApplicationDTO, BindingResult bindingResult, Model model){
        System.out.println("PassportApply method is running in the class PassportApplication");

        if(bindingResult.hasErrors()){
            System.err.println("You are Entered Invalid data");
            bindingResult.getAllErrors().forEach(objectError -> System.err.println(objectError.getDefaultMessage()));
            model.addAttribute("invalidData",bindingResult.getAllErrors());
            return "PassportApplication";
        }
        else {
            System.out.println("All the data:"+passportApplicationDTO);
            model.addAttribute("userData",passportApplicationDTO.getFirstName()+",Thanks for Applying");
            model.addAttribute("passportApplicationDTO",passportApplicationDTO);
        }


        return "Success";
    }


}
