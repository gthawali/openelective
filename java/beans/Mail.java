package beans;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
 
public class Mail {
    
    
    
    public Mail()
    {
         
    }
    public boolean sendMail(String msg,String emailid,String sub)
    {
		System.out.println("email="+emailid);
		System.out.println("email="+msg);
		System.out.println("email="+sub);
    	//final String username = "acaprojects23@outlook.com";
       // final String password = "AcaProjects@23";
        final String username = "gauravthawali@outlook.com";
        final String password = "Thawali@1234";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "outlook.office365.com");
        props.put("mail.smtp.port", "587");
        //props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        Session session = Session.getInstance(props,
          new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
          });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse(emailid));
            message.setSubject(sub);
            message.setText(msg);

            Transport.send(message);

            System.out.println("Done");
            return true;

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void accountActivation(String usernm,String userid,String pass,String email)
    {        
        try
        {            
            String msg=" Dear "+usernm+","+ "\n\n Your account request is approved successfully on AI Forum.";
            msg+="\n\n Your login credentials are as follows\n Userid : "+userid+" \n Password : "+pass;
            msg+="\n\n Thank you.\n System Administrator.";
            sendMail(msg,email,"Account Activation" );
        }
        catch(Exception ex){}
    }
    
   
    
    
    public void passRecovery(String usernm,String pass,String email)
    {
        try
        {            
            String msg=" Dear "+usernm+","+ "\n\n Your password recovered successfully on AI Forum.";
            msg+="\n Your new password is : "+pass+"\n\n Thank you.\n System Administrator.";
           sendMail(msg,email,"Password Recovery" );
        }
        catch(Exception ex){}
    } 
    
    
}

