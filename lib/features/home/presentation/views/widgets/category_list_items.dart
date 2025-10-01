import 'package:flutter/material.dart';

import 'category_list_item.dart';
import 'custom_sliver_sized_box.dart';

class CategoryListItems extends StatelessWidget {
  const CategoryListItems({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          CategoryListItem(itemTitle: "All", isActive: true),
          CustomSliverSizedBox(width: 4,),
          CategoryListItem(itemTitle: "Popular", isActive: false),
          CustomSliverSizedBox(width: 4,),
          CategoryListItem(itemTitle: "Trending", isActive: false),
          CustomSliverSizedBox(width: 4,),
          CategoryListItem(itemTitle: "New Releases", isActive: false),
          CustomSliverSizedBox(width: 4,),
          CategoryListItem(itemTitle: "Top Rated", isActive: false),
          CustomSliverSizedBox(width: 14),
        ],
      ),
    );
  }
}
