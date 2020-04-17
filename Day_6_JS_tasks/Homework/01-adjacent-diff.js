/*
Write a JS program to find the maximum difference
between any two adjacent integers in any array of integers
------------------------------------------------
Expected Output - An integer
------------------------------------------------
adjacentDiff(sampleInput1) => 1
adjacentDiff(sampleInput2) => 3
adjacentDiff(sampleInput3) => 8
------------------------------------------------
*/

const sampleInput1 = [1, 2, 3];
const sampleInput2 = [2, 2, 2, 5];
const sampleInput3 = [5, 12, 8, 16, 9, 11];

function adjacentDiff(array) {
  // write your solution here
  let max = 0;
  for(let i = 0; i < array.length - 1; i++) {
    let diff = Math.abs(array[i] - array[i + 1]);
    if(diff > max) {
      max = diff;
    }
  }
  return max;
 }

console.log(adjacentDiff(sampleInput1));
