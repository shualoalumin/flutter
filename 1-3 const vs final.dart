void main() {
  // const는 컴파일 시점에 값이 결정되어야 함
  const String category1 = '전자제품';
  const String category2 = '의류';
  
  // final은 실행 시점에 값이 결정될 수 있음
  final int originalPrice = 10000;
  final double discountRate = 0.2;  // 20% 할인
  final int discountPrice = (originalPrice * (1 - discountRate)).toInt();
  
  // const는 컴파일 시점에 계산 가능한 값만 가능
  // const int wrongDiscount = (originalPrice * (1 - discountRate)).toInt();  // 에러!
  
  print('상품 카테고리:');
  print('- $category1');
  print('- $category2');
  print('\n가격 정보:');
  print('정가: $originalPrice 원');
  print('할인율: ${(discountRate * 100).toInt()}%');
  print('할인가: $discountPrice 원');
}