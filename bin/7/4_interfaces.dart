//! Interfaces - can be created with both abstract and concrete classes, but instead of it extending thee parent class it implements it, and it can also implement more than one class using a , to seperate them unlike when you eeextend a class which you can only extend one

abstract class DataRepository {
  double? fetchTemperature(String city);
  factory DataRepository() => FakeWebServer();//This helps us return the subclass which is FakeWebServer
}

//*Interfaces are blueprint of class, they define methods and properties that the classes are going to implement
//*They hide the business logic (core feature) of the code from the implementation, they can hide how the architecturee works from the actual implementation of the architecture

// implementing interfaces - when implementing an interface you have to override everything in the class you ar implementing
class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {//* core feature here is fetching the temp
    return 42.0;
  }
}


// extending vs implementing
//* subclass can only extend one class
//* subclass can implement multiple classes

// what the difference between the lines
class AnotherClass {
  int myField = 42;
  void myMethod() => print(myField);
}

class AnotherClass2 {
  int myField2 = 42;
  void myMethod2() => print(myField2);
}

class SomeClass extends AnotherClass {}

class SomeClass2 implements AnotherClass, AnotherClass2 {
  @override
  int myField = 0;

  @override
  void myMethod() => print(myField);

  @override
  int myField2 = 0;

  @override
  void myMethod2() {
    // TODO: implement myMethod2
  }
}





void main() {
  var city = 'Abujs';
  final repository = DataRepository(); //the factory type above helps us call DataRepository here, if not we would have calle FakeWebServer
  final temperature = repository.fetchTemperature(city);
  print('the weather in $city is $temperature');
}
