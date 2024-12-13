void main() {
  // var로 선언한 변수들
  var productCode1 = 'A123';  // String으로 타입 추론
  var quantity1 = 100;        // int로 타입 추론
  
  // 한번 추론된 타입은 변경할 수 없음
  // productCode1 = 123;      // 에러: String에 int 할당 불가
  // quantity1 = '200';       // 에러: int에 String 할당 불가
  
  // dynamic으로 선언한 변수들
  dynamic productCode2 = 'B456';
  dynamic quantity2 = 200;
  
  // dynamic은 런타임에 타입이 자유롭게 변경 가능
  productCode2 = 789;         // OK: String에서 int로 변경 가능
  quantity2 = '300';          // OK: int에서 String으로 변경 가능
  
  // 결과 출력
  print('var로 선언한 경우:');
  print('상품 코드: $productCode1 (${productCode1.runtimeType})');
  print('재고 수량: $quantity1 (${quantity1.runtimeType})');
  
  print('\ndynamic으로 선언한 경우:');
  print('상품 코드: $productCode2 (${productCode2.runtimeType})');
  print('재고 수량: $quantity2 (${quantity2.runtimeType})');
}


