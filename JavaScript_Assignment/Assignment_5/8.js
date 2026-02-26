class Payment {
    pay(amount) {
        console.log("Processing payment: " + amount);
    }
}

class CreditCardPayment extends Payment {
    pay(amount) {
        console.log("Transaction successful via Credit Card for ₹" + amount);
    }
}

class UPIPayment extends Payment {
    pay(amount) {
        console.log("UPI transfer completed for ₹" + amount);
    }
}

class CashPayment extends Payment {
    pay(amount) {
        console.log("Cash received: ₹" + amount);
    }
}

let payments = [
    new CreditCardPayment(),
    new UPIPayment(),
    new CashPayment()
];

payments.forEach(p => p.pay(2500));