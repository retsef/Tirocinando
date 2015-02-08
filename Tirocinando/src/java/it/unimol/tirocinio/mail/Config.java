package it.unimol.tirocinio.mail;

/**
 * @author roberto
 */
public class Config {

    // Sender's email ID needs to be mentioned
    private static String from = "support@tirocinando.it";

    // Assuming you are sending email from localhost
    private static String host = "localhost";

    public static String getFrom() {
        return from;
    }

    public static String getHost() {
        return host;
    }
    
}
