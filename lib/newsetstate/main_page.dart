import 'package:flutter/material.dart';
import 'package:sabka_bazar/newsetstate/button_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String topic = "Set State";

  callBack(varTopic) {
    setState(() {
      topic = varTopic;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Test Set State")),
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 70,
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  topic,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            /*  GestureDetector(
              child:      Container(
                width: double.maxFinite,
                height: 70,
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Center(
                  child: Text(
                    "Get Value",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                ),
              ),
              onTap:() {
                setState(() {
                  topic = "Get Value while click";
                });
              },
            )*/
            MyButton(topic: "One", callbackFuncation: callBack),
            MyButton(topic: "Two", callbackFuncation: callBack),
            MyButton(topic: "Three", callbackFuncation: callBack)
          ],
        ),
      ),
    );
  }
}
