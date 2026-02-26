class BankAccount {

  constructor(accountHolder, balance) {
    this.accountHolder = accountHolder;
    this.balance = balance;
  }

  deposit(amount) {
    this.balance += amount;
    console.log(amount + " deposited successfully.");
  }

  withdraw(amount) {

    if (amount > this.balance) {
      console.log("Insufficient Balance!");
    } 
    else {
      this.balance -= amount;
      console.log(amount + " withdrawn successfully.");
    }
  }

  checkBalance() {
    console.log(
      this.accountHolder + " Balance is :" + this.balance
    );
  }
}


const acc = new BankAccount("Snehal", 10000);

acc.checkBalance();

acc.deposit(4000);
acc.checkBalance();

acc.withdraw(6000);
acc.checkBalance();

acc.withdraw(12000);