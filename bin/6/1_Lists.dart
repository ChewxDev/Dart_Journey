//! LISTS
//A List is simply an ordered group of objects.
void main() {
  //* creating a list
  var programmingLanguages = ['dart', 'python', 'java', 'go'];
  var numbers = <int>[];

  print(programmingLanguages.runtimeType);
  print(numbers.runtimeType);

  //* printing a list
  print(programmingLanguages);

  //* accessing items in a list
  var element = programmingLanguages[0];
  print('The first item of the languages list is: $element');

  // getting the index of an item
  var index = programmingLanguages.indexOf('java');
  print('the element at $index is ${programmingLanguages[index]}');

  //assigning values to list elements
  programmingLanguages[0] = 'javaScript';
  print(programmingLanguages);
  var dartIndex = programmingLanguages.indexOf('dart');
  print('the index of dart is $dartIndex');

  // adding elements
  programmingLanguages.add('dart');
  print(programmingLanguages);

// removing elements
  programmingLanguages.remove('javaScript');
  print(programmingLanguages);
  programmingLanguages.removeAt(2);
  print(programmingLanguages);

// mutable and immutable list
  final frameWorks = ['flutter', 'django', 'flask'];//This only makes the list name un-reassignable, but the list elements can still be changed
  print(frameWorks);

// frameWorks = [];
  frameWorks.removeAt(1);
  frameWorks.add('next js');
  print(frameWorks);

  var ides = List.unmodifiable(['vsCode', 'intellij', 'android studio']);//This makes the list elements immutable. Downside is: it only gives rruntime  error update not compile time 
// ides.add('value'); So if you run thius it'll not throw a exception after you wrrite the codee but only after you run it

// check first and last element of a list
  print(programmingLanguages.first);

// checking if a list is empty
  print('does language have elements ${programmingLanguages.isNotEmpty}');

// looping over elements of a list
  for (var language in programmingLanguages) {
    print('\n $language');
  }

  programmingLanguages.forEach((element) {
    print(element + '\n');
  });

  // tear off
  programmingLanguages.forEach(print);//This is used in this case because the parameter type and return type are both the same, so you just insert print as the parameter, tearing off the excess code

  // spread operator
  var developmentTools = ['computer', ...programmingLanguages, ...frameWorks];//Distributes elements of a list as single elements into the new list
  print(developmentTools);

  // null spread
  List? firstList;
  var secondList = ['one', ...?firstList];//In the case that the first List stays null only the default element of the secondList is assiged
  print(secondList);

  // collection if
  var myFavoriteLanguages = [
    'dart',
    'python',
    if (programmingLanguages.contains('english')) 'english'//Says if english is a element of programmingLanguage add english to myFavouriteLan guages
  ];

  print(myFavoriteLanguages);

  // collection for - performs operationns on a list before addinng it to another list, just like collection if
  var upperCaseFrameworks = [
    for (var framework in frameWorks) framework.toUpperCase() //Changes every element in frameworks to upper case then add it to this list
  ];

  print(upperCaseFrameworks);
}
