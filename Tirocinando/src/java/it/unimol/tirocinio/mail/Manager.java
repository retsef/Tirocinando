package it.unimol.tirocinio.mail;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

import it.unimol.tirocinio.mail.Config.*;

/**
 * Classe per inviare Email
 * 
 * @author roberto
 */
public class Manager {
    
    private Properties properties;
    private Session session;
    
    public Manager() {
        // Get system properties
        this.properties = System.getProperties();
        // Setup mail server
        this.properties.setProperty("mail.smtp.host", Config.getHost());
        // Get the default Session object.
        this.session = Session.getDefaultInstance(properties);
    }
    
    public void SendMessage(String from, String to, String subject, String message) throws MessagingException {
        // Create a default MimeMessage object.
        MimeMessage mail = new MimeMessage(session);
        // Set From: header field of the header.
        mail.setFrom(new InternetAddress(from));
        // Set To: header field of the header.
        mail.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
        // Set Subject: header field
        mail.setSubject(subject);
        // Now set the actual message
        mail.setText(message);
        // Send message
        Transport.send(mail);
    }
    
    public void SendMessage(String to, String subject, String message) throws MessagingException {
        this.SendMessage(Config.getFrom(), to, subject, message);
    }
    
    
    
}
