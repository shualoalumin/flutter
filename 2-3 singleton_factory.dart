// 일반적인 클래스
class Dog {
  String name;
  Dog(this.name);
}

void main() {
  // 강아지를 여러 마리 만들 수 있어요
  var dog1 = Dog("멍멍이");
  var dog2 = Dog("멍멍이");  // 같은 이름이어도 다른 강아지!
}

// 싱글톤 클래스
class President {
  static final President instance = President._();
  factory President() => instance;
  President._();
  
  String name = "윤석열";
}

void main() {
  // 대통령은 한 명뿐!
  var president1 = President();
  var president2 = President();
  // president1과 president2는 완전히 같은 것을 가리킵니다
}