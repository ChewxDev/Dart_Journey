//! FUTURES
// Future<dataType> identifier;

//* states for a future
/*
Uncompleted
Completed with a value
Completed with an error
*/

// void main(){
//   final myFuture = Future<int>.delayed(
//   Duration(seconds: 1),
//   () => 42,
// );

// //* getting future results (callbacks)
//! Callback is any executable code that is passed as an argument to other code; that other code is expected to call back (execute) the argument at a given time, they take i anonymous functios as their parameters
//     print('Before the future');

// final myFuture2 = Future<int>.delayed(
//   Duration(seconds: 2),
//   () => 42,
// )
//     .then(
//       (value) => print('Value: $value'),
//     )
//     .catchError(
//       (error) => print('Error: $error'),
//     )
//     .whenComplete(
//       () => print('Future is complete'),
//     );

//     print('After the future'); //While waiting for te future to execute this executes first from the micro task queue
// }

//*  Getting the result with async-await
Future<void> main() async {
  print('Before the future');

  //*The data type of value here is int because of the await keyword while in future2 above it is Future<int>
  final value = await Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  );
  print('Value: $value');

  print('After the future');//The await keyword makes this code execute after the Future has executed unlike without the await keyword when it executes before

  // Handling errors with try-catch blocks
  /*
  try {
 } catch (error) {
 } finally {
 }
  */

  print('\nBefore the future');

  try {
    final value = await Future<int>.delayed(
      Duration(seconds: 1),
      () => 55,
    );
    // not lets throw an error
    throw Exception('There was an error');//For Error Handling
    print('Value: $value');
  } catch (error) {
    print(error);
  } finally {
    print('Future is complete');
  }
  print('After the future');
}
