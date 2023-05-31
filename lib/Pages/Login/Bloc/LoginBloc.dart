import 'package:bloc/bloc.dart';
import 'package:chat_app/Repository/Login/SendLoginRequest.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../../Repository/Login/BasicResponse.dart';
import '../../../Repository/Login/LoginRepository.dart';

part 'LoginEvent.dart';
part 'LoginState.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  late SendLoginRequest data;
  final LoginRepository loginRepository;
  
  LoginBloc({
  required this.loginRepository
  }) : super (LoginInitial()){
    on<SendLoginDetailsEvent>((event, emit) async {
      emit(LoginLoading());
      BasicResponse response = await loginRepository.sendLogin(SendLoginRequest(username: event.username,
                                                                                 password: event.password));
      emit(LoginComplete(response));
    });
  }

}