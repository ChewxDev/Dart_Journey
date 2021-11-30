/*
  Previous to this time we have been using concrete classes,
  that basically means we ca use those classes to create objects
*/
//! Abstract Classes- These cannot be instantiated
abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  //Abstract class is still an object so a method can still be overrided
  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

// create a concrete class from a subclass
// class Duck extends Animal{

// }

class Duck extends Animal {
  @override
  void eat() {
    print('duck eats');
  }

  @override
  void move() {
    // TODO: implement move
    print('duck moves');
  }

  void layEggs() {
    print('Duck lays eggs');
  }
}

void main() {
  var duck = Duck();
  print(duck.isAlive);
  duck.layEggs();

  Animal duck2 = Duck();
  // duck2.layEggs(); Methods not declared in the abstract class canot be called
  print(duck2);//The runtime type was printed in the parent class, and was parsed toString
  duck2.move();//This would ru because there is a move method in the abstract class
}
