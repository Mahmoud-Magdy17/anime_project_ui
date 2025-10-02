import 'package:flutter/material.dart';
import 'package:ui_project/core/utils/app_colors.dart';
import 'package:ui_project/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparent,
      body: const HomeViewBody(),
    );
  }
}
