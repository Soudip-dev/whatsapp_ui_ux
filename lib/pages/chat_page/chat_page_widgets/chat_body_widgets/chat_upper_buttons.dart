import 'package:flutter/material.dart';

class ChatUpperButtons extends StatelessWidget {
  const ChatUpperButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
            upper_button_section(btnName: "All"),
            upper_button_section(btnName: "Unread 26"),
            upper_button_section(btnName: "Favourites"),
            upper_button_section(btnName: "Groups 12"),
            upper_button_section(btnName: "+"),
          ],),
    );
  }


  Container upper_button_section({required String btnName}) {
    return Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
          
          color:btnName == "All" ? Colors.green.shade300 :Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black,width: 0.5)
        ),
        child: Text(btnName,style: TextStyle(color: Colors.black),),
        
        );
  }




}