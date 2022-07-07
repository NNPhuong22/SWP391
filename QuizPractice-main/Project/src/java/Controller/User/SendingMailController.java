/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.User;

import Enitity.User;
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author NNPhuong
 */
public class SendingMailController {

    public String getRandom() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }

    public boolean sendEmail(User user) {
        boolean test = false;
        String toEmail = user.getEmail();
        String fromEmail = "phuongnnhe153074@fpt.edu.vn";          // Nhap Email cua ae vao day
        String password = "473nnp931";           // Pass
        String link = "http://localhost:8080/QuizPractice/views/common/resetpass.jsp";
        String mailText= "<table style=\"width: 100% !important\" >\n" +
"            <tbody>\n" +
"                <tr>\n" +
"                    <td>\n" +
"                        <div>\n" +
"                            <h2>Hello, "+user.getLastname()+"</h2>\n" +
"                        </div>\n" +
"                        <div>\n" +
"                            You recently took steps to reset the password for your account. Click on the link below to reset your password.\n" +
"                        </div>\n" +
"                        <br>\n" +
"                        <a href=\""+link+"?id="+"\">Reset Password</a>\n" +
"                        <br>\n" +
"\n" +
"                        <div>\n" +
"                            This link will expire in 1 days after this email was sent.\n" +
"                        </div>\n" +
"\n" +
"                        <br>\n" +
"                        <div>\n" +
"                            Sincerely,\n" +
"                            <h4>The Hanger Team</h4>\n" +
"                        </div>\n" +
"                    </td>\n" +
"                </tr>\n" +
"            </tbody>\n" +
"        </table>";;
        try {
            Properties pr = new Properties();
            pr.setProperty("mail.smtp.host", "smtp.gmail.com");
            pr.setProperty("mail.smtp.port", "465");
            pr.setProperty("mail.smtp.auth", "true");
            pr.setProperty("mail.smtp.starttls.enable", "true");
            pr.put("mail.smtp.socketFactory.port", "465");
            pr.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

            // get session
            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });
            
            Message mess = new MimeMessage(session);
            mess.setContent(mailText,  "text/html");
            mess.setSubject("Reset Password");
            mess.setFrom(new InternetAddress(fromEmail));
            mess.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            Transport.send(mess);
            
//            mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
//            mess.setFrom( new InternetAddress(fromEmail));
//            
//            mess.setText(mailText );
//            Transport.send(mess);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return test;
    }
}
