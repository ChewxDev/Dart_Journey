import 'dart:io';

//! FUNCTION
// Functions are "self contained" modules of code that accomplish a specific task.

// add numbers (WITHOUT FUNCTION)

import 'dart:io';

var result1 = 1 + 1;

var result2 = 23 + 21;

var result3 = 90 + 1;

//Reason why functions were created is stated below
// DRY (don't repeat yourself)
// Here is the basic workflow of a function
// input -> function (do something) -> output

/*
! syntax
returnType functionName (inputs){
  code
  ...
  return a result;
}
*/

// multiple parameters | with return
int add(int value1, int value2){//fuction to add numbers, this is called positional parameters becase the arguments must be innitialialized in the order of their parameters
  var result = value1 + value2;
  return result;
}

// single parameter | no return
void isEvenOrOdd(int value){
  if(value % 2 == 0){
    print('$value is even');
  }else{
    print('$value is odd');
  }
}

// optional parameter | with return
  // the ? mark was added after we talked about null-safety
  // if you face errors just don't include it
String enterName(String firstName, [String? lastName]){//Called optional parameter because even if the argument of the parameter is not initialized it would not raise error
  if (lastName == null) {
   return firstName;
  }else{
    return '$firstName $lastName';
  }
}

// default values
void enterProfileDetails(String name, [String position = 'student']){//Called default parameter because the parameter is initialized directly
  print('Name: $name \n Position: $position');
}

// named parameter
void editProfile({String? newName, String? newPassword}){//Called named parameter because to initialize it as an argument you need to use the name of the parameter, and it can be assigned in any order
  print('New name: $newName \n New password: $newPassword');
}

// mixed parameters
  // the ? mark was added after we talked about null-safety
  // if you face errors just don't include it
void userDetails(String name, {String? position}){
  print('Name: $name \n Position: $position');
}



void main(){
  var result = add(int.parse(stdin.readLineSync()!), int.parse(stdin.readLineSync()!));//The exclamation marks are null assertion.
  print('The result is: $result');

  isEvenOrOdd(3);
  isEvenOrOdd(2);

  print(enterName('Chewx'));
  print(enterName('Chewx', 'Dev'));

  enterProfileDetails('Chewx');
  enterProfileDetails('Chewx', 'Developer');

  editProfile(newName: 'Chewx', newPassword: '123abc');

  userDetails('Chewx', position: 'Software Engineer');

}

// ! Writing better function
// maximize the use of pure functions and minimize side-effects
// functions with side-effect 
void printHelloWorld(){
  print('Hello world');//Calls another function to output the text, hence a side effect
}

var age = 24;
void displayName(String name){
  age--;//Alters variables outside its scope hence a side effect
  print(name);
}

// functions with no side-effects
String helloWorld(){
  return 'Hello world'; //Just returns the text, no side effects
}

String userName(String name){
  return name;
}

// Do only one thing (SINGLE RESPONSIBILITY PRINCIPLE)

// choosing good naming