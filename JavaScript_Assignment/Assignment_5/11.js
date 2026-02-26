class User {

    constructor(username) {
        this.username = username;
        this._password = "";
    }

    set password(value) {
        if (value.length >= 6) {
            this._password = value;
        } else {
            console.log("Password must contain at least 6 characters");
        }
    }

    get password() {
        return `Stored Password: ${this._password}`;
    }
}

let user1 = new User("Snehal");

user1.password = "abc123";

console.log(user1.password);