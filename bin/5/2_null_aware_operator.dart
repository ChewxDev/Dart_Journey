class User {
  String? name;
  int? id;
}

void main() {
  //* if null (??)
  String? name;
  String userName = name ?? 'default name';//In this case it tells the compiler that if name is null, it should give the variable name the value after the double question marks
  print(userName);

  //* null-aware assignment (??=)
  double? price;
  // double amountToPay = price ?? 0;
  price ??= 0;//Pretty  much does the same job as the if null operator but less bulky
  double amountToPay = price;
  print('Amount to pay is $amountToPay');

  //* null-aware access (?.)
  // print(name.length);
  print(name?.length);//This tells the compiler that you know the variable is null but still you want to run operations on it

  //* null assertion (!)
  int? age;
  int myAge = age!;//I used this earlier but what it really means is you are telling the compiler that you know this cariable would not be null eventually

  //* null-aware cascade (?..) - mostly used in intializing variables of the object of a class that can be null
  User? user;
  user
    ?..id = 12
    ..name = 'Santos';
}
