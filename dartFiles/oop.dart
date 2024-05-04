

/* 

  THE PAGE COVERS BRIEFS OR BASICS OF OBJECT ORIENTED PROGRAMMING(OOP)
   ITEMS:
   `SIMPLE OOP
    INHERITANCE
    POLYMORPHISM
    DUCK TYPING

*/


import 'dart:io';

// SIMPLE OOP     .     .     .

// example 1 - a class receiving 2 args, name and age and prints them out
/* 
class Person {

  // instance variables
  String name;
  int age;

  Person(this.name, this.age); // constructor. constructor initializer shorthand or syntactic sugar

  // class method
  void greet() {
    print("Hello, my name is $name and I'm $age years old.");
  }
} */



// INHERITANCE      .     .     .

// example 1 - 2 classes(Animal, Dog). Class Dog inheriting from Animal
/* 
class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog is barking");
  }
}*/
 

// example 2
/* class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print("Hello, my name is $name and I'm $age years old.");
  }
}

class Employee extends Person {
  String company;

  Employee(String name, int age, this.company) : super(name, age); // super is used to refer to the super class

  void work() {
    print("$name works at $company");
  }
} */


// example 3


// POLYMORPHISM     .     .     .

// example 1
/* class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
} */


// example 2
// abstracr classs can't be instantiated
/* abstract class Shape {
  void draw();
}

// concrete class
class Circle implements Shape {
  @override
  void draw() {
    print("Drawing a circle");
  }
}

class Square implements Shape {
  @override
  void draw() {
    print("Drawing a square");
  }
} */


// example 3
// Interface definition
/* abstract class Animal {
  void makeSound();
  void eat();
}

// Implementing the interface
class Dog implements Animal {
  // method overwriting
  @override
  void makeSound() {
    print('Woof');
  }

  @override
  void eat() {
    print('Eating bones');
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print('Meow');
  }

  @override
  void eat() {
    print('Eating fish');
  }
} */




// DUCK TYPING      .     .     .

// example 1 
/* class Duck {
  void quack() {
    print("Quack");
  }

  void swim() {
    print("Swimming");
  }
}

void makeDuckSwim(dynamic duck) {
  duck.swim();
} */



// example 2 



// example 3 



//  QUIZ TEST USING OOP     -     -     -
/* 
class Test{

  String question;
  double answer;

  Test(this.question, this.answer);

  
}

double promptAnswer(String answerText){
  print(answerText);
  double answer = double.parse(stdin.readLineSync()!);
  return answer;

} */


class Mammal{      
 String name;
 Mammal(this.name);
}

// method extension
extension run on Mammal{
  void eats(){
    print('$name does eat');
  }
}

// class Human extends Mammal{}





void main(){

  // SIMPLE OOP    -     -     -

  // example 1 body
  /* var person = Person("John", 30); // create instance 'person' with 2 credentials
  person.greet(); // call the class method 'greet' on instance person */

 

  // INHERITANCE  BODY    -     -     -

  // example 1 body
  /* var dog = Dog();
  dog.eat();
  dog.bark(); */


  // example 2 body
 /*  print('enter name: ');
  var name = stdin.readLineSync()!;
  print('enter age: ');
  var age = int.parse(stdin.readLineSync()!);
  print('enter organization name: ');
  var cooperation = stdin.readLineSync()!;

  var employee = Employee(name, age, cooperation);
  employee.greet();
  employee.work(); */


  // example 3 body



  // POLYMORPHISM BODY    -     -     -

  // example 1 body
  /* Dog animal = Dog();
  animal.makeSound(); */

  // example 2 body


  // example 3 body
  /* final dog = Dog();
  dog.makeSound(); // Output: Woof
  dog.eat(); // Output: Eating bones
  
  final cat = Cat();
  cat.makeSound(); // Output: Meow
  cat.eat(); // Output: Eating fish */



  // DUCK TYPING  BODY    -     -     -

  // example 1 body
  /* var myDuck = Duck();
  makeDuckSwim(myDuck); */


  // example 2 body


  // example 3 body


 /*  List<Test> mathQuestion =
  [
    Test('1+5 = ', 6.0),
    Test('5*9 = ', 45.0),
    Test('40/2 = ', 20.0)
  ];

  int grade = 0;

  for(final question in mathQuestion){
    var userAnswer = promptAnswer(question.question);

    if (userAnswer == question.answer){
      grade ++;
      print('grading progress ...')    ; 
    }    
    
  }
  print('you got ${grade}/${mathQuestion.length}'); */

  final person = Mammal('james');
  person.eats();
  // person.move();

}