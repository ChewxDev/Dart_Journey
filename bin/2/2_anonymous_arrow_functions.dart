// ! ANONYMOUS FUNCTION-Can be used without been defined previously
/*
! Syntax
(parameters){
  # code
}
*/

// * first class citizens
/*
functions are first-class citizens. 
That means you can treat them like any other other type,
*/

// assign function to variables

Function add = (int a, int b) {//Takes functions as values with the data type function
  return a + b;
};

// int result = addition(int a, int b){ Error, you'll have to use the function type
//   return a + b;
// };

// passing a function as an argument
void doSomething(Function callback) {//Takes function as parameter
  print(callback.call());//Uses the call method on the function
}

// return a function
Function applyMultiplier(num multiplier) {//Multiplier as parameter
  return (num value) {//returns the value as a parameter that computes the calculation
    return value * multiplier; //the calculation 
  };
}

void main() {
  print(add(1, 2));

  //arrow function, does not require the return or curly braces just => then what you want the funnction to do, only applicable when the function is returning just one value 
  doSomething(() => 'Hello there!');

  var triple = applyMultiplier(3);
  print('the triple of 4 is ${triple(4)}');

  // anonymous functions in a forEach loop
  const values = [2, 3, 4, 5];

  //to douuble every element of the List above
  values.forEach((value) {//takes a parameter, in this case value
    print('double of $value is ${value * 2}');
  });
}
