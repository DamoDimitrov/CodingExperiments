/*
Write a JS program that extracts the values
from an object and outputs them as comma separated list.
Assume all objects have { [key: string]: string } signature.
Objects can have arbitrary keys.
----------------------------------------------------
Expected Output (Sample 1) - A string
----------------------------------------------------
Torre,tbaddoe0@bloomberg.com
Deidre,dtousey1@lulu.com
Rhys,rnutman2@mail.ru
Engelbert,ebaythrop3@ox.ac.uk
Leticia,lkyberd4@topsy.com
Noe,nglanert5@disqus.com
Jo-ann,jracine6@whitehouse.gov
Mickie,mstell7@ning.com
Nicolas,nkither8@marriott.com
Gretel,gweddeburn9@seesaa.net
----------------------------------------------------
Expected Output (Sample 2) - A string
----------------------------------------------------
Inverse,leverage
Synergistic,paradigm,Centralized
Lightyears
----------------------------------------------------
hint: output the values of each entry as a comma separated list
*/

const sampleInput1 = [
  { name: 'Torre', email: 'tbaddoe0@bloomberg.com' },
  { name: 'Deidre', email: 'dtousey1@lulu.com' },
  { name: 'Rhys', email: 'rnutman2@mail.ru' },
  { name: 'Engelbert', email: 'ebaythrop3@ox.ac.uk' },
  { name: 'Leticia', email: 'lkyberd4@topsy.com' },
  { name: 'Noe', email: 'nglanert5@disqus.com' },
  { name: 'Jo-ann', email: 'jracine6@whitehouse.gov' },
  { name: 'Mickie', email: 'mstell7@ning.com' },
  { name: 'Nicolas', email: 'nkither8@marriott.com' },
  { name: 'Gretel', email: 'gweddeburn9@seesaa.net' }
];

const sampleInput2 = [
  { foo: 'Inverse', bar: 'leverage' },
  { baz: 'Synergistic', qax: 'paradigm', fwax: 'Centralized' },
  { singleKey: 'Lightyears' }
];

function arrayToCSV(array) {
  const arr = [Object.keys(array[0])].concat(array)

  return arr.map(it => {
    return Object.values(it).toString()
  }).join('\n')
}

console.log(arrayToCSV(sampleInput1));
