// 기본 동물 클래스
class Animal {
  String name;
  
  Animal(this.name);
  
  void makeSound() {
    print('$name makes a sound');
  }
}

// 고양이 클래스 (Animal 상속)
class Cat extends Animal {
  Cat(String name) : super(name);
  
  @override
  void makeSound() {
    print('$name says: Meow!');
  }
  
  void scratch() {
    print('$name scratches');
  }
}

void main() {
  Animal animal = Animal('Unknown');
  Cat cat = Cat('Kitty');
  
  animal.makeSound();  // Unknown makes a sound
  cat.makeSound();     // Kitty says: Meow!
  cat.scratch();       // Kitty scratches
}