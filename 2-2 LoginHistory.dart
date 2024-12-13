class LoginHistory {
  final String userId;
  final DateTime loginDate;
  final String ipAddress;

  LoginHistory({
    required this.userId,
    required this.loginDate,
    required this.ipAddress,
  });

  LoginHistory.now(
    String userId, {
    required String ipAddress,
  }) : this(
        userId: userId,
        loginDate: DateTime.now(),
        ipAddress: ipAddress,
      );
}
