package Models;

import java.io.Serializable;

public class Quotes implements Serializable {
    private int id;
    private String firsName;
    private String lastName;
    private String quote;

    public Quotes () {};

    public Quotes(int id, String firsName, String lastName, String quote) {
        this.id = id;
        this.firsName = firsName;
        this.lastName = lastName;
        this.quote = quote;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirsName() {
        return firsName;
    }

    public void setFirsName(String firsName) {
        this.firsName = firsName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getQuote() {
        return quote;
    }

    public void setQuote(String quote) {
        this.quote = quote;
    }
}
