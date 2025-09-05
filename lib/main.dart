import 'package:flutter/material.dart';
import 'package:whats_app_ui_ux/page_route/page_route.dart';

import 'package:whats_app_ui_ux/pages/calls_page/calls_page.dart';
import 'package:whats_app_ui_ux/pages/updates_page/updates_page.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp.router(routerConfig: PagesRoute().pageroute,);
    //  MaterialApp(
    //   home: UpdatesPage(),
    //   title: 'Flutter Demo',
    //   // theme: ThemeData( colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //   // ),
      
    // );
  }
}
