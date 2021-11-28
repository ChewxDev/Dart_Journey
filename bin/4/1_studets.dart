class Student {
  int _id = 0;
  double _marks = 0;
  String _name = '';

  int get id => _id;
  double get marks => _marks;
  String get username => _name;
  bool get isStudentSmart => _marks > 80;//The getters do not necessarily have to match the number of properties of the class, hence this last getter

  set studentNewName(String name) => _name = name;

  Student(this._id, this._name, this._marks);
}
