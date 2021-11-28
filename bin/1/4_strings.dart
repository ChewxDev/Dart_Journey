//! STRINGS

void main() {
  var first = 'one';
  var second = 'one';
  var third = "one's one";

//* Concatenation - adds string together, spoke about it earlier
  var fourth = first + second + third;
  print(fourth);

  var fifth = 'the fifth ';
  first += fourth;
  print(fifth);

//* Interpolation - works on any data type, mostly used with numbers though. Process of replacing the value in a string with a place holder
  var name = 'Santos';
  print('My name is $name');//Example of interpolation, uses tthe $ symbol before the name of the variable
  var age = 2021 - 1997;
  print('My age is $age');

//* Multi-line strings
  var longText = '''
In publishing and graphic design, 
Lorem ipsum is a placeholder text 
commonly used to demonstrate the 
visual.
''';
  print(longText);

  var upperCaseName = name.toUpperCase();// .toUpperCase() is also a method of the type string to change values to all upper case
  print(upperCaseName);
}
