import 'package:equatable/equatable.dart';

class GetChatsRequest extends Equatable{
  final String username;

  const GetChatsRequest({required this.username});

  @override
  List<Object?> get props => [username];

  Map<String, dynamic> toJson() {
    return{
      'username' : username,
    };
  }

  @override
  String toString(){
    return "SendLoginRequest:\nUsername: $username";
  }
}