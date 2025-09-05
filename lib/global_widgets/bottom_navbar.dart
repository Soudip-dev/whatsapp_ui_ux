
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whats_app_ui_ux/page_route/page_route.dart';


class BottomNavigationbarWidget {
  
  static Widget bottomNavigationBar(
    BuildContext context,

    {
    required String btInfo 
    
  }
  ) {
    
    
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(  
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
       
       
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        bottomber_element(
          btnName: "Chats", icon: Icons.chat, 
          btnColor: btInfo == "Chats" || btInfo == "" ? Colors.green.shade300: Colors.white,
        fontWeight: btInfo == "Chats" ? FontWeight.w400: FontWeight.w300,
        onTap: (){
            btInfo = "Chats";
            print("btInfo $btInfo ");
            context.go(PagesRoute.chatPage);
          } ,
        
         ),
        bottomber_element(btnName: "Updates", icon: Icons.update, 
        btnColor: btInfo == "Updates" ? Colors.green.shade300: Colors.white,
        fontWeight: btInfo == "Updates" ? FontWeight.w400: FontWeight.w300,
        onTap: (){
          btInfo = "Updates";
          print("btInfo $btInfo ");
          context.go(PagesRoute.updatesPage);
        } ,
        
         ),
        bottomber_element(btnName: "Communities", icon: Icons.people_outline_sharp, onTap: (){
          btInfo = "Communities";
          print("btInfo $btInfo ");
          context.go(PagesRoute.communitiesPage);
        },
        
        btnColor: btInfo == "Communities" ? Colors.green.shade300: Colors.white,
        fontWeight: btInfo == "Communities" ? FontWeight.w400: FontWeight.w300,
          ),
        bottomber_element(btnName: "Calls", icon: Icons.call_outlined, onTap: (){
          
            context.go(PagesRoute.callsPage);
            btInfo = "Calls";
          print("btInfo $btInfo ");
          
          
        } ,
        btnColor: btInfo == "Calls" ? Colors.green.shade300: Colors.white,
        fontWeight: btInfo == "Calls" ? FontWeight.w400: FontWeight.w300,
        
        
         ),
       
        
      ],),
      
    );
    
  
  }

    
  static Widget bottomber_element({
    required IconData icon
    ,required String btnName,
    
    required Color btnColor,
    required FontWeight fontWeight,
    required Function() onTap,
    

   
    }) {
      
    return Container(
        
        width: 80,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10)
          
        ),
    child: InkWell(
      onTap: onTap,
      
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
        Container(
          height: 28,
          width: 50,
          decoration: BoxDecoration(
            
            color:btnColor,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(child: Icon(icon,size: 20,))),
        //)
        SizedBox(height: 2,),
        Text(btnName,style: TextStyle(fontSize: 13,fontWeight:fontWeight ),),
      ],),
    ),
    
      );
  }


}