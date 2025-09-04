import 'package:go_router/go_router.dart';
import 'package:whats_app_ui_ux/pages/calls_page/calls_page.dart';
import 'package:whats_app_ui_ux/pages/chat_page/chat_page.dart';
import 'package:whats_app_ui_ux/pages/communities_pages/communities_pages.dart';
import 'package:whats_app_ui_ux/pages/updates_page/updates_page.dart';

class PagesRoute {
  
static const String chatPage = "/";
  static const String updatesPage = "/updates_page";
  static const String communitiesPage = "/communities_page";
  static const String callsPage = "/calls_page";

  final GoRouter pageroute = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: chatPage,
        builder: (context, state) => ChatPage(),
        routes: <RouteBase>[
           GoRoute(
        path: updatesPage,
        builder: (context, state) => UpdatesPage(),
      ),
      GoRoute(
        path: communitiesPage,
        builder: (context, state) => CommunitiesPages(),
      ),
      GoRoute(
        path: callsPage,
        builder: (context, state) => CallsPage(),
      ),
        ]
      ),
      
    ]
    
    );
}