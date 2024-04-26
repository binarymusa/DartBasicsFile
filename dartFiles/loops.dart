
import 'dart:io';

/* 
  THE PAGE COVERS CONTROL FLOWS STRUCTURE AND LOOPS i.e:
    IF STATEMENTS
    IF...ELSE STATEMENTS
    IF...ELSE...IF STATEMENTS
    WHILE LOOP
    DO WHILE LOOP
    SWITCH STATEMENTS
    FOR LOOP
    FOR IN LOOP

*/  

// Function for the calculator using the if statement at the main body
/* String operator(){
  stdout.write("Please enter operator: "); 
  String answer = stdin.readLineSync()!;
  List<String> operatorList = ['+', '-', '*', '/'];
  bool isValidOperator = false;

  for (var i in operatorList){
    if (answer == i){
      isValidOperator = true;
      break; // Exit loop early if valid operator found
    }

  }

  if (!isValidOperator) {
  print('Invalid operator(${answer}),...');
  
  }
  return answer;
}

//  function to ask for numbers
double num(){
  stdout.write("Please enter number: "); 
  double number2 = double.parse(stdin.readLineSync()!);
  return number2;
} */


void main(){

  // IF STATEMENT   .     .     .
  
  // in this case, if the value A is not-null, the value of A is printed, else value B is printed

  /* String? valueA;
  String valueB = "World";

  var result = valueA ?? valueB;
  print(result); // Output: World

  String? status;
  String? isAlive;

  if (status != null) {
    isAlive = status;
    print(isAlive);
  }
  else{
    isAlive = 'RIP';
    print(isAlive);
  } */


  // USING NAMED FUNCTION FOR THE CALCULATOR     .    .     .

  /* double number1 = num();
  String oper = operator();
  double number2 = num(); */


  // USING ANONYMOUS FUNCTION FOR THE CALCULATOR     .    .     .

  /* double Function(double) number = (double num) {
    stdout.write("Please enter number: "); 
    num = double.parse(stdin.readLineSync()!);
    return num;
  };

  var symbol = (String symValue){
    stdout.write("Please enter operator: "); 
    symValue = stdin.readLineSync()!;
    return symValue;
  };

  double number1 = number(0);
  String oper = symbol('');
  double number2 = number(0);  */


  // CALCULATOR ARITHMETIC EXECUTION     .    .     .

  /* if (oper == '+'){
    double result = number1 + number2;
    print(result);
  }
  else if (oper == '-'){
    double result = number1 - number2;
    print(result);
  }
  else if (oper == '/'){
    double result = number1 / number2;
    print(result);
  }
  else if (oper == '*'){
    double result = number1 * number2;
    print(result);
  }

  else{
    print('...thus execution failed!');
  } */


  // SWITCH STATAEMENT      .     .     .

  // multiple case labels are grouped together to execute the same code block IN THE EXAMPLE below

  /* int num = 7;

  switch (num) {
    case 1:
      print('One');
      break;

    case 2:
    case 3:
      print('Two or Three');
      break;

    case 4:
    case 5:
      print('Four or Five');
      break;

    default:
      print('Number is greater than five');
  } */

  // a nested switch statement is used to handle different cases based on the combination of 'fruit' and 'count'

  /* String fruit = 'apple';
  int count = 3;

  switch (fruit) {
    case 'apple':
      switch (count) {
        case 1:
          print('You have 1 apple');
          break;

        case 2:
        case 3:
          print('You have a few apples');
          break;

        default:
          print('You have many apples');
      }
      break;

    case 'banana':
      print('You have a banana');
      break;

    default:
      print('Fruit not recognized');
  } */


  //  FOR LOOP      .     .     .
  
  /* for(var i = 0; i <= 10; ++i)
  print("Number $i"); */

  //  WHILE LOOP      .     .     .

  /* var i = 0;
  while (i <= 10) {
    print("Number $i");
  i++;} */


  // DO WHILE LOOP      .     .     .
  /* var i = 0;
  do {
    print("Number $i");
  ++i;
  } while (i <= 10); */


  // FOR IN LOOP      .     .     .

 /*  List<String> friendsList = ["A", "B", "C", "D", "E"];
  for(final friend in friendsList){
    print(friend);
  } */




}