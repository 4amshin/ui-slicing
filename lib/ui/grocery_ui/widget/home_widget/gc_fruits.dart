import 'package:flutter/material.dart';
import 'package:ui_slicing/ui/grocery_ui/theme/color_theme.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/home_widget/gc_list_item_card.dart';

class GcFruits extends StatelessWidget {
  final List? model;
  final String? title;
  const GcFruits({
    Key? key,
    this.model,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title ?? 'Title',
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            const Text(
              "View More",
              style: TextStyle(
                fontSize: 13,
                color: gcGreen,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: model!.length,
            itemBuilder: (context, index) {
              final item = model![index];
              return GcListItemCard(
                name: item.name,
                type: item.type,
                price: item.price,
                imgAsset: item.imgAsset,
              );
            },
          ),
        ),
      ],
    );
  }
}
