public class CafeJava {

  public static void main(String[] args) {
    // APP VARIABLES
    // Lines of text that will appear in the app.
    String generalGreeting = "Welcome to Cafe Java, ";
    String pendingMessage = ", your order will be ready shortly!";
    String readyMessage = ", your order is ready!";
    String displayTotalMessage = " Your total is $";

    // Menu variables (add yours below)
    double mochaPrice = 3.50;
    double dripCoffeePrice = 1.95;
    double lattePrice = 2.50;
    double cappuccinoPrice = 2.95;

    // Customer name variables (add yours below)
    String customer1 = "Cindhuri";
    String customer2 = "Sam";
    String customer3 = "Jimmy";
    String customer4 = "Noah";

    // Order completions (add yours below)
    boolean isReadyOrder1 = false;
    boolean isReadyOrder2 = true;
    boolean isReadyOrder3 = false;
    boolean isReadyOrder4 = true;

    // APP INTERACTION SIMULATION (Add your code for the challenges below)
    // Example:
    // System.out.println(generalGreeting + customer1); // Displays "Welcome to Cafe Java, Cindhuri"
    // ** Your customer interaction print statements will go here ** //
    //+ (1)
    System.out.println(generalGreeting + customer1 + pendingMessage); // Displays "Welcome to Cafe Java, Cindhuri, your order will be ready shortly"

    System.out.println(
      "========================================================================================================"
    );

    //+ (2)
    System.out.println(generalGreeting + customer4); // Displays "Welcome to Cafe Java, Noah"
    System.out.println(". . .");
    // if (isReadyOrder4) {
    //   System.out.println(customer4 + readyMessage);
    //   System.out.println(displayTotalMessage + cappuccinoPrice);
    // } else {
    //   System.out.println(pendingMessage);
    // }

    // System.out.println(
    //   "========================================================================================================"
    // );

    // //* ternary operator
    System.out.println(
      isReadyOrder4
        ? customer4 + readyMessage + displayTotalMessage + cappuccinoPrice
        : pendingMessage
    );

    System.out.println(
      "========================================================================================================"
    );

    //+ (3)
    System.out.println(generalGreeting + customer2); // Displays "Welcome to Cafe Java, Sam"
    System.out.println(displayTotalMessage + lattePrice * 2);
    System.out.println(
      isReadyOrder2 ? customer2 + readyMessage : pendingMessage
    );

    System.out.println(
      "========================================================================================================"
    );

    //+ (4)
    System.out.println(generalGreeting + customer3); // Displays "Welcome to Cafe Java, Jimmy"
    System.out.println(
      "I was charged $" + dripCoffeePrice + ", is that right?"
    );
    lattePrice = lattePrice - dripCoffeePrice;
    System.out.println(
      "Oh! Sorry about that! Your new total is $" + lattePrice
    );
  }
}
