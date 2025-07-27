import ballerina/log;
import ballerinax/googleapis.gmail;

public function main() returns error? {
    do {
        Customers customers = check httpClient->get("/customers");
        foreach CustomersItem customer in customers {
            if customer.loyalty.points >= 5000 {
                log:printInfo(customer.email);
            gmail:Message gmailMessage = check gmailClient->/users/["o2mart.info@gmail.com"]/messages/send.post({
                to: [customer.email],
                subject: "O2 Mart - Loyalty promotions",
                bodyInText: "Hello" + customer.name +
"you have won special promotional rewards for your " + customer.loyalty.points.toString() + " points"
            });
            }
        }
    } on fail error e {
        log:printError("Error occurred", 'error = e);
        return e;
    }
}
