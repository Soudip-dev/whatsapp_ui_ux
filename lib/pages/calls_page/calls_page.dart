import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/global_widgets/app_bar_widget.dart';
import 'package:whats_app_ui_ux/global_widgets/bottom_navbar.dart';
import 'package:whats_app_ui_ux/pages/calls_page/call_page_widget/call_app_ber_action_btn.dart';



class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.getAppBar(title: "Calls",actions: [CallAppBerActionBtn()]),
       bottomNavigationBar: BottomNavigationbarWidget.bottomNavigationBar(context, btInfo: "Calls")
    );
  }
}