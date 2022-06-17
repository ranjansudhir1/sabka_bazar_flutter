import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String topic;
  final Function callbackFuncation;

  const MyButton(
      {Key? key, required this.topic, required this.callbackFuncation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.maxFinite,
        height: 70,
        margin: const EdgeInsets.all(20),
        decoration: const BoxDecoration(color: Colors.blue),
        child: Center(
          child: Text(
            topic,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      onTap: () {
        //print("Taped");
        callbackFuncation(topic);
      },
    );
  }
}
