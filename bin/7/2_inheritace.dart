//! INHERITANCE
/*
  Inheritance is the procedure in which one class inherits
  the attributes and methods of another class
  * the class inheritaded from is the parent or super class
  * the class inheriting is the child or sub class
*/

class Car {
  String make;
  int productionYear;

  Car(this.make, this.productionYear);

  void printDetails() {
    print('This is a $make from $productionYear');
  }
}

// previous we would do
// class Truck{
//   String make;
//   int productionYear;

//   Truck(this.make, this.productionYear);

//   void printDetails(){
//     print('This is a $make from $productionYear');
//   }
// }

// now we do
class Truck extends Car {
  Truck(String make, int productionYear) : super(make, productionYear);//The default constructor of the Truck Class calls the constructor of the Car class which is the super class in this case

  double bedSize = 0;
}



//overriding methods
class Sedan extends Car {
  Sedan(String make, int productionYear) : super(make, productionYear);

  double trunkSize = 0;

  //*This makes the method specified below override the method in the parent class(Car Class)
  @override
  void printDetails() {
    print(
        'The ${super.productionYear} ${super.make} is a sedan with $trunkSize trunk size');
  }
}


//Adding functionalities
class Suv extends Car {
  Suv(String make, int productionYear) : super(make, productionYear);

  double trunkSize = 0;

//this override method does not just print the details of the super class but also contains details of the truck class
  @override
  void printDetails() {
    super.printDetails();
    print('I LOVE THIS BAD BOY');
  }
}

void main() {
  var car = Car('Ford', 1999);
  car.printDetails();

  var truck = Truck('Toyota', 2008);
  truck.printDetails();

  var sedan = Sedan('Suzuki', 2005);
  sedan.printDetails();

  truck.bedSize = 300;
  print('the bedsize of the ${truck.make} is ${truck.bedSize}');

  // overriding methods
  sedan.trunkSize = 234;
  sedan.printDetails();

  // adding functionality to an override
  var suv = Suv('Jeep', 2020);
  suv.printDetails();

// checking types on run-time
  print(suv is Car);
  print(suv is Truck);
  print(suv is Suv);
  print(suv is Object);
  print(suv is! Sedan);

//! PREFER COMPOSITION OVER INHERITANCE
/*
  The phrase means that, when appropriate, 
  you should add behavior to a class rather 
  than share behavior with an ancestor.
*/
}

class Person {}

class Worker extends Person {}

class ItProfessional extends Worker {}

class Plumber extends Worker {}


//It is advisable to do this rather than create multiple subclasses
class Worker2 extends Person {
  // List<Role> roles = [];
}
