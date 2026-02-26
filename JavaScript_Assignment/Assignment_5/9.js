class Product {

    constructor({name, price, category = "Electronics"}) {
        this.name = name;
        this.price = price;
        this.category = category;
    }

    showDetails = () => {
        console.log(`Product: ${this.name} | Price: ₹${this.price} | Category: ${this.category}`);
    }
}

let productData = {
    name: "MacBook Air M2",
    price: 114900
};

let product1 = new Product(productData);

product1.showDetails();

let extraDetails = {
    brand: "Apple",
    warranty: "1 Year"
};

let fullProduct = { ...productData, ...extraDetails };

console.log(fullProduct);