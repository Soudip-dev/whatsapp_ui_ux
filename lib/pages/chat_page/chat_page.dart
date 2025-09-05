import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/global_widgets/app_bar_widget.dart';
import 'package:whats_app_ui_ux/global_widgets/bottom_navbar.dart';
import 'package:whats_app_ui_ux/pages/chat_page/chat_page_data/chat_page_data.dart';


import 'package:whats_app_ui_ux/pages/chat_page/chat_page_widgets/chat_app_ber_action_btn.dart';
import 'package:whats_app_ui_ux/pages/chat_page/chat_page_widgets/chat_body_widgets/chat_log_widget.dart';
import 'package:whats_app_ui_ux/pages/chat_page/chat_page_widgets/chat_body_widgets/chat_sharch_bar.dart';
import 'package:whats_app_ui_ux/pages/chat_page/chat_page_widgets/chat_body_widgets/chat_upper_buttons.dart';
import 'package:whats_app_ui_ux/pages/chat_page/chat_page_widgets/chat_floating_btn.dart';
import 'package:whats_app_ui_ux/utils/app_space.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.getAppBar(  title: "WhatsApp",actions: [ChatAppBerActionBtn()]),
     floatingActionButton: ChatFloatingBtn(),
     bottomNavigationBar: BottomNavigationbarWidget.bottomNavigationBar(context, btInfo: ""),
    body: Container(
      height: double.infinity,
      width: double.infinity,
      
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(children: [
          AppSpace.verSpacer(10),
          ChatSharchBar(),
          AppSpace.verSpacer(10),
          ChatUpperButtons(),
          AppSpace.verSpacer(),
          
          
      ...ChatPageData.chatList.map((ele){
        return ChatLogWidget(
          name: ele["name"]!,
          lastMessage: ele["lastMessage"]!,
          time: ele["time"]!,
          unseenMessage: ele["unseenMessage"]!,
          profilePic: ele["profilePic"]!,
        );
      })
          
        ],),
      ),
    ),
   
    );
  }

}