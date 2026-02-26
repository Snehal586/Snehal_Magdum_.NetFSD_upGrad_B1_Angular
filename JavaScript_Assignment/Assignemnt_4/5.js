
let numbers = [10, 20, 30, 10, 40, 20, 50, 60, 60];

let uniqueNumbers = [...new Set(numbers)];
console.log("Unique Numbers:", uniqueNumbers);

let secondLargest = [...new Set(numbers)]
        .sort((a,b)=>b-a)[1];

console.log("Second Largest:", secondLargest);

let frequency = numbers.reduce((acc,num)=>{
    acc[num] = (acc[num] || 0) + 1;
    return acc;
}, {});

console.log("Frequency:", frequency);

let firstNonRepeat = numbers.find(num => frequency[num] === 1);

console.log("First Non-Repeating:", firstNonRepeat);

let rotateBy = 2;

let rotatedArray =
    numbers.slice(rotateBy).concat(numbers.slice(0, rotateBy));

console.log("Rotated Array:", rotatedArray);

let nested = [1,2,[3,4,[5]]];

function flatten(arr){
    return arr.reduce((acc,val)=>
        acc.concat(Array.isArray(val) ? flatten(val) : val)
    ,[]);
}

console.log("Flattened Array:", flatten(nested));

let arr = [1,2,3,5,6];

let missingNumber;

for(let i=0;i<arr.length;i++){
    if(arr[i+1] !== arr[i]+1){
        missingNumber = arr[i]+1;
        break;
    }
}

console.log("Missing Number:", missingNumber);

