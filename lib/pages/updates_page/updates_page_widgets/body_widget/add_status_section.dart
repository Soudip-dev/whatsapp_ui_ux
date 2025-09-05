import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/utils/app_space.dart';

class AddStatusSection extends StatelessWidget {
  const AddStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return 
Row(children: [
  Stack(children: [
  
    CircleAvatar(radius: 30,
    backgroundColor: Colors.white,
    child: CircleAvatar(radius: 22,backgroundColor: Colors.red,),
    ),
    Positioned(child: CircleAvatar(radius: 10,backgroundColor: Colors.green,
    
    child: Icon(Icons.add,color: Colors.white,size: 15,),
    ),bottom:10 ,right: 2,)
  ],),
  AppSpace.horSpacer(15),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Add Status",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
    AppSpace.verSpacer(9),
    Text("Disappears after 24 hours")
  ],)
  ],)

;
  }
}