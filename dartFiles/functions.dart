// import 'dart:ffi';
import 'dart:io';
import 'dart:async';
import 'dart:math';

/* 

  THE PAGE COVERS FUNCTIONS
    NAMED FUNCTIONS
    ANONYMOUS FUNCTIONS 

*/
    

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


// THE 'typedef' KEYWORD     -     -     -

// used to create function type aliases, allowing you to define custom types for functions
/* typedef StringToStringFunction = String Function(String);

String addExclamation(String text) {
  return '$text!';
} */


//  FUTURES     -     -     -
// use a class named future to work with future
/* void fetchData() {
  // Simulating data fetching from a remote server
  Future.delayed(Duration(seconds: 2), () {
    print('Data fetched successfully');
  });
} */


//  ASYNC/AWAIT     -     -     -
// adding 2 numbers using with a delay
/* Future<int>?  twoNumberSum(int a, int b) async{
  await Future.delayed(Duration(seconds: 2));
  print('summation done');
  return a + b;
} */



//  MORE EXAMPLES ON ASYNCRONOUS PROGRAMMING     -     -     -

//  fetching and printing data items with a delay
/* Future<void>? fetchData() async{
  await Future.delayed(Duration(seconds: 3));
  print('data fetch complete!');
} */


// concurrent asynchronous execution 
/* Future<String>? fetchData1() async {
  await Future.delayed(Duration(seconds: 2));
   return 'Data from source 1';
}

Future<String>? fetchData2() async {
  await Future.delayed(Duration(seconds: 4));
   return ('Data from source 2');
} */


// Parallel Async Calls
/* Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 3));
   return ('Data from source...');
} */ 



// STREAMS      -     -     -

// example 01
// a strem that generates number 1-10 and filters based on even numbers
/* Future<void> filterEvenNumbers() async{
  // Generate a stream of random numbers
  Stream<int> numbersStream = randomNumbers();

  // Filter even numbers from the stream
  await for(final i in numbersStream){
    if(i%2 == 0){
      print(i);
    }
  }
}

Stream<int> randomNumbers() async*{
  // Generate a stream of 10 random numbers between 1 and 100
  Random random = Random();
  for (int i = 0; i < 10; i++) {
    yield random.nextInt(10) + 1;
  }
} */


// example 02 
// stream that doubles numbers
/* Future<void> doubledNumbers() async{
  
  Stream<int> values =randomNumbers();

  await for(final i in values){
    print( i*2);
  }
}

Stream<int> randomNumbers() async*{
  // Generate a stream of 10 random numbers between 1 and 100
  Random random = Random();
  for (int i = 0; i < 5; i++) {
    yield random.nextInt(10) + 1;
  }
}  */


// example 03
 


void main() async { 

  // NORMAL FUNCTIONS  PART     -     -     -
  
  // Tied to function 2
  /* for(var i =0 ;  i < 3; i++)
  {
    triangleShape();
  } */


  // Tied to function 2
  /* stdout.write('enter name: ');
  String userInput = stdin.readLineSync()!;

  sayHi(userInput); */



  // ANONYMOUS FUNCTIONS  PART     -     -     -

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
  // to the right of the equal sign in the function definition  is a parameter list defining the function's signature.
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


  //  FUTURES     -     -     -
  /* print('Fetching data...');
  fetchData();
  print('Performing other tasks while waiting for data...'); */
  


  //  ASYNC/AWAIT     -     -     -



  //  CALLING THE EXAMPLES    -     -     -

  // adding 2 numbers using with a delay  
  /*print('adding numbers up ...');   
  var answer = await twoNumberSum(1,3);
  print('answer: $answer'); */


  // concurrent asynchronous execution
  /* print("fetching data from source 'A' and 'B'...");  
  var result1 = await fetchData1();
  var result2 = await fetchData2();

  print('Result 1: $result1');
  print('Result 2: $result2'); 
  print('Data fetched succesfully!'); */


  // simple asynronous fetch data
  /* print('fetching data...');
  await fetchData(); */


  // Parallel Async Calls
  /* print('fetching data...');
   // Call fetchData three times concurrently using Future.wait
  List<Future<String>> futures = [
    fetchData(),
    fetchData(),
    fetchData(),
  ];
  List<String> results = await Future.wait(futures);// Wait for all futures to complete concurrently
 print('All data fetched successfully:');

 results.forEach((results) { print('- $results'); }); */



// STREAMS      -     -     -

  // the example assumes different persons subscribing to your youtube channell:)

  // Create a stream controller
  /* StreamController<String> controller = StreamController<String>();

  // Create a stream from the controller(a stream is more of a pipe or channel for conveying items)
  Stream<String> stream = controller.stream;

  // Listen to the stream
  stream.listen((String user) {    
    print('$user subscribed to your channel ');

  },
  // checking for errors in streams
    onError: (error) {
      print('Error: $error');
    },
    onDone: () {
      print('Stream closed');
    }
  );

  List<String> users =['kevin', 'gerald', 'lisbon'];

  // Add data to the stream
  for(var user in users){
    controller.add(user);
  }
  controller.addError('Oops! Something went wrong.');
  // Close the stream
  controller.close(); */


  // Transforming a stream

  // Create a stream controller
  /* StreamController<int> controller = StreamController<int>();

  // Create a transformed stream
  Stream<String> transformedStream =
      controller.stream.map((int value) => 'Transformed $value');

  // Listen to the transformed stream
  transformedStream.listen((String data) {
    print('Data: $data');
  });

  // Add data to the stream
  controller.add(1);
  controller.add(2);
  controller.add(3);

  // Close the stream
  controller.close(); */


  // stream examples call
  // await doubledNumbers();
  // await filterEvenNumbers();

 

  






}