


/* THE PAGE COVERS CONTROL FLOWS */  


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



  // SWITCH STATAEMENT      .     .     .

  // multiple case labels are grouped together to execute the same code block IN THE EXAMPLE
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

  // do while loop
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