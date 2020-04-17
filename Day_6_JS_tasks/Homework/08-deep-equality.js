/*
Write a JS program to compare two objects and determine if they're deeply equal.
This means that they contain equivalent property values.
----------------------------------
Expected Output - a boolean
----------------------------------
deepEquals(obj1, obj2) => true
deepEquals(obj1, obj3) => false
deepEquals(obj3, obj4) => true
----------------------------------
Defend the program against bad inputs!
 */

const obj1 = {
  foo: 'bar',
  baz: {
    qax: 'max',
    fax: {
      bax: 'gax'
    }
  }
};
const obj2 = {
  foo: 'bar',
  baz: {
    qax: 'max',
    fax: {
      bax: 'gax'
    }
  }
};
const obj3 = {
  foo: [1, 2, 3]
};
const obj4 = {
  foo: [1, 2, 3]
};

function deepEquals(o1, o2) {
  // write your solution here
}

deepEquals(obj1, obj2);
