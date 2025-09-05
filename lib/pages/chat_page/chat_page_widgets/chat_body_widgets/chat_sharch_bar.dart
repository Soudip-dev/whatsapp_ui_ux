import 'package:flutter/material.dart';

class ChatSharchBar extends StatelessWidget {
  const ChatSharchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                
                hintText: "Ask Meta AI or Search",
                prefixIcon: Icon(Icons.search,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
                )
              )
            ),
          );
  }
}