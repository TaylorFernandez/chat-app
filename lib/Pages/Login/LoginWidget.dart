import 'package:chat_app/Repository/Login/LoginRepository.dart';
import 'package:chat_app/testWidget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Bloc/LoginBloc.dart';



class LoginWidget extends StatelessWidget {
  LoginWidget({Key? key}) : super(key: key);

  final username = TextEditingController();
  final password = TextEditingController();
  final repository = LoginRepository(dio: Dio());

  @override
  Widget build(BuildContext context) {
    // Create an instance of the LoginBloc
    final LoginBloc loginBloc = LoginBloc(loginRepository: repository);

    return Scaffold(
      body: BlocProvider<LoginBloc>(
        create: (BuildContext context) => loginBloc,
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (BuildContext context, LoginState state) {
            if (state is LoginLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is LoginComplete) {
              print(state.response.toString());
              // Navigate to the next screen upon successful login
              // Replace `NextScreenWidget()` with your desired screen
              return testWidget();
            }

            return Column(
              children: [
                TextField(
                  controller: username,
                  decoration: const InputDecoration(
                    labelText: 'Username:',
                    prefixIcon: Icon(Icons.abc),
                  ),
                ),
                TextField(
                  controller: password,
                  decoration: const InputDecoration(
                    labelText: 'Password:',
                    prefixIcon: Icon(Icons.abc),
                  ),
                  obscureText: true,
                ),
                ElevatedButton(
                  onPressed: () {
                    final event = SendLoginDetailsEvent(
                      username.text,
                      password.text,
                    );
                    loginBloc.add(event);
                  },
                  child: Text('Submit'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
