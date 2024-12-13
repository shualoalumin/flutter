class IronMan {
  String name;
  int powerLevel;
  IronMan(this.name, this.powerLevel);
  void shoot() {
    print('$name is a shooting gun with $powerLevel');
  }
}
class IronManMK3 extends IronMan {
  var flyheight;
  IronManMK3(String name, int powerLevel, this.flyheight) : super(name, powerLevel);
  @override
  void shoot() {
    print('$name is a shooting laser with $powerLevel');
  }
  void fly() {
    print('$name is flying with $flyheight');
  }
}
void main() {
 IronMan mk1 = IronMan('mk1', 100);
 IronManMK3 mk3 = IronManMK3('mk3', 20, 1000);

 mk1.shoot();
 mk3.shoot();
 mk3.fly();
}

------------------------------------------------------------

