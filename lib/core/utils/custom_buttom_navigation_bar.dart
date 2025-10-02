import 'package:flutter/material.dart';

import 'custom_buttom_nav_bar.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.changeView,
    required this.selectedIndex,
  });

  final int selectedIndex;
  final Function(int val) changeView;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent, // الخلفية
      elevation: 0, // يشيل الظل الأبيض
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: changeView,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.transparent,
      unselectedItemColor: Colors.transparent,
      items: [
        CustomBottomNavItem(icon: "assets/images/home.svg", label: "Home"),
        CustomBottomNavItem(icon: "assets/images/Group.svg", label: "Groups"),
        CustomBottomNavItem(icon: "assets/images/search.svg", label: "Search"),
        CustomBottomNavItem(icon: "assets/images/globals.svg", label: "Global"),
        CustomBottomNavItem(
          icon: "assets/images/setting.svg",
          label: "Setting",
        ),
      ],
    );
  }
}
