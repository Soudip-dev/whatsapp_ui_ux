import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/pages/updates_page/updates_page_widgets/body_widget/status_painter_widget.dart';
import 'package:whats_app_ui_ux/utils/app_space.dart';

class RecentUpdate extends StatelessWidget {
  const RecentUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
          recent_status_update(),
          recent_status_update(),
        ],);
  }


  Widget recent_status_update() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(children: [
             CustomPaint(painter: StatusPainterWidget(color: Colors.green,percentage: 0.2,),child: CircleAvatar(radius: 30,backgroundColor: Colors.amber,),),
            
            AppSpace.horSpacer(15),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Sandip",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
            AppSpace.verSpacer(5),
            Text("1:46 PM")
          ],)
          ],),
    );
  }


}