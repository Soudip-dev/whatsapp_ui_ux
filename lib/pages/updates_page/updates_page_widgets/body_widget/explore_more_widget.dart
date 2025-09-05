import 'package:flutter/material.dart';

class ExploreMoreWidget extends StatelessWidget {
  const ExploreMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return explore_more_btn();
  }

  
  InkWell explore_more_btn() {
    return InkWell(
        onTap: (){},
         child: Container(
          height: 35,width: 120,
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.green)
            // color: Colors.green.shade400
          ),
          child: Center(
            child: Text("Explore more",style: TextStyle(color: Colors.green),),
          ),
                 ),
       );
  }

}