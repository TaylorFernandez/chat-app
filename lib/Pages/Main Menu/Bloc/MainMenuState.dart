part of 'MainMenuBloc.dart';

@immutable
abstract class MainMenuState extends Equatable{
  @override
  List<Object> get props => [];
}

class MainMenuInitial extends MainMenuState{}
class MainMenuLoading extends MainMenuState{}
class MainMenuComplete extends MainMenuState{}
