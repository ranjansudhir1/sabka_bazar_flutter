import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tets"),
        ),
        body: const LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
         child: TextFormField(
           decoration: const InputDecoration(
             border: UnderlineInputBorder(),
             labelText: 'Email',
           ),
         ),
       ),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
         child: TextFormField(
           obscureText: true,
           decoration: const InputDecoration(
             border: UnderlineInputBorder(),
             labelText: 'Password',
           ),
         ),
       ),
     ],
    );
  }
}
