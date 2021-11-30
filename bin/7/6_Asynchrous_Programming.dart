//! ASYNCHRONOUS PROGRAMMING - Basically when you conect your app to a server to fetch data, and it is basically the app doing other things while at the same time fetches the data from the server
/*
  Asynchrony, in computer programming, 
  refers to the occurrence of events independent of 
  the main program flow and ways to deal with such events.
*/

//* threads
/*
  A thread is a sequence of instructions within 
  a program that can be executed independently of other code
*/

//* isolates - Chunks of memory that run threads

//* parallelism vs concurrency
//Parallelism is the ability of an app to run multiple threads at the same time
//Concurrency runs one thread at a time, but it can also switch between threads but one at a time

//* Synchronous vs asynchronous code
//Sychronous codes execute instructions oe after the other, and that has been what we have bee implementing
//Asynchronous code schedules instructions to be executed in the future 


//* event loop
// Dart uses an event loop to execute tasks that had previously been postponed.

//* When a code is being executed in the main isolate it cannot be stopped and it is executeed in a synchronous manner

//* Event queue refers to the users interaction with the app, responses from databases or servers etc.

//*Dart always gives priority to the Microtask queue even if the evennt queue is not empty
//The MicroTask queue are internal dart tasks