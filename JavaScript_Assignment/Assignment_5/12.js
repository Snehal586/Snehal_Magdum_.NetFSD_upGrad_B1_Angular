class Wallet {

    #balance = 0;

    addMoney(amount) {
        this.#balance += amount;
    }

    spendMoney(amount) {
        this.#balance -= amount;
    }

    getBalance() {
        return this.#balance;
    }
}

let wallet = new Wallet();

wallet.addMoney(1000);
wallet.spendMoney(300);

console.log(wallet.getBalance());