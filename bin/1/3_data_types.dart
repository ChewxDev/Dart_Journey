void main() {

  //! TYPE CONVERSION
  int age = 30;
  String ageString = age.toString();//Changes the number 30 to a string, toString() is a method defined in String

  String price = "12";//Noticed we used 12 as a string, that is because we can only convert what can be in a datatype to a datatype
  double priceDouble = double.parse(price); //Concerted to double
  int priceInteger = int.parse(price); //Converted to int

//! OPERATIONS ON MIXED TYPES
  int integerValue = 3;
  double doubleValue = 2;
  var operationResult = integerValue * doubleValue; //Returns answer in double

  print('The result is: ' + operationResult.toString());//Used concacteation, would be talking about it later, converted it to string to ensure concatenation works
  print('The result\'s type is: ' + operationResult.runtimeType.toString());//Determining the type

//! TYPE CASTING
  num value = 7;
// print(value.isEven);
  var valueInteger = value as int; //Typcasting/Type Conversion - method of changing an entity from one data type to another
  print(valueInteger.isEven);
}
