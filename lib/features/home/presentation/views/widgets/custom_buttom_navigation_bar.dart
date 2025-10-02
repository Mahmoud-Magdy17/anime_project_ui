
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_project/core/utils/app_colors.dart';
import 'package:ui_project/core/utils/text_styles.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  BottomNavigationBarItem buildNavItem({
    required String icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(icon, color: AppColors.primaryColor),
      label: "",

      activeIcon: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(icon),
            // Icon(icon, color: AppColors.whiteColor),
            const SizedBox(width: 4), // مسافة صغيرة بين الأيقونة والنص
            Text(
              label,
              style: TextStyles.nameSemiBoldtextStyle16.copyWith(
                fontSize: 12,
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,

      currentIndex: selectedItem,
      onTap: (value) {
        selectedItem = value;
        setState(() {});
      },
      elevation: 0,
      backgroundColor: AppColors.transparent,
      fixedColor: AppColors.transparent,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: [
        buildNavItem(icon: "assets/images/home.svg", label: "Home"),
        buildNavItem(icon: "assets/images/Group.svg", label: "Groups"),
        buildNavItem(icon: "assets/images/search.svg", label: "Search"),
        buildNavItem(icon: "assets/images/globals.svg", label: "Globals"),
        buildNavItem(icon: "assets/images/setting.svg", label: "Setting"),
      ],
    );
  }
}
