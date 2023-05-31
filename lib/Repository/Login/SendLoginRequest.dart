import 'package:equatable/equatable.dart';

class SendLoginRequest extends Equatable{
  final String username;
  final String password;

  const SendLoginRequest({required this.username, required this.password});

  @override
  List<Object?> get props => [username, password];

  Map<String, dynamic> toJson() {
    return{
      'username' : username,
      'password' : password,
    };
  }

  @override
  String toString(){
    return "SendLoginRequest:\nUsername: $username\nPassword: $password";
  }
}