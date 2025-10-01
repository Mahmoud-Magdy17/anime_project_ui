import 'package:flutter/material.dart';

class CustomSliverSizedBox extends StatelessWidget {
  const CustomSliverSizedBox({super.key, this.width, this.height});
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(width: width, height: height),
    );
  }
}
