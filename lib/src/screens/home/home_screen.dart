import 'package:flutter/material.dart';
import 'package:flutter_temp/src/screens/home/desktop_home_body.dart';
import 'package:flutter_temp/src/screens/home/mobile_home_body.dart';
import 'package:flutter_temp/src/screens/home/tablet_home_body.dart';
import 'package:flutter_temp/src/widgets/responsive/responsive_layout.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: MobileHomeBody(),
      tabletScaffold: TabletHomeBody(),
      desktopScaffold: DesktopHomeBody(),
    );
  }
}
