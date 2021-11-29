//! STATIC MEMBERS- Variables or methods that belong to a class, rather than an object to the class. They always remain the same, regardless of where and how they are used

class Student {
  int id = 0;
  String name = '';
  static String university = 'FUDMA';

  Student(this.id, this.name);

  static void displayDefaultValues() {
    print('university:$university');
  }
}

void main() {
  Student.displayDefaultValues();
  print(
    "The university is ${Student.university}"
  );
}
