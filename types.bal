
type Loyalty record {|
    int points;
    string expiryDate;
|};

type CustomersItem record {|
    string id;
    string name;
    string email;
    string phone;
    Loyalty loyalty;
|};

type Customers CustomersItem[];
