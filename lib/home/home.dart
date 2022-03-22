import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home",
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset('assets/logo.png'),
          ),
          actions: [
            SizedBox(
              width: 30,
              child: Image.asset(
                'assets/cart.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Text(
                  "0 items",
                  style: TextStyle(color: Colors.blueGrey),
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
          leadingWidth: 90,
          backgroundColor: Colors.white,
        ),
        body: const HomePage(),
      ),
    );
  }
}
/* @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Colors.white,
        ),
        body: const HomePage(),
      ),
    );
  }
}
*/

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Text(
            "Get access to your Orders, Wishlist and Recommendations",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
    );
  }
}
