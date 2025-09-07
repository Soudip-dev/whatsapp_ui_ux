import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/utils/app_space.dart';

class CallLogWidget extends StatelessWidget {
  final String name;
  final String callType;
  final String time;
  final bool isVideoCall;
  final String profilePic;
  
  const CallLogWidget({
    super.key,
    required this.name,
    required this.callType,
    required this.time,
    required this.isVideoCall,
    required this.profilePic
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        call_log_widge(
          name: name,
          nameFontColor: callType == "Outgoing" ? Colors.black: Colors.red,
          status: "~$name",
          callVideoIcon: isVideoCall ? Icons.videocam : Icons.call ,
          icon:callType == "Outgoing" ? Icons.arrow_outward_sharp : Icons.arrow_downward_sharp,
          iconColor: callType == "Outgoing" ? Colors.green : Colors.red ,
          time: time,
          profilePic: profilePic,

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
    required String profilePic,

    }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(children: [
            CircleAvatar(radius: 30,backgroundColor: Colors.amber
            
            ,backgroundImage: AssetImage(profilePic),),
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
      Icon( callVideoIcon,color: Colors.black,size: 25,)
          ],),
    );
  }


}