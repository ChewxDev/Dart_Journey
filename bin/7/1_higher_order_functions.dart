//! HIGHER ORDER FUNCTION
// a function that takes another function as a parameter, or returns a function

void main() {
  //* mapping over a collection (map)
  final numbers = [1, 2, 3, 4, 5, 6, 7];
  final triple = numbers.map((element) =>
      element *
      3); //pickes out every element of the numbers list and multiply it by three
  print(triple);
  print(
      'to print a list ${triple.toList()}'); //this prints out the elements in a list format

//* filtering a collection
  final evens = numbers.where((element) => element
      .isEven); //Locates every even number in the list and print them with the command on the next line
  print(evens);

//* consolidating a collection
// reduce
  const amounts = [199, 299, 299, 199, 499];
  final total = amounts.reduce(
      (sum, element) => sum + element); //sums up all the elements of the list
/*
  The first function parameter (sum) always
  contains the result of the previous 
  function call,
 */
  print('The total amount is: $total');

// using fold
/*
  If you try to call reduce on an empty list,
  you’ll get an error. For that reason,
  using fold may be more reliable
  because it returns zero if the list
  is empty. 
*/
  const amounts2 = [199, 299, 299, 199, 499];
  final total2 = amounts2.fold(
    0,
    (int sum, element) => sum + element,
  );

  print('The total amount is: $total2');

// sorting a list
  final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  desserts.sort();
  print(desserts);

// combining higher order methods
  final bigTallDesserts = desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());
  print(bigTallDesserts);
}

//! COLLECTION USE CASES
// Choose lists if order matters.

/*
Choose sets if you are only concerned with whether 
something is in the collection or not. 
This is faster than searching a list.
*/

// Choose maps if you frequently need to search for a value by a key.
