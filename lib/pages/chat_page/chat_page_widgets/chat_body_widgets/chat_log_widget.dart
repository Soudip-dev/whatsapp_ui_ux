import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/utils/app_space.dart';

class ChatLogWidget extends StatelessWidget {
  final String name;
  final String lastMessage;
  final String time;
  final int unseenMessage;
  
  final String profilePic;
  

  const ChatLogWidget({ Key?key,
   required this.name, 
   required this.lastMessage, 
   required this.time, 
   required this.unseenMessage, 
   required this.profilePic
   }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 65,
            width: double.infinity,
            
         child: Row(
          
          children: [
          CircleAvatar(radius: 25,
          
          backgroundImage: AssetImage(profilePic),
          // child: Image.asset(profilePic),
          ),
          AppSpace.horSpacer(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(name,style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: 16, fontWeight: FontWeight.w500,),),
              Text(lastMessage,style: TextStyle(overflow: TextOverflow.ellipsis),),
            
            ],),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(time,style: TextStyle(fontSize: 10, color: unseenMessage == 0 ? Colors.black : Colors.green,fontWeight: FontWeight.w500),),
              AppSpace.verSpacer(3),
             unseenMessage == 0 ? SizedBox(height: 2,): CircleAvatar(radius: 10,backgroundColor: Colors.green,
              child: Text(unseenMessage.toString(),style: TextStyle(fontSize: 10,color: Colors.white),),
              ),
            ],
          )
         ],),

          
          );
  }
}