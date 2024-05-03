
/* 

  THE PAGE COVERS BRIEFS OR BASICS OF DART SUCH AS :
    USER INPUT
    A SIMPLE MADLIB'S GAME AT THE BOTTOM

*/

// import 'dart:ffi';
import 'dart:io';
// import 'dart:math';



void main(){
 /* var name = 'kevin';
  var name2 = 'miguel';
  var age = 70;
  print('there was a man named $name, he was $age yrs old'); */
  
/*   var a = 1; // int
  var b = 1.0; // double
  int x = 8;
  double y = b + a; //result = 2.0
  num z = 10 - (y + x); */

//   bool isRegisteredVoter = false;

//   print('z :$z, y: $y , isregisteredvoter:$isRegisteredVoter');

//   print(name.length); // output = 5
  // print(name[-2]);

  // value.touppercase, value.tolowercase
  // print(name.indexOf('i')); // output = 3, checks position of a value

  // print(name +' ' + name2 );  // concatenation


//  print((10/2) == 5);
//  print((10/2).toInt());

// print(min(3, 6)); 

/* bool test = 5 == 0; // false
bool test2 = !test; // has the opposite value of test
print(test2); */



// USER INPUT, NULL, NON-NULL OPERATORS, CONVERTING THEM      .     .     .

 // Prompt the user to enter their name
 /*  stdout.write("Please enter your name: ");

  // Read the input from the user
  // use the var to to declare user input
  var name1 = stdin.readLineSync();
  print(name1); */

  /* stdout.write("num1: ");
  var num1 = stdin.readLineSync()!;
  stdout.write("num2: ");
  var num2 = stdin.readLineSync()!;

  int? num01 = int.parse(num1);
  int? num03 = int.parse(num2);
  print('${num03}, ${num01}'); */
 
 
  // either cast the variable type  to a nullable string, type(?) - avoid this
  //  assert the value returned by the readlinesync to not null using the null-aware operator (!) - use this
/* 
  stdout.write("Please enter your value1: ");
  int value2= int.parse(stdin.readLineSync()!);
  stdout.write("Please enter your value2: ");
  int value3= int.parse(stdin.readLineSync()!);
 
  print(value2 + value3);
  // print(int.parse(value3) + int.parse(value2));
   */
  
  // or use the below to check if the  values have been converted to integers
  /* if (value2 != null && value3 != null){
    int valueoutput = valueOutput2! + valueOutput!;
    print(valueoutput);
  } */
  
 
  /* int? nullable;
  // An exception is thrown
  int notNullable = nullable!;
  print(notNullable); */

  // typecast 'as' - used to convert nullable to non-nullable
  /* num? value = 5;
  int otherValue = value as int;
  print('$otherValue'); */

  // if the variable is null it is initialized to the value of the right side
  /* int? value2  ;
  int othervalue2 = value2 ??= 10; // or just ??
  print('$othervalue2'); */

  // conditional invocation
  /* List<String?>? names = ['foo', null];
  names?.length; */
  


  /* if the value pi = to null, then the second round throws the null without executing the 
  round function ,else the first round cannot return anything since the receiver is null
  if a null check is added to round1, the code executes throwing an error
  safe navigation operator = (?.)*/
  
  /* double? pi = 3.14 ;
  final round1 = pi.round();
  final round2 = pi?.round();
  print('${round2}, ${round1}'); */
  


  //  MADLIBS GAME      .     .     .

 /*  stdout.write("Please enter your noun: ");
  String userNoun = stdin.readLineSync()!;
  
  stdout.write("Please enter your verb: ");
  String userVerb = stdin.readLineSync()!;
 
  print('Douglas the ${userNoun} likes ${userVerb}'); */


  

 


  
}