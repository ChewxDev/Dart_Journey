//! OBJECT-ORIENTED PROGRAMMING (intro)
/*
OOP is a specific way of designing a program.
It allows us to think of the data in our program 
in terms of real-world objects, 
with both properties and behaviors
*/

//* class
// its a blue-print of an object
/*
A class is a user-defined type that describes 
what a certain type of object will contain and how it will behave
*/

//* Object
// Object -- an encapsulation of data along
//with functions that act upon that data.

/*
so if a class is a bluprint of a house, 
an object is the actual house
*/

//* defining classes
class Car {
  // the ? mark was added after we talked about null-safety
  // if you face errors just don't include it
  String? make;//Variables in classes are called properties
  String? bodyType;

  String toJson() {//Functions in classes aree called methods
    return '{"make":$make,"bodyType":"$bodyType"}';
  }//JSON is javascrip object notation

  //JSON objects aree key/value pairs, the keys must bee a string but the value can be ay valid JSON sata type
  //it is written in curly braces and the keys annd avlues are seperated with : 
  //We write apps in JSON format so it can be easily sent to a database

  @override
  String toString() {
    return 'Car(make:$make, bodyType:$bodyType)';
  }
}

void main() {
  //* creating an object
  var car = Car();

  // changing property values
  car.make = 'Ford';
  car.bodyType = 'SUV';

  // printing an object
  print(car);

  // printing an object with method override
  print(car);

  //* object serialization
  /*
  Serialization is the process of converting a
  complex data object into a string. 
  */

  // adding JSON serialization
  print(car.toJson());

  //* cascade notation (..)
  // without cascade notation
  car.make = 'Mazda';
  car.bodyType = 'Sedan';
  print(car.toJson());
  // with cacade
  car = Car()
  ..make = 'Nissan'
  ..bodyType = 'SUV';
  print(car.toJson());

}