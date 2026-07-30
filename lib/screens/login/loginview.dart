import 'package:flutter/material.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe89797),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Form(child: TextFormField(
            decoration: InputDecoration(
              hintText: "Email"
            ),
          )),
        ),
      ),
    );
  }
}
