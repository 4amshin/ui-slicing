import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ui_slicing/ui/grocery_ui/model/item.dart';
import 'package:ui_slicing/ui/grocery_ui/theme/color_theme.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/detail_widget/gc_detail_add_button.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/detail_widget/gc_detail_bottom_content.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/detail_widget/gc_detail_top_content.dart';

class GcDetailPage extends StatelessWidget {
  final GroceryItem item;
  const GcDetailPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: RepaintBoundary(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
                size: 20,
              ),
            ),
          )
              .animate()
              .fade(
                duration: 850.ms,
              )
              .slideY(
                begin: -0.3,
                duration: 750.ms,
                curve: Curves.fastOutSlowIn,
              ),
        ),
        actions: [
          RepaintBoundary(
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: const Icon(
                Icons.more_horiz,
                color: Colors.grey,
                size: 20,
              )
                  .animate()
                  .fade(
                    duration: 850.ms,
                  )
                  .slideY(
                    begin: -0.3,
                    duration: 750.ms,
                    curve: Curves.fastOutSlowIn,
                  ),
            ),
          ),
        ],
      ),
      backgroundColor: gcBackgroundColor,
      body: ListView(
        children: [
          const SizedBox(height: 15),
          GcDetailTopContent(
            tag: item.name,
            imgAsset: item.imgAsset,
          ),
          const SizedBox(height: 20),
          GcDetailBottomContent(
            title: item.name,
            description: item.description,
            price: item.price,
          ),
        ],
      ),
      floatingActionButton: RepaintBoundary(
        child: const GcDetailAddButton()
            .animate()
            .fade()
            .slideY(
              duration: 850.ms,
              begin: 0.5,
              curve: Curves.decelerate,
            )
            .then()
            .shimmer(),
      ),
    );
  }
}
