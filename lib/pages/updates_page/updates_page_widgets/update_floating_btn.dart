import 'package:flutter/material.dart';

class UpdateFloatingBtn extends StatelessWidget {
  const UpdateFloatingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(height: 110,
    // width: 90,
    
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      InkWell(
        onTap: () {},
        child: Container(height: 32,width: 32,decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(9)
        ),
         child: Icon(Icons.edit,color: Colors.white,size: 25,),
        
        ),
      ),
      InkWell(
        onTap: (){},
        child: Container(height: 55,width: 55,decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.black45,blurRadius: 5)]
        ),
             child: Icon(Icons.add_a_photo_outlined,size: 30,),
        ),
      ),
    ],),
    );
  }
}