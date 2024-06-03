package com.xworkz.practiseOnSpringValidation.bean;


import com.xworkz.practiseOnSpringValidation.dto.CreditCardApplicationDTO;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Component
@RequestMapping
@Validated
public class CreditCardApplicationBean {

    public CreditCardApplicationBean(){
        System.out.println("Create the no argument constructor for CreditCardApplicationBean");
    }

    @PostMapping("credit")
    public String borrowMoney(@Valid CreditCardApplicationDTO creditCardApplicationDTO, BindingResult bindingResult, Model model){

        System.out.println("exicute te method borrowMoney In CreditCardApplicationBean");
        if(bindingResult.hasErrors()){
            System.err.println("You Are enter the Invallid data");
            bindingResult.getAllErrors().forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());
            return "CreditCardApplication";
        }
        else {
            System.out.println("user Data:"+creditCardApplicationDTO);
            model.addAttribute("creditName",creditCardApplicationDTO.getFullName());

        }
        model.addAttribute("allCreditData",creditCardApplicationDTO);
        return "Success";
    }
}
