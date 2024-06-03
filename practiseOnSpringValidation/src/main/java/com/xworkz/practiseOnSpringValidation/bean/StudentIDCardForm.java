package com.xworkz.practiseOnSpringValidation.bean;

import com.xworkz.practiseOnSpringValidation.dto.StudentIdDTO;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;


@Component
@RequestMapping("")
@Validated
public class StudentIDCardForm {

    public StudentIDCardForm(){
        System.out.println("Create a StudentIDCard");
    }

    @PostMapping("/submitForm")
    public String onClick(@Valid StudentIdDTO studentIdDTO, BindingResult bindingResult, Model model){

        if(bindingResult.hasErrors()){
            System.err.println("You are Entered Invalid data");
            bindingResult.getAllErrors().forEach(objectError -> System.err.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());
            return "StudentIdCardApplicationForm";
        }
        else {
            System.out.println("All the data:"+studentIdDTO);
            model.addAttribute("studentsData",studentIdDTO.getFirstName()+",Thanks for Applying");
            model.addAttribute("studentIdDTO",studentIdDTO);
        }
        return "Success";

    }
}
