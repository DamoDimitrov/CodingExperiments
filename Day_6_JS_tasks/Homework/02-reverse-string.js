/*
Write a JS program to reverse the order of the characters in a string.
Try to solve it on a single line.
-----------------------------------------------------------
Expected Output - A string
-----------------------------------------------------------
reverseString('foobar') => 'raboof'
reverseString('meow') => 'woem'
reverseString(null) => Error
-----------------------------------------------------------
Defend the program against bad inputs!
*/

const sampleInput = 'foobar';

function reverseString(str) {
  // write your solution here
  if(typeof str === "string"){
    return str.split("").reverse().join("");
  } else {
    throw new Error("That is not a string");
  }
}

console.log(reverseString(sampleInput));
