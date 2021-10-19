/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetablesshop.email;

/**
 *
 * @author VODUCMINH
 */
import java.sql.SQLException;
import java.util.Date;
import java.util.Properties;
 
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import vegetables.orders.OrderDAO;
 
public class SendHTMLEmail {

    public SendHTMLEmail() {
    }
    
    public void sendHtmlEmail(String host, String port,
            final String userName, final String password, String toAddress,
            String subject, String message) throws AddressException,
            MessagingException {
 
        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
 
        // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
        
        public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(userName, password);
            }
        };
 
        Session session = Session.getInstance(properties, auth);
 
        // creates a new e-mail message
        Message msg = new MimeMessage(session);
 
        msg.setFrom(new InternetAddress(userName));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        // set plain text message
        msg.setContent(message, "text/html");
 
        // sends the e-mail
        Transport.send(msg);
 
    }
 
    /**
     * Test the send html e-mail method
     *
     */
    public boolean sendEmail(String orderID, String userEmail) throws SQLException {
        boolean check = false;
        
        // SMTP server information
        String host = "smtp.gmail.com";
        String port = "587";
        String mailFrom = "voducminhtestmail@gmail.com";
        String password = "Minh1402";
        
        OrderDAO order = new OrderDAO();
 
        // outgoing message information
        String mailTo = userEmail;
        String subject = "Confirm Order: " + orderID;

        // message contains HTML markups
        String message = "<!DOCTYPE html>\n" +
"<html>\n" +
"\n" +
"<head>\n" +
"    <title></title>\n" +
"    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n" +
"    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n" +
"    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n" +
"\n" +
"<body style=\"margin: 0 !important; padding: 0 !important; background-color: #eeeeee;\" bgcolor=\"#eeeeee\">\n" +
"    <div style=\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: Open Sans, Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\">\n" +
"        For what reason would it be advisable for me to think about business content? That might be little bit risky to have crew member like them.\n" +
"    </div>\n" +
"    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n" +
"        <tr>\n" +
"            <td align=\"center\" style=\"background-color: #eeeeee;\" bgcolor=\"#eeeeee\">\n" +
"                <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width:600px;\">\n" +
"                    <tr>\n" +
"                        <td align=\"center\" valign=\"top\" style=\"font-size:0; padding: 35px;\" bgcolor=\"#F44336\">\n" +
"                            <div style=\"display:inline-block; max-width:50%; min-width:100px; vertical-align:top; width:100%;\">\n" +
"                                <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width:300px;\">\n" +
"                                    <tr>\n" +
"                                        <td align=\"left\" valign=\"top\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 36px; font-weight: 800; line-height: 48px;\" class=\"mobile-center\">\n" +
"                                            <h1 style=\"font-size: 36px; font-weight: 800; margin: 0; color: #ffffff;\">Organiq</h1>\n" +
"                                        </td>\n" +
"                                    </tr>\n" +
"                                </table>\n" +
"                            </div>\n" +
"                            <div style=\"display:inline-block; max-width:50%; min-width:100px; vertical-align:top; width:100%;\" class=\"mobile-hide\">\n" +
"                                <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width:300px;\">\n" +
"                                    <tr>\n" +
"                                        <td align=\"right\" valign=\"top\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; line-height: 48px;\">\n" +
"                                            <table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"right\">\n" +
"                                                <tr>\n" +
"                                                  \n" +
"                                                </tr>\n" +
"                                            </table>\n" +
"                                        </td>\n" +
"                                    </tr>\n" +
"                                </table>\n" +
"                            </div>\n" +
"                        </td>\n" +
"                    </tr>\n" +
"                    <tr>\n" +
"                        <td align=\"center\" style=\"padding: 35px 35px 20px 35px; background-color: #ffffff;\" bgcolor=\"#ffffff\">\n" +
"                            <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width:600px;\">\n" +
"                                <tr>\n" +
"                                    <td align=\"center\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 25px;\"> <br>\n" +
"                                        <h2 style=\"font-size: 30px; font-weight: 800; line-height: 36px; color: #333333; margin: 0;\"> Thank You For Your Order! </h2>\n" +
"                                    </td>\n" +
"                                </tr>\n" +
"                                <tr>\n" +
"                                    <td align=\"left\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 10px;\">\n" +
"                                        <p style=\"font-size: 16px; font-weight: 400; line-height: 24px; text-align:center; color: #777777;\">OrderID: <span style='font-weight: bold'>"+ orderID + "</span></p>\n" +
"                                    </td>\n" +
"                                </tr>\n" +
"                                <tr>\n" +
"                                    <td align=\"left\" style=\"padding-top: 20px;\">\n" +
"                                        <table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n" +
"                                            <tr>\n" +
"                                                <td width=\"75%\" align=\"left\" bgcolor=\"#eeeeee\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;\"> Order Confirmation </td>\n" +
"                                                <td width=\"25%\" align=\"left\" bgcolor=\"#eeeeee\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;\"></td>\n" +
"                                            </tr>\n" +
"                                            <tr>\n" +
"                                                <td width=\"75%\" align=\"left\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 15px 10px 5px 10px;\"> Purchased Item ("+ order.getOrderDetail(orderID) +") </td>\n" +
"                                                <td width=\"25%\" align=\"left\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 15px 10px 5px 10px;\"> $" + order.getOrderInfo(orderID) +"</td>\n" +
"                                            </tr>\n" +
"                                            <tr>\n" +
"                                                <td width=\"75%\" align=\"left\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;\"> Shipping + Handling </td>\n" +
"                                                <td width=\"25%\" align=\"left\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;\"> $0.00</td>\n" +
"                                            </tr>\n" +
"                                            <tr>\n" +
"                                                <td width=\"75%\" align=\"left\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;\"> Sales Tax </td>\n" +
"                                                <td width=\"25%\" align=\"left\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;\"> $0.00 </td>\n" +
"                                            </tr>\n" +
"                                        </table>\n" +
"                                    </td>\n" +
"                                </tr>\n" +
"                                <tr>\n" +
"                                    <td align=\"left\" style=\"padding-top: 20px;\">\n" +
"                                        <table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n" +
"                                            <tr>\n" +
"                                                <td width=\"75%\" align=\"left\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px; border-top: 3px solid #eeeeee; border-bottom: 3px solid #eeeeee;\"> TOTAL </td>\n" +
"                                                <td width=\"25%\" align=\"left\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px; border-top: 3px solid #eeeeee; border-bottom: 3px solid #eeeeee;\"> $"+ order.getOrderInfo(orderID) +"</td>\n" +
"                                            </tr>\n" +
"                                        </table>\n" +
"                                    </td>\n" +
"                                </tr>\n" +
"                            </table>\n" +
"                        </td>\n" +
"                    </tr>\n" +
"                    <tr>\n" +
"                        <td align=\"center\" height=\"100%\" valign=\"top\" width=\"100%\" style=\"padding: 0 35px 35px 35px; background-color: #ffffff;\" bgcolor=\"#ffffff\">\n" +
"                            <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width:660px;\">\n" +
"                                <tr>\n" +
"                                    <td align=\"center\" valign=\"top\" style=\"font-size:0;\">\n" +
"                                        <div style=\"display:inline-block; max-width:50%; min-width:240px; vertical-align:top; width:100%;\">\n" +
"                                            <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width:300px;\">\n" +
"                                                <tr>\n" +
"                                                    <td align=\"left\" valign=\"top\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px;\">\n" +
"                                                        <p style=\"font-weight: 800;\">Delivery Address</p>\n" +
"                                                        <p>" + order.getShipInfo(orderID) + "</p>\n" +
"                                                    </td>\n" +
"                                                </tr>\n" +
"                                            </table>\n" +
"                                        </div>\n" +
"                                        <div style=\"display:inline-block; max-width:50%; min-width:240px; vertical-align:top; width:100%;\">\n" +
"                                        </div>\n" +
"                                    </td>\n" +
"                                </tr>\n" +
"                            </table>\n" +
"                        </td>\n" +
"                    </tr>\n" +
"                    <tr>\n" +
"                        <td align=\"center\" style=\" padding: 35px; background-color: #ff7361;\" bgcolor=\"#1b9ba3\">\n" +
"                            <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width:600px;\">\n" +
"                                <tr>\n" +
"                                    <td align=\"center\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 25px;\">\n" +
"                                        <h2 style=\"font-size: 24px; font-weight: 800; line-height: 30px; color: #ffffff; margin: 0;\"> Get 30% off your next order. </h2>\n" +
"                                    </td>\n" +
"                                </tr>\n" +
"                                <tr>\n" +
"                                    <td align=\"center\" style=\"padding: 25px 0 15px 0;\">\n" +
"                                        <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n" +
"                                            <tr>\n" +
"                                                <td align=\"center\" style=\"border-radius: 5px;\" bgcolor=\"#66b3b7\"> <a href=\"http://localhost:8080/VegetablesShop/index.jsp\" target=\"_blank\" style=\"font-size: 18px; font-family: Open Sans, Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; border-radius: 5px; background-color: #F44336; padding: 15px 30px; border: 1px solid #F44336; display: block;\">Shop Again</a> </td>\n" +
"                                            </tr>\n" +
"                                        </table>\n" +
"                                    </td>\n" +
"                                </tr>\n" +
"                            </table>\n" +
"                        </td>\n" +
"                    </tr>\n" +
"                    <tr>\n" +
"                        <td align=\"center\" style=\"padding: 35px; background-color: #ffffff;\" bgcolor=\"#ffffff\">\n" +
"                            <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width:600px;\">\n" +
"                                <tr>\n" +
"                                    <td align=\"center\"> </td>\n" +
"                                </tr>\n" +
"                                <tr>\n" +
"                                    <td align=\"center\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 24px; padding: 5px 0 10px 0;\">\n" +
"                                        <p style=\"font-size: 14px; font-weight: 800; line-height: 18px; color: #333333;\"> 675 Parko Avenue<br> LA, CA 02232 </p>\n" +
"                                    </td>\n" +
"                                </tr>\n" +
"                                <tr>\n" +
"                                    <td align=\"left\" style=\"font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 24px;\">\n" +
"                                        <p style=\"font-size: 14px; font-weight: 400; line-height: 20px; color: #777777;\"> If you didn't create an account using this email address, please ignore this email or <a href=\"#\" target=\"_blank\" style=\"color: #777777;\">unsusbscribe</a>. </p>\n" +
"                                    </td>\n" +
"                                </tr>\n" +
"                            </table>\n" +
"                        </td>\n" +
"                    </tr>\n" +
"                </table>\n" +
"            </td>\n" +
"        </tr>\n" +
"    </table>\n" +
"</body>\n" +
"\n" +
"</html>";
//        message += "<b>Wish you a nice day!</b><br>";
//        message += "<font color=red>Duke</font>";
 
        SendHTMLEmail mailer = new SendHTMLEmail();
 
        try {
            mailer.sendHtmlEmail(host, port, mailFrom, password, mailTo,
                    subject, message);
            System.out.println("Email sent.");
            check = true;
        } catch (Exception ex) {
            System.out.println("Failed to sent email.");
            ex.printStackTrace();
        }
        
        return check;
    }
    
}

