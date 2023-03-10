package Models;

import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        Quotes q1 = new Quotes(1, "isaac", "yanez", "I think I am liking java now");

        Quotes q2 = new Quotes(2, "billy", "bob", "Man I hate JAVA!");

        ArrayList<Quotes> quotes = new ArrayList<>();

        quotes.add(q1);
        quotes.add(q2);

        for(Quotes quote: quotes ){
            System.out.println(quote.getQuote() + " - " + quote.getFirsName());
        }
    }
}
