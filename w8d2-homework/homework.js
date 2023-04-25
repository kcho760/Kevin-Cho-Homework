function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';  
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';  
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';  
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';  
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';  
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}


function madLib(verb, adjective, noun) {
    console.log(`We shall ${verb} the ${adjective} ${noun}`);
}

madLib('run', 'blue', 'bicycle');

function isSubstring(searchString, subString) {
    if (searchString.includes(subString)){
            console.log(true);
    } else {
        console.log(false);
    }
};

isSubstring("time to program", "time")

isSubstring("Jump for joy", "joys")

function fizzBuzz(array) {
    const result = [];
    for (let i = 0; i < array.length; i++) {
        if ((array[i] % 3 === 0 && array[i] % 5 !== 0) || (array[i] % 3 !== 0 && array[i] % 5 === 0)) {
            result.push(array[i]);
        }
    }
    return(result);
}
const array = [3, 5, 9, 10, 12, 15, 18, 20];
const result = fizzBuzz(array);
console.log(result);