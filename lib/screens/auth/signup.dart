import 'package:diario/services/auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthService _authService = AuthService();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 8,
        title: const Text("Cadastrar"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Form(
            child: Column(
          children: [
            TextFormField(
              onChanged: (val) => setState(() {
                email = val;
              }),
            ),
            TextFormField(
              onChanged: (val) => setState(() {
                password = val;
              }),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                child: const Text("Registrar"),
                onPressed: () async => {
                      _authService.signUp(email, password),
                    }),
            const SizedBox(height: 10),
            ElevatedButton(
                child: const Text("Entrar"),
                onPressed: () async => {
                      _authService.signIn(email, password),
                    }),
          ],
        )),
      ),
    );
  }
}
