part of 'MainMenuBloc.dart';

@immutable
abstract class MainMenuEvent{}

class GetChatsEvent extends MainMenuEvent{
  String username;

  GetChatsEvent(this.username);

  @override
  String toString(){
    return 'GetChatsEvent:\nUsername: $username';
  }
}