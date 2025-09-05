import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/global_widgets/app_bar_widget.dart';
import 'package:whats_app_ui_ux/global_widgets/bottom_navbar.dart';
import 'package:whats_app_ui_ux/pages/updates_page/updates_page_widgets/body_widget/add_status_section.dart';
import 'package:whats_app_ui_ux/pages/updates_page/updates_page_widgets/body_widget/explore_more_widget.dart';
import 'package:whats_app_ui_ux/pages/updates_page/updates_page_widgets/body_widget/follow_containt_widget.dart';
import 'package:whats_app_ui_ux/pages/updates_page/updates_page_widgets/body_widget/recent_update.dart';
import 'package:whats_app_ui_ux/pages/updates_page/updates_page_widgets/update_floating_btn.dart';

import 'package:whats_app_ui_ux/pages/updates_page/updates_page_widgets/updates_app_ber_action_btn.dart';
import 'package:whats_app_ui_ux/utils/app_space.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget.getAppBar(
        title: "Updates",
        actions: [UpdatesAppBerActionBtn()]
        ),
        
        floatingActionButton: UpdateFloatingBtn(),
         bottomNavigationBar: BottomNavigationbarWidget.bottomNavigationBar(context,btInfo: "Updates"),
         body: Container(
          height: double.infinity,
          width: double.infinity,
          // color: Colors.grey,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

Text("Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
AppSpace.verSpacer(15),
        AddStatusSection(),
        AppSpace.verSpacer(15),
        Text("Recent Updates"),
        AppSpace.verSpacer(15),
       RecentUpdate(),
       
        AppSpace.verSpacer(15),
        Text("Channels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        AppSpace.verSpacer(5),
        Text("Stay updated on topics that matter to you. Find \nchannels to follow below."),
        AppSpace.verSpacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Find channels to follow",style: TextStyle(fontSize: 12),),
            Icon(Icons.keyboard_arrow_down,size: 20,)
          ],
        ),
        AppSpace.verSpacer(15),
        FollowContaintWidget(),
        FollowContaintWidget(),
        AppSpace.verSpacer(),
         ExploreMoreWidget(),

       
          ],),
         ),
    );
  }

}