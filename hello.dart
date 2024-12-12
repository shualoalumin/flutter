void main() {
  String productName = '스마트폰';
  int price = 1000000;
  double discountRate = 0.15;

  print('상품명: $productName');
  print('가격: $price원');
  print('할인율: ${(discountRate * 100).toStringAsFixed(2)}%');
}