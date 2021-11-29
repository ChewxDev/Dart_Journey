//! SINGLETON PATTERN - Can only have one instance

/*
Design Pattern
This is a general repeatable solution to a common occuring problem in software design.
A design pattern isn't a finished design that can be transformed directly into code.
It is a description or template for how to solve a problem that can be used in many diffrent situations.
*/

//Singleton pattern are mostly used for database classes

class Database {
  Database._();

  static final Database _instance = Database._();

  factory Database() {
    return _instance;
  }
}

void main() {
  var db = Database();
}
