

/* 

  THE PAGE COVERS BRIEFS OR BASICS OF OBJECT ORIENTED PROGRAMMING(OOP)
   ITEMS:
   SImple OOP
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

  Person(this.name, this.age); // constructor

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
abstract class Shape {
  void draw();
}

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
}




// example 3


// DUCK TYPING      .     .     .

// example 1 
class Duck {
  void quack() {
    print("Quack");
  }

  void swim() {
    print("Swimming");
  }
}

void makeDuckSwim(dynamic duck) {
  duck.swim();
}



// example 2 


// example 3 

void main(){

  // SIMPLE OOP      .     .     .

  // example 1 body
  /* var person = Person("John", 30); // create instance 'person' with 2 credentials
  person.greet(); // call the class method 'greet' on instance person */

 
  // INHERITANCE  BODY    .     .     .

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




  // POLYMORPHISM BODY    .     .     .

  // example 1 body
  /* Dog animal = Dog();
  animal.makeSound(); */

  // example 2 body


  // example 3 body


  // DUCK TYPING  BODY    .     .     .

  // example 1 body
  var myDuck = Duck();
  makeDuckSwim(myDuck);


  // example 2 body


  // example 13 body


}