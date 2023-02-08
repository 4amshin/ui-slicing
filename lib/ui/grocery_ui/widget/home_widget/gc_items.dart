import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ui_slicing/ui/grocery_ui/theme/color_theme.dart';
import 'package:ui_slicing/ui/grocery_ui/view/gc_detail_page.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/home_widget/gc_list_item_card.dart';

class GcItems extends StatelessWidget {
  final List? model;
  final String? title;
  const GcItems({
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
                fontWeight: FontWeight.bold,
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
        )
            .animate()
            .fade(
              duration: 850.ms,
            )
            .slideX(
              begin: -0.5,
              duration: 850.ms,
              curve: Curves.easeInOutCubic,
            ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: model!.length,
            itemBuilder: (context, index) {
              final item = model![index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GcDetailPage(item: item),
                    ),
                  );
                },
                child: GcListItemCard(
                  name: item.name,
                  type: item.type,
                  price: item.price,
                  imgAsset: item.imgAsset,
                )
                    .animate()
                    .fade(
                      duration: 850.ms,
                    )
                    .slideX(
                      begin: -1.5,
                      duration: 850.ms,
                      curve: Curves.easeInOutCubic,
                    ),
              );
            },
          ),
        ),
      ],
    );
  }
}
