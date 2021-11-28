import 'dart:io';

void main(List<String> arguments) {
  int number =
      5; // Saves the digit 5 to the name/variable number and it is given a type annotation of int, representing integer
  int number2 = 6;
  int result = number +
      number2; //Since we assigned the digits to variables we can add the variables here
  print(result); // to get the answer
  result = 234;
  print(
      result); //Here we see we can easily change the value of result and in most cases we do not want that, so this is why we use constant variables, we'll speak more on it later

  //! VARIABLES
  // numbers
  int age = 18; //Used of numbers without decimal
  double price = 12.7; //Used for numbers with decimal
  num size = 32.1; //Can store both double and int
  // boolean
  bool doILoveDart = true; //Takes in either truee or false
  // strings
  String name = "ChewxDev"; //Takes in Strings
  //list
  List prices = [12, 10, 32]; //Takes in multiple values

  /**
   * ! Rules for naming variables
   * - Variable name can consist of letter and alphabets.
   * - Keywords are not allowed to use as a variable name.
   * - Blank spaces are not allowed in variable name.
   * - First character of variable should always be alphabet and cannot be digit.
   * - Variable name are case sensitive
   * - Special characters like #, $ are not allowed 
  */

  //! TYPE SAFETY - Numbers assigned a typed cannot be assigned to a diffrent type
  String myName = "ChewxDev"; //Already assigned to a string
  // myName = 3; //Cannot be assiigned to an int

  //num can accept both int and double as stated earlier
  num fee = 10;
  fee = 7.7;

  var weight = 3.14;
  // weight = "car";

  //Only dynamic does not follow the null safety rule, hence it is advisable to use only when totally necessary
  dynamic weight2 = 3.14;
  weight2 = 'car';

  //! CONSTANTS - variables who values does not change either in compile or runtime 
  /**
   * To define constant variables we use 2 keywords
   * const & final
   */

//* compile-time constant - we define the value when writing the code, hence the computer knows the value before running the code
  const constantValue = 7;
  // constantValue = 3;

//* runtime constant - variables that are know when the code irunning eg users name

  final userName = stdin.readByteSync();
  print(userName);
  final currentDay = DateTime.now().toUtc().toString();
  print('Today is: ' + currentDay);
}
