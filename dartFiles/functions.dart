// import 'dart:ffi';
import 'dart:io';
import 'dart:async';
import 'dart:math';


/* 

  THE PAGE COVERS FUNCTIONS
    NAMED FUNCTIONS
    ANONYMOUS FUNCTIONS 

*/
  
// FUNCTIONS      -     -     -

// example 01   .   .   .   .   .

/* void triangleShape(){
  print(' /|');
  print('/_|');
} */


//  example 02   .   .   .   .   .
// void sayHi(String name) =>  print('hi, $name');


// example 03   .   .   .   .   .
// higher-order function. takes other function as parameters
/* so test is a function taking function 'action' as a parameter and returning the function action */

/* void test(void Function(int) action) {
  action(5); // Call the provided function with an integer argument
}

void myAction(int value) {
  print("Received value: $value");
} */


// example 04    .   .   .   .   .

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

// use a class named future to work with future   .   .   .   .   .

/* void fetchData() {
  // Simulating data fetching from a remote server
  Future.delayed(Duration(seconds: 2), () {
    print('Data fetched successfully');
  });
} */



//  ASYNC/AWAIT     -     -     -

// example 01   .   .   .   .   .
// adding 2 numbers with a delay

/* Future<int>?  twoNumberSum(int a, int b) async{
  await Future.delayed(Duration(seconds: 2));
  print('summation done');
  return a + b;
} */



//  MORE EXAMPLES ON FUTURES      -     -     -

// example 02   .   .   .   .   .
//  fetching and printing data items with a delay

/* Future<void>? fetchData() async{
  await Future.delayed(Duration(seconds: 3));
  print('data fetch complete!');
} */


// example 02   .   .   .   .   .
// concurrent asynchronous execution

/* Future<String>? fetchData1() async {
  await Future.delayed(Duration(seconds: 2));
   return 'Data from source 1';
}

Future<String>? fetchData2() async {
  await Future.delayed(Duration(seconds: 4));
   return ('Data from source 2');
} */


// example 03   .   .   .   .   .
// Parallel Async Calls

/* Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 3));
   return ('Data from source...');
} */ 



// STREAMS      -     -     -

// example 01   .   .   .   .   .
// a stream that generates number 1-10 and filters based on even numbers

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


// example 02    .   .   .   .   .
// stream that doubles generated numbers
/* 
Future<void> doubledNumbers() async{  
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


// example 03   .   .   .   .   .
/* 
Future<int> fetchNumber() async {
  // Simulating an asynchronous operation, like fetching data from a server
  return await Future.delayed(Duration(seconds: 2), () => 42);
}

Stream<int> numberStream() async* {
  // Yield a single value obtained from the future
  yield await fetchNumber();
} */


// example 04   .   .   .   .   .
  /* UNFINISHED */ 
/* Future<int> combineTwoStreams() async{
  Stream<int> firstStream = streamOne();
  Stream<int> secondStream = streamOne();

  Stream<int> combinedStream = combineStreams(firstStream, secondStream);

  // Convert the combinedStream to a future that emits the sum
  int sum = await combinedStream.reduce((acc, value) => acc + value);

  return sum;
}

Stream<int> combineStreams(Stream<int> stream1, Stream<int> stream2) async* {
  await for (final pair in StreamZip([stream1, stream2])) {
    yield pair[0] + pair[1];
  }
}

Stream<int> streamOne() async*{
   for(var i =0; i<3; ++i){
    yield i;
   }
  
}
Stream<int> streamTwo() async*{
  for(var i =5; i<10; ++i){
    yield i;
   }
}
 */


// example 05   .   .   .   .   .
/* Stream<String> streamStrings(){
  return Stream.periodic( const Duration(seconds: 1), (value){
    return('Foo');
       
  });
} */


// example 06   .   .   .   .   .
/* Stream<int> numberGenerator(bool even) async* {
  if (even) {
  yield 0;
  yield* evenNumbersUpToTen();
  yield 0;
  } else {
  yield -1;
  yield* oddNumbersUpToTen();
  yield -1;
}
}
Stream<int> evenNumbersUpToTen() async* { 
   for(var i=0; i<10;i++){
    if (i%2 == 0){
      print(i);
    }
  }
 }
Stream<int> oddNumbersUpToTen() async* { 
  for(var i=0; i<10;i++){
    if (i%2 != 0){
      print(i);
    }
  }
} */



