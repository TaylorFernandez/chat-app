import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class testWidget extends StatelessWidget{
  final username = TextEditingController();
  final password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: username,
            decoration: InputDecoration(
              label: Row(
                children: const [
                  Icon(Icons.abc),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Username: '),
                ],
              ),
            ),
          ),
          TextField(
            controller: password,
            decoration: InputDecoration(
              label: Row(
                children: const [
                  Icon(Icons.abc),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Password: '),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("Username: ${username.text} "
                  "\nPassword: ${password.text}");
            }, child: Text('Submit'),
          )
        ],
      ),
    );
  }
}