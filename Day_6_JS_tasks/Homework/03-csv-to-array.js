/*
Write a JS program that extracts the username and email from a CSV
-----------------------------------------------------------
Expected Output - An array of objects
-----------------------------------------------------------
[
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
]
-----------------------------------------------------------
There should be no empty entries. The row from the csv containing the column headers should be ommited.
If a non string input is passed, throw an error
*/

const sampleInput = `
id,name,email
1,Torre,tbaddoe0@bloomberg.com
2,Deidre,dtousey1@lulu.com
3,Rhys,rnutman2@mail.ru
4,Engelbert,ebaythrop3@ox.ac.uk
5,Leticia,lkyberd4@topsy.com
6,Noe,nglanert5@disqus.com
7,Jo-ann,jracine6@whitehouse.gov
8,Mickie,mstell7@ning.com
9,Nicolas,nkither8@marriott.com
10,Gretel,gweddeburn9@seesaa.net
`;

function csvToArray(csv) {
  // write your solution here
  let data = csv.trim().split("\n");
  let output = [];
  for(let i = 1; i < data.length; i++) {
    let row = data[i].split(",");
    let obj = {
      "name": row[1],
      "email": row[2]
    };

    output.push(obj);
  }
  return output;
}

console.log(csvToArray(sampleInput));