void main() async { 
  
  // final value = await streamStrings();
  // print(value);

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



  // ANONYMOUS FUNCTIONS -     -     -

  // declared within the context where it's used

  // example 01   .   .   .   .   .
  // An anonymous function that takes no parameters

  /* final anon = () => 5.8 + 12;
  double output = anon();
  print(output); */


  // example 02   .   .   .   .   .
  /* final anon = (String nickname) {
    var myName = "Alberto";
    myName += nickname;

    return myName;
  };
  
  print(anon('')); // output is Alberto */


  // example 03   .   .   .   .   .
  // An anonymous function that takes two integers and returns their sum

  // to the right of the equal sign in the function definition  is a parameter list defining the function's signature.
  /* var sum = (int a, int b) {
    return a + b;
  };

  // Using the anonymous function to calculate the sum of two numbers
  var result = sum(3, 5);
  print('The sum of 3 and 5 is: $result'); */


  // Tied to function 3   .   .   .   .   .

  /* // test(myAction);

  test((int value) {
    print("Received value: $value");
  }); */


 /*  bool Function(int) isEven = (int value) => value % 2 == 0;

  print(isEven(19)); //false */

  // Prins '2' and 'null'
  // test(a: 2, b: 5);


  // typedef body   .   .   .   .   .


  /* StringToStringFunction modifyText = addExclamation;
  print(modifyText("Hello")); // Outputs: "Hello!" */



  //  FUTURES     -     -     -

  /* print('Fetching data...');
  fetchData();
  print('Performing other tasks while waiting for data...'); */
  


  //  ASYNC/AWAIT     -     -     -



  // CALLING FUTURE EXAMPLES   -     -     -

  // example 01   .   .   .   .   .  
  /*print('adding numbers up ...');   
  var answer = await twoNumberSum(1,3);
  print('answer: $answer'); */


  // example 02   .   .   .   .   .
 
  /* print("fetching data from source 'A' and 'B'...");  
  var result1 = await fetchData1();
  var result2 = await fetchData2();

  print('Result 1: $result1');
  print('Result 2: $result2'); 
  print('Data fetched succesfully!'); */


  // example 03   .   .   .   .   .
  /* print('fetching data...');
  await fetchData(); */


  // example 04   .   .   .   .   .
  /* 
  print('fetching data...');
   // Call fetchData three times concurrently using Future.wait
  List<Future<String>> futures = [
    fetchData(),
    fetchData(),
    fetchData(),
  ];
  List<String> results = await Future.wait(futures);// Wait for all futures to complete concurrently
  print('All data fetched successfully:');

  results.forEach((results) { print('- $results'); });
  */



  // STREAMS      -     -     -

  // (a stream is more of a pipe or channel for conveying items)
  // components of a stream:
    /* stream controller, 
      generator(data events), 
      error events, 
      Done Events, 
      subscriber, 
      streamTransformer
    */

  // MAIN EXAMPLE ABOUT STREAM
  // the example assumes different persons subscribing to your youtube channell :)   .   .   .   .   .
  
  // Create a stream controller
  /* StreamController<String> controller = StreamController<String>();

  // Create a stream from the controller
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

  // Listen to the transformed stream(subscribing to a stream)
  transformedStream.listen((String data) {
    print('Data: $data');
  });

  // Add data to the stream
  controller.add(1);
  controller.add(2);
  controller.add(3);

  // Close the stream
  controller.close(); */


  //  CALLING STREAM EXAMPLES      -     -     -

  // stream example 02 call   .   .   .   .   .
  // await doubledNumbers();

  // stream example 03 call   .   .   .   .   .
  // await filterEvenNumbers();


  // stream example 04 call   .   .   .   .   .
  /* 
    final controller = StreamController<int>();

    controller.stream.listen((number) {
      print('Received number: $number');
    });

    numberStream().listen((number) {
      controller.add(number);
    }).onDone(() {
      // Close the stream when done
      controller.close();
    });
  */
 

  // stream example 05 call   .   .   .   .   .
  /* UNFINISHED */
  // combineTwoStreams();

  
  // stream example 05 call   .   .   .   .   .
  /*  await for(final value in streamStrings()){
    print(value);
  } */
  
  // stream example 06 call   .   .   .   .   .
  /* numberGenerator(false).listen((int number){
    List<int> numbers = [];
    numbers.add(number);
    print(numbers);
  }); */

  









}