import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/utils/app_space.dart';

class CallLogWidget extends StatelessWidget {
  const CallLogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        call_log_widge(
          name: "Sandip",
          nameFontColor: Colors.black,
          status: "~sandip_samanta",
          callVideoIcon: Icons.call ,
          icon: Icons.arrow_outward_sharp,
          iconColor: Colors.green ,
          time: "August 28, 6.23 PM",

          ),
          call_log_widge(
          name: "Maa",
          nameFontColor: Colors.black,
          status: "",
          callVideoIcon: Icons.videocam_outlined ,
          icon: Icons.arrow_outward_sharp,
          iconColor: Colors.green ,
          time: "September 08, 8.48 PM",

          ),
          call_log_widge(
          name: "Chiku",
          nameFontColor: Colors.red,
          status: "~yoo_bro",
          callVideoIcon: Icons.call  ,
          icon: Icons.subdirectory_arrow_left_sharp,
          iconColor: Colors.red ,
          time: "September 08, 8.48 PM",

          ),
      ],
    );
  }

  Widget call_log_widge({
    required String name,
    required Color nameFontColor,
    required String status,
    required String time,
    required IconData icon,
    required IconData callVideoIcon,
    required Color iconColor,

    }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(children: [
            CircleAvatar(radius: 30,backgroundColor: Colors.amber),
            AppSpace.horSpacer(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: nameFontColor),),
               status == "" ? SizedBox(height: 2,): Text(status,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),),
                Row(children: [
                  Icon( icon,color: iconColor,size: 15,),
                  AppSpace.horSpacer(5,),
                  Text(time)
                ],)
              
              ],),
            ),
            // Spacer(),
      Icon( callVideoIcon,color: Colors.white,size: 30,)
          ],),
    );
  }


}