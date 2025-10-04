import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ui_project/core/utils/app_colors.dart';

import 'custom_anime_view_action_button.dart';

class HideableBottomNavBar extends StatelessWidget {
  const HideableBottomNavBar({super.key, required this.isVisible});
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      duration: const Duration(milliseconds: 300),
      offset: isVisible ? Offset.zero : const Offset(0, 1),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: isVisible ? 1 : 0,
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: AppColors.secondLevelColor,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: CustomAnimeViewActionButton(
                  iconPath: "assets/images/stop_watch.svg",
                  text: 'preview',
                  color: Color(0xff8D8998),
                  onTap: () {
                    log("Preview");
                  },
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: CustomAnimeViewActionButton(
                  iconPath: "assets/images/eye_icon.svg",
                  text: 'Watch Now',
                  color: Color(0xff6758FE),
                  onTap: () {
                    log("Watch Now!");
                  },
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
