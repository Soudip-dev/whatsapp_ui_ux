import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/utils/app_space.dart';

class FollowContaintWidget extends StatelessWidget {
  const FollowContaintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return follow_containt();
  }


  Container follow_containt() {
    return Container(height: 65,width: double.infinity,
    // color: Colors.white,
      child: Row(children: [
        CircleAvatar(radius: 25,),
        AppSpace.horSpacer(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Sandip",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
            
            Text("1:46 PM")
          ],),
        ),
        // Spacer(),
        Container(
          height: 30,width: 65,
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green.shade400
          ),
          child: Center(
            child: Text("Follow",style: TextStyle(color: Colors.white),),
          ),
        )
      ]),
      
      );
  }


}