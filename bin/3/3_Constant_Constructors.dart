//! CONSTANT CONSTRUCTORS - are cononical instances, which means no matter how many instances you create, as long as the properties used to create them are the same, dart will only see a single instance

//The final keyword makes it unnecessary to use the _ symbol to make a variable private, it makes the variable immutable
class SmartPhone {
  final String brand;
  final double price;

  const SmartPhone({this.brand = '', this.price = 0});

  @override
  String toString() {
    return 'brand: $brand\nprice: $price';
  }
}

void main() {

  //Hence, Dart would not allocate new memory for each of these instances.
  var smartPhone = SmartPhone(brand: 'Samsung', price: 200);
  var smartPhone1 = SmartPhone(brand: 'Samsung', price: 200);
  var smartPhone2 = SmartPhone(brand: 'Samsung', price: 200);
}
