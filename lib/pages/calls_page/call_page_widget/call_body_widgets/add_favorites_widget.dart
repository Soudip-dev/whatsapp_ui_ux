import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/utils/app_space.dart';

class AddFavoritesWidget extends StatelessWidget {
  const AddFavoritesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
            CircleAvatar(radius: 22,backgroundColor: Colors.green,
            child: Icon(Icons.favorite,color: Colors.black,size: 25,),
            ),
            AppSpace.horSpacer(10),
            Text("Add Favorites",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),

          ],)
;
  }
}