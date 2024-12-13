// 기본 캐릭터 클래스
class Character {
  String name;
  int health;
  
  Character(this.name, this.health);
  
  void attack() {
    print('$name의 기본 공격! 10의 데미지');
  }
  
  void showInfo() {
    print('[$name] 체력: $health');
  }
}

// 전사 클래스
class Warrior extends Character {
  int strength;  // 전사만의 고유 속성
  
  Warrior(String name, int health, this.strength) : super(name, health);
  
  @override
  void attack() {
    print('$name의 강력한 검 공격! ${10 + strength}의 데미지');
  }
  
  void shieldBlock() {  // 전사만의 고유 스킬
    print('$name이(가) 방패로 방어합니다!');
    health += 10;
    showInfo();
  }
}

// 마법사 클래스
class Mage extends Character {
  int magicPower;  // 마법사만의 고유 속성
  
  Mage(String name, int health, this.magicPower) : super(name, health);
  
  @override
  void attack() {
    print('$name의 파이어볼! ${10 + magicPower}의 데미지');
  }
  
  void heal() {  // 마법사만의 고유 스킬
    print('$name이(가) 회복 마법을 사용합니다!');
    health += 20;
    showInfo();
  }
}

void main() {
  // 파티 생성
  var warrior = Warrior('강철검사', 100, 15);
  var mage = Mage('현자', 80, 20);
  
  // 전투 시뮬레이션
  print('===== 전투 시작! =====');
  warrior.showInfo();  // 기본 클래스 메서드 사용
  mage.showInfo();     // 기본 클래스 메서드 사용
  
  print('\n===== 1라운드 =====');
  warrior.attack();    // 오버라이드된 메서드
  mage.attack();       // 오버라이드된 메서드
  
  print('\n===== 2라운드 =====');
  warrior.shieldBlock();  // 전사 고유 스킬
  mage.heal();           // 마법사 고유 스킬
}
