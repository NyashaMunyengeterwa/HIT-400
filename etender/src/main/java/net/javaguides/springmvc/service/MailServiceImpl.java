package net.javaguides.springmvc.service;

import net.javaguides.springmvc.entity.EmailOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Service("mailService")
public class MailServiceImpl implements MailService {

    @Autowired
    JavaMailSender mailSender;

    @Override
    public void sendEmail(Object object) {

        EmailOrder order = (EmailOrder) object;

        MimeMessagePreparator preparator = getMessagePreparator(order);

        try {
            mailSender.send(preparator);
            System.out.println("Message Send...Hurrey");
        } catch (MailException ex) {
            System.err.println(ex.getMessage());
        }
    }

    private MimeMessagePreparator getMessagePreparator(final EmailOrder order) {

        MimeMessagePreparator preparator = new MimeMessagePreparator() {

            public void prepare(MimeMessage mimeMessage) throws Exception {
                mimeMessage.setFrom("claytonscm@gmail.com");
                mimeMessage.setRecipient(Message.RecipientType.TO,
                        new InternetAddress("vimurungu@gmail.com"));
                mimeMessage.setText("Dear "
                        + ", thank you for your application.");
                mimeMessage.setSubject("Credit Score Rating");
            }
        };
        return preparator;
    }

}