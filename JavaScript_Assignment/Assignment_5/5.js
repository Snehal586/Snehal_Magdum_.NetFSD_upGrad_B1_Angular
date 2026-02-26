class Employee {

  constructor(name, salary) {
    this.name = name;
    this.salary = salary;
  }

  getDetails() {
    console.log(`Employee: ${this.name}, Salary: ₹${this.salary}`);
  }
}


class Manager extends Employee {

  constructor(name, salary, bonus) {
    super(name, salary);
    this.bonus = bonus;
  }

  getTotalSalary() {
    let total = this.salary + this.bonus;
    console.log(`Total Salary : ₹${total}`);
  }
}


class Director extends Manager {

  constructor(name, salary, bonus, stockOptions) {
    super(name, salary, bonus);
    this.stockOptions = stockOptions;
  }

  getFullCompensation() {
    let fullComp =
      this.salary + this.bonus + this.stockOptions;

    console.log(`Full Compensation: ₹${fullComp}`);
  }
}


const s = new Director("Sejal", 45000, 10000, 40000);

s.getDetails();
s.getTotalSalary();
s.getFullCompensation();