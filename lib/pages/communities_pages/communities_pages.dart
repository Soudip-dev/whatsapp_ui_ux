import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/global_widgets/app_bar_widget.dart';
import 'package:whats_app_ui_ux/global_widgets/bottom_navbar.dart';
import 'package:whats_app_ui_ux/pages/communities_pages/communities_pages_widgets/communities_app_ber_action_btn.dart';

class CommunitiesPages extends StatefulWidget {
  const CommunitiesPages({super.key});

  @override
  State<CommunitiesPages> createState() => _CommunitiesPagesState();
}

class _CommunitiesPagesState extends State<CommunitiesPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.getAppBar(title: "Communities",actions: [CommunitiesAppBerActionBtn()]),
       bottomNavigationBar: BottomNavigationbarWidget.bottomNavigationBar(context,btInfo: "Communities")
    );
  }
}