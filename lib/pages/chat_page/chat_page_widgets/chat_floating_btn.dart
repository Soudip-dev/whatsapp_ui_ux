import 'package:flutter/material.dart';

class ChatFloatingBtn extends StatelessWidget {
  const ChatFloatingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){},
     backgroundColor: Colors.green,
     
     child: Icon(Icons.add_comment_outlined,color: Colors.black,),);
  }
}