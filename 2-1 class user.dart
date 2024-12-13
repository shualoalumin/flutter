class User {
  final String email;
  final String password;
  final DateTime registrationDate;
  
    User({
    required this.email,
    required this.password,
    required this.registrationDate,
  });
  
  @override
  String toString() {
    return 'User(email: $email, registrationDate: $registrationDate)';
  }
}

// 사용 예시
void main() {
  final user = User(
    email: 'test@example.com',
    password: '1234567890',
    registrationDate: DateTime.now(),
  );
  
  print(user);
}
