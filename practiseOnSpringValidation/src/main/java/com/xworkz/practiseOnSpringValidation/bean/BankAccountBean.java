package com.xworkz.practiseOnSpringValidation.bean;


import com.xworkz.practiseOnSpringValidation.dto.BankAccountDTO;
import com.xworkz.practiseOnSpringValidation.dto.DrivingLicenseDTO;
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
public class BankAccountBean {

    public BankAccountBean(){
        System.out.println("creating the no argument constructor for BankAccountBean");
    }

    @PostMapping("bank")
    public String serviceForBankAccount(@Valid BankAccountDTO bankAccountDTO, BindingResult bindingResult, Model model)
    {
        System.out.println("exicute the serviceForBankAccount method in BankAccountBean class");
        if(bindingResult.hasErrors()){
            System.err.println("You entered Invalid Data");
            bindingResult.getAllErrors().forEach(objectError -> System.err.println(objectError.getDefaultMessage()) );
            model.addAttribute("errors",bindingResult.getAllErrors());
            return "BankAccount";
        }
        else {
            System.out.println("All the Data Entered By the user:"+bankAccountDTO);
            model.addAttribute("accountData",bankAccountDTO.getAccountHolderName()+",Thanks your Account is created");
            model.addAttribute("bankAccountDTO", bankAccountDTO);
        }

        return "Success";
    }
}
