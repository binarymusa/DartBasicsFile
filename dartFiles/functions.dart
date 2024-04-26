// import 'dart:ffi';
import 'dart:io';

/* THE PAGE COVERS FUNCTIONS(NAMED FUNCTIONS, ANONYMOUS FUNCTIONS) */

// use functions out of the main body function

// func 1
/* void triangleShape(){
  print(' /|');
  print('/_|');
} */


//  func 2
// void sayHi(String name) =>  print('hi, $name');


// func 3

// higher-order function. takes other function as parameters
/* so test is a function taking function 'action' as a parameter and returning the function action */

/* void test(void Function(int) action) {
  action(5); // Call the provided function with an integer argument
}

void myAction(int value) {
  print("Received value: $value");
} */

// func 4
// if parameters have no default value, use the null-aware operator
// practice using named parameters

/* void test({int? a, int? b }) {
  print("$a");
  print("$b");
} */

// THE 'typedef' KEYWORD
// used to create function type aliases, allowing you to define custom types for functions
/* typedef StringToStringFunction = String Function(String);

String addExclamation(String text) {
  return '$text!';
} */

void main() {

  // NORMAL FUNCTIONS  PART      .     .     .
  
  // Tied to function 2
  /* for(var i =0 ;  i < 3; i++)
  {
    triangleShape();
  } */


  // Tied to function 2
  /* stdout.write('enter name: ');
  String userInput = stdin.readLineSync()!;

  sayHi(userInput); */



  // ANONYMOUS FUNCTIONS  PART .     .     .
  // declared within the context where it's used

  // An anonymous function that takes no parameters
  /* final anon = () => 5.8 + 12;
  double output = anon();
  print(output); */


  /* final anon = (String nickname) {
    var myName = "Alberto";
    myName += nickname;

    return myName;
  };
  
  print(anon('')); // output is Alberto */


  // An anonymous function that takes two integers and returns their sum
  /* var sum = (int a, int b) {
    return a + b;
  };

  // Using the anonymous function to calculate the sum of two numbers
  var result = sum(3, 5);
  print('The sum of 3 and 5 is: $result'); */


  // Tied to function 3
  /* // test(myAction);

  test((int value) {
    print("Received value: $value");
  }); */


 /*  bool Function(int) isEven = (int value) => value % 2 == 0;

  print(isEven(19)); //false */

  // Prins '2' and 'null'
  // test(a: 2, b: 5);


  // typedef body
  /* StringToStringFunction modifyText = addExclamation;
  print(modifyText("Hello")); // Outputs: "Hello!" */


  



}