import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/global_widgets/app_bar_widget.dart';
import 'package:whats_app_ui_ux/global_widgets/bottom_navbar.dart';


import 'package:whats_app_ui_ux/pages/chat_page/chat_page_widgets/chat_app_ber_action_btn.dart';


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

     bottomNavigationBar: BottomNavigationbarWidget.bottomNavigationBar(context, btInfo: "")
    
   
    );
  }
}