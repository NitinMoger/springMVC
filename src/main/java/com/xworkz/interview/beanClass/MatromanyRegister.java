package com.xworkz.interview.beanClass;


import com.xworkz.interview.dto.ContactDTO;
import com.xworkz.interview.dto.MatromonyDTO;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ViewResolver;

@Component
@RequestMapping("/")
public class MatromanyRegister {
     public  MatromanyRegister(){
         System.out.println("create the Matromany Registerd Class");
     }

     @PostMapping("/register")
     public String matroManyInfo(MatromonyDTO matromonyDTO, Model model){

         System.out.println("successFully register your application form");
         System.out.println("Register user Data:"+matromonyDTO);
         model.addAttribute("registerData",matromonyDTO.getName()+",You're Successfully Registered our Matrimony portfolio");
         return "MatromanyRegister";
     }


}
