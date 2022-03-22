import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
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
    return Container(
      alignment: Alignment.center,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Center(
              child: Image(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.contain,
                width: 200,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Text(
                  "Get access to your Orders, Wishlist and Recommendations",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20.0,left: 20.0,top: 10.0),
            child: Center(
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.pink,
                      primary: Colors.white, // foreground
                    ),
                    onPressed: () {},
                    child: const Text("Login")),
              ),
            ),
          )
        ],
      ),
    );
  }
}