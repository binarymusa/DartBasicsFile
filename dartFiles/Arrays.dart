

/*  

  THE PAGE COVERS COLLECTIONS(COMMONLY REFERRED TO AS ARRAYS):
  THEY INCLUDE:
    LISTS
    SETS
    MAPS(ASLO KNOWN AS DICTIONARY)

*/


void main(){
  // LISTS  .   .   .   .

  // The type of 'intList' is List<int>
  /* List<int> intList = [2, 5, -8, 0, 1];

  print('${intList.length}, ${intList[3]}'); // outputs the whole list,  value at position 3 from the right,
 
  intList[3] = 4;
  intList.add(5); // add item to a list
  intList.remove(4);
  var statement = intList.contains(10); // checks if list contains the item in bracket

  print('${statement},... ${intList[1]  + intList[3]}'); // prints the result stored in the statement, also adds value at position 1 with that at position 3
  
  print(intList);

  List<int>? intList2;
  List<int> intList3 = [4,5,6, ...intList]; // insert a series of values directly in the array, use, (...) - the spread operator
  List<int> intList4 = [7,8,9, ...?intList2]; // (...?) - checks to see if other series is null

  print('${intList2},... ${intList3}, ... ${intList4},... ${intList} ');
 */

  /* final hasCoffee = true;
  final jobs =  [
  "Welder",
  "Race driver",
  "Journalist",
  if (hasCoffee) "Developer"
  ];
  print(jobs); */



  // SET     .    .    .
/* 
  Set<int> mySet ={1,2,3};
  
  mySet.add(4);
  mySet.remove(1);
  var mysetContains = mySet.contains(0);
  var setLenght = mySet.length;
  mySet.forEach((element) // counts items of the set
  { 
    print(element);
  });

  print('${mySet}, ${mysetContains}, ${setLenght}');

  for (var i in mySet){
    print(i);
  }
 */


  // MAP(DICTIONARY)  .   .   .
/* 
  Map<String, int> firstMap = {
      'John': 30,
      'Alice': 25,
      'Bob': 35,
    };

  // var cars = {'buggati': 2.5 , 'lamborghini': 600, 'Koenigsegg': 3};

  print('${firstMap.keys}, ${firstMap}, ${firstMap.values}');
    
  firstMap['Eve'] = 28;

  print('John\'s age: ${firstMap['John']}');
  print('Alice\'s age: ${firstMap['Alice']}');

  firstMap.forEach((name, age) {
    print('$name is $age years old');
  });

  if (firstMap.containsKey('Bob')) {
    print('Bob is in the map');
  }

  if (firstMap.containsValue(25)){
    print('we got a 25 in the building');
  }
  firstMap.remove('Alice');

  
  firstMap.clear(); */
  
   /* String? name = 'kevin';
    name = null;
    name = 'geo';
    print(name);

    List<String?>? names = ['linda', null]; // declare names aas null, also says values in the list can be null
    names = null; */
}







   