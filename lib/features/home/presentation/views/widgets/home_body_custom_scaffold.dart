import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_buttom_navigation_bar.dart';

class HomeBodyCustomScaffold extends StatelessWidget {
  const HomeBodyCustomScaffold({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(left: 14),
        decoration: BoxDecoration(color: const Color(0xFFEDE8FE)),
        child: Stack(
          children: [
            Positioned(
              top: -100,
              right: -150,
              child: SvgPicture.asset("assets/images/star.svg"),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
