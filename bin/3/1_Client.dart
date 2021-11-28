class Client {
  int _id;//The underscore makes the variable private, hence it cannot be edited from outside this file
  String _name;
  double _accountBalance;

  Client({int userId = 0, String name = '', double balance = 0})
      : assert(balance >= 0),//assert is a useful debugging tool for testing boolean expressions
        _id = userId,
        _name = name,
        _accountBalance = balance;

  @override
  String toString() {
    return 'id: $_id\nname: $_name\naccountBalance: $_accountBalance';
  }
}
