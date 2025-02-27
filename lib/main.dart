import 'package:flutter/material.dart';
import 'package:event_planner/utils/responsive_layout.dart';
import 'package:event_planner/screens/mobile_UI/mobile_home.dart';
import 'package:event_planner/screens/tablet_UI/tablet_home.dart';
import 'package:event_planner/screens/web_UI/web_home_screen.dart';

void main() {
  runApp(
    const PLNRApp(),
  );
}

class PLNRApp extends StatelessWidget {
  const PLNRApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileHomeScreen(),
        tabletScaffold: TabletHomeScreen(),
        webScaffold: WebHomeScreen(),
      ),
    );
  }
}