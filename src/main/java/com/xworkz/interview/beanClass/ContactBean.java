package com.xworkz.interview.beanClass;


import com.sun.org.apache.xpath.internal.operations.Mod;
import com.xworkz.interview.dto.ContactDTO;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("/")
public class ContactBean {

    public ContactBean(){
        System.out.println("Run the Contact Bean Class");
    }

    @PostMapping("/contactUs")
    public String contactDetails(ContactDTO contactDTO, Model model){
        System.out.println("run contact details method");
        System.out.println("Contact Details:"+contactDTO);
        model.addAttribute("contactData",contactDTO.getName()+", Thanks for contacting");
        return "contact";
    }
}
