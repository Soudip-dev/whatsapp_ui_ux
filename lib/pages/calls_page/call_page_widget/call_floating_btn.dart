import 'package:flutter/material.dart';

class CallFloatingBtn extends StatelessWidget {
  const CallFloatingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(onPressed: (){},backgroundColor: Colors.green, child: Icon(Icons.add_call,color: Colors.black),);
  }
}