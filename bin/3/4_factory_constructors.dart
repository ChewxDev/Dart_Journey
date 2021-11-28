// ! Factory constructors
//Factory connstructors can return the instance of a class that already exists or can return the subclass of a class
class Car {
  String make;
  String bodyType;

  Car({this.make = '', this.bodyType = 'Truck'});

  factory Car.suv() {
    return Car(bodyType: 'SUV');
  }
}

void main() {
  var carSuv = Car.suv();
  print(carSuv.bodyType);
}
