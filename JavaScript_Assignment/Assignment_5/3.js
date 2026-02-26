class Student {
    constructor(name) {
        this.name =name;
        this.marks =[];
    }
    addMark(mark) {
    this.marks.push(mark);
    console.log("Marks added :", mark);
  }

  getAverage() {

    let total = this.marks.reduce(
      (sum, m) => sum + m, 0
    );

    let avg = total / this.marks.length;
    return avg;
  }

  getGrade() {

    let avg = this.getAverage();

    if (avg >= 90) return "A";
    else if (avg >= 75) return "B";
    else if (avg >= 50) return "C";
    else return "Fail";
  }
}


const s1 = new Student("Sejal");

s1.addMark(95);
s1.addMark(98);
s1.addMark(85);

console.log("Average:", s1.getAverage());
console.log("Grade:", s1.getGrade());

