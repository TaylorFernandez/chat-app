part of 'LoginBloc.dart';

@immutable
abstract class LoginEvent{}

class SendLoginDetailsEvent extends LoginEvent{
  final String username;
  final String password;

  SendLoginDetailsEvent(this.username, this.password);

  @override
  String toString(){
    return 'SendLoginDetailsEvent:\nUsername: $username\nPassword: $password';
  }

}