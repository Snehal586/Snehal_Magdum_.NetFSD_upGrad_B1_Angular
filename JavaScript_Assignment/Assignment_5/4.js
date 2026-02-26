class Vehicle {
    constructor(brand, speed) {
        this.brand = brand;
        this.speed=speed;
    }
    start() {
        console.log(this.brand + " Vehicle start");
    }
}

class Car extends Vehicle {
    constructor(brand, speed, fuelType) {
        super(brand, speed);
        this.fuelType=fuelType;
    }
    showDetails() {
        console.log(`Brand: ${this.brand}, Speed: ${this.speed}, FuelType: ${this.fuelType}`);
    }
}
const car = new Car("Kia", 100, "CNG");

car.start();
car.showDetails();