package com.xworkz.practiseOnSpringValidation.bean;

import com.xworkz.practiseOnSpringValidation.dto.DrivingLicenseDTO;
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
public class DrivingLicenseBean {

    public DrivingLicenseBean(){
        System.out.println("no argument constructor for DrivingLicenseBean");
    }


    @PostMapping("/driving")
    public String passportApply(@Valid DrivingLicenseDTO drivingLicenseDTO, BindingResult bindingResult, Model model){
        System.out.println("PassportApply method is running in the class PassportApplication");

        if(bindingResult.hasErrors()){
            System.err.println("You are Entered Invalid data");
            bindingResult.getAllErrors().forEach(objectError -> System.err.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());
            return "DrivingLicense";
        }
        else {
            System.out.println("All the data:"+drivingLicenseDTO);
            model.addAttribute("drivingData",drivingLicenseDTO.getFullName()+",Thanks for Applying");

        }
        model.addAttribute("drivingLicenseDTO",drivingLicenseDTO);
        return "Success";
    }
}
