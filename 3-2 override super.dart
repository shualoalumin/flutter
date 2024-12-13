// import 'package:intl/intl.dart';

String toLocaleString(double number) {
  String formatted = NumberFormat.decimalPattern('ko_KR').format(number);
  return formatted;
}

class Payment {
  double amount;

  Payment(this.amount);

  void processPayment() {
    print("${toLocaleString(amount)} 원 결제 진행 중..");
    print("-------------------------------------");
  }
}

class CreditCardPayment extends Payment {
  String cartNumber;

  CreditCardPayment(double amount, this.cartNumber) : super(amount);

  @override
  void processPayment() {
    print("카드 결제 - 카드 번호 : ${cartNumber}");
    super.processPayment();
  }
}

class BankTransferPayment extends Payment {
  String bankAccount;

  BankTransferPayment(double amount, this.bankAccount) : super(amount);

  @override
  void processPayment() {
    print("계좌 이체 - 계좌 번호 : ${bankAccount}");

    super.processPayment();
  }
}

void main() {
  CreditCardPayment creditCardPayment =
      CreditCardPayment(10000000, '12938039482');
  BankTransferPayment bankTransferPayment =
      BankTransferPayment(10000000, '103-03-90393');

  creditCardPayment.processPayment();
  bankTransferPayment.processPayment();
}
