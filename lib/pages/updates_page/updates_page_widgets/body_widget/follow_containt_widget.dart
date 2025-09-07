import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/utils/app_space.dart';

class FollowContaintWidget extends StatelessWidget {
  final String name;
  final String time;
  final String img;
  const FollowContaintWidget({super.key,required this.name,required this.time,required this.img});

  @override
  Widget build(BuildContext context) {
    return follow_containt();
  }


  Container follow_containt() {
    return Container(height: 65,width: double.infinity,
    // color: Colors.white,
      child: Row(children: [
        CircleAvatar(radius: 25,backgroundImage: AssetImage(img),),
        AppSpace.horSpacer(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
            
            Text(time)
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