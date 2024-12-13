class Payment {
  double amount;

  Payment(this.amount);

  void processPayment() {
    print("${amount}원 결제 진행 중..");
  }

  void log() {
    print('log');
  }
}

// Credit card payment 로 확장
class CreditCardPayment extends Payment {
  String cartNumber;

  CreditCardPayment(super.amount, this.cartNumber);
}

class BankTransferPayment extends Payment {
  String bankAccount;

  BankTransferPayment(super.amount, this.bankAccount);
}

void main() {
  // Payment payment1 = Payment(1000000);
  // Payment payment2 = Payment(20000000);

  CreditCardPayment creditCardPayment1 =
      CreditCardPayment(1000000, '123-453532-343');
  print(creditCardPayment1.cartNumber);
  creditCardPayment1.processPayment();

  BankTransferPayment bankTransferPayment1 =
      BankTransferPayment(2000000, '123-45-23434');
  print(bankTransferPayment1.bankAccount);
  bankTransferPayment1.processPayment();
  bankTransferPayment1.log();

  // payment1.processPayment();
  // payment1.log();

  // payment2.processPayment();
}


