//! CONSTRUCTORS
// Constructors are methods that create,
//or construct, instances / objects of a class.
// constructors have the same name as the class name


class Car {
//* Default constructor
  // by default, this class contains the constructor
  //A default constructor either has or parameters or all its parameters have default values
  // Car();

  //* generative constructors-always creates a new instace of the precise class itt belongs to  
  // long-form
  // Car(String make, String bodyType) {
  //   this.make = make;
  //   this.bodyType = bodyType;
  //   /*
  //   The keyword this in the constructor body 
  //   allows you to disambiguate which variable 
  //   you’re talking about.
  //   */
  // }

  // short-form
  // Car(this.make, this.bodyType); Commented out so we can use the named constructor below

  //* named constructors
  // ClassName.identifierName()

  Car.trucks(){
    make = '';
    bodyType = 'Truck';
  }

  Car.sedans(){
    make = '';
    bodyType = 'Sedan';
  }

  // forwarding constructors
  // Car.suv() : this('Toyota', 'SUV'); Use this instead of named constructor, named constructors break the don't repeat yourself rule

  // named parameter
  Car({ this.make, this.bodyType});

  // required named parameter
  // Car((@required this.make,@required this.bodyType});

   String make;
   String bodyType;

  String toJson() {
    return '{"make":$make,"bodyType":"$bodyType"}';
  }

  @override
  String toString() {
    return 'Car(make:$make, bodyType:$bodyType)';
  }
}

void main() {
  var myCar = Car(make: 'Mazda', bodyType: 'SUV');
  print(myCar);
}