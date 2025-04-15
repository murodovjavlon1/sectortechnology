class SignupReqParams {
  final String otpCode;
  final String email;

  SignupReqParams({
    required this.otpCode,
    required this.email,
  });

  Map<String, dynamic> toJson() {
    return {
      'optCode': otpCode,
      'email': email,
    };
  }

 
}
