import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/global_widgets/app_bar_widget.dart';
import 'package:whats_app_ui_ux/global_widgets/bottom_navbar.dart';
import 'package:whats_app_ui_ux/pages/calls_page/call_page_data/call_page_data.dart';
import 'package:whats_app_ui_ux/pages/calls_page/call_page_widget/call_app_ber_action_btn.dart';
import 'package:whats_app_ui_ux/pages/calls_page/call_page_widget/call_body_widgets/add_favorites_widget.dart';
import 'package:whats_app_ui_ux/pages/calls_page/call_page_widget/call_body_widgets/call_log_widget.dart';
import 'package:whats_app_ui_ux/pages/calls_page/call_page_widget/call_floating_btn.dart';
import 'package:whats_app_ui_ux/utils/app_space.dart';



class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget.getAppBar(title: "Calls",actions: [CallAppBerActionBtn()]),
      floatingActionButton: CallFloatingBtn(),
       bottomNavigationBar: BottomNavigationbarWidget.bottomNavigationBar(context, btInfo: "Calls"),
       body: Container(
        height: double.infinity,
        width: double.infinity,
        
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Favorites",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
            AppSpace.verSpacer(10),
            AddFavoritesWidget(),
            AppSpace.verSpacer(15),
            Text("Recent",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
            AppSpace.verSpacer(15),
            
           ...CallPageData.callList.map((ele){return CallLogWidget(
          callType: ele["callType"]! ,
          name: ele["name"]!,
          time: ele["time"]!,
          isVideoCall: ele["isVideoCall"]!,
          profilePic: ele["profilePic"]!,
          
           );}) 
           
           
          ],),
        ),
       )
    );
  }

}