import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_project/features/home/presentation/views/home_view.dart';
import 'package:ui_project/core/utils/custom_buttom_navigation_bar.dart';

class CustomHomeScaffold extends StatefulWidget {
  const CustomHomeScaffold({super.key});

  @override
  State<CustomHomeScaffold> createState() => _CustomHomeScaffoldState();
}

class _CustomHomeScaffoldState extends State<CustomHomeScaffold> {
  int selectedItem = 0;

  // هنا بتحدد ال views اللي هتتنقل بينهم
  final List<Widget> views = [
    HomeView(),
    Center(child: Text("Groups")),
    Center(child: Text("Search")),
    Center(child: Text("Global")),
    Center(child: Text("Setting")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 14, top: 12),
        decoration: const BoxDecoration(color: Color(0xFFEDE8FE)),
        child: Stack(
          children: [
            Positioned(
              top: -100,
              right: -150,
              child: SvgPicture.asset("assets/images/star.svg"),
            ),
            views[selectedItem], // هنا بقى child اللي جاي من الـ Scaffold
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        changeView: (value) {
          setState(() {
            selectedItem = value;
          });
        },
        selectedIndex: selectedItem,
      ),
    );
  }
}
