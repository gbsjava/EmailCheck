package com.simple.check.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.mail.MessagingException;

@RestController
public class EmailController {

    @Autowired
    private MailSender mailSender;

    @RequestMapping("/email")
    public void  sendMail() throws MessagingException {
       mailSender.send("abc@gmail.com", "Test email", "Hello");
    }
}
