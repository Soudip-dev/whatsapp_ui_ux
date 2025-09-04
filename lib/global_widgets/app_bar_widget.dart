import 'package:flutter/material.dart';

class AppBarWidget {
  static getAppBar({
    required String title,
    List<Widget>? actions,
    Color? backgroundColor,
    Color? foregroundColor,
  }) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(title,style: TextStyle(fontWeight: FontWeight.w500),),
      actions: actions,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      
    );
  }

}