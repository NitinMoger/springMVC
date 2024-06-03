package com.xworkz.practiseOnSpringValidation.bean;


import com.xworkz.practiseOnSpringValidation.dto.MetroCardDTO;
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
public class MetroCardApplicationBean {

    public MetroCardApplicationBean(){
        System.out.println("create the no argument constructor for MetroCardApplicationBean");
    }

    @PostMapping("metro")
     public String swipeCard(@Valid MetroCardDTO metroCardDTO, BindingResult bindingResult, Model model){
        System.out.println("execute the method of swipeCard in the MetroardApplication");
        if(bindingResult.hasErrors()){
        System.err.println("You are entering the invalid data");
        bindingResult.getAllErrors().forEach(objectError -> System.err.println(objectError.getDefaultMessage()));
        model.addAttribute("errors",bindingResult.getAllErrors());
        return "MetroCardApplication";
    }
        else {
        System.out.println("All the user data:"+metroCardDTO);
        model.addAttribute("metroCardName",metroCardDTO.getFullName());
        model.addAttribute("metroCardDTO",metroCardDTO);
    }
        return "Success";
}
}
