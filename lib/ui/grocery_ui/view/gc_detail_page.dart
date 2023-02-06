import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:ui_slicing/ui/grocery_ui/theme/color_theme.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/detail_widget/gc_detail_add_button.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/detail_widget/gc_detail_bottom_content.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/detail_widget/gc_detail_circular_indicator_item.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/detail_widget/gc_detail_mid_line.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/detail_widget/gc_detail_progress_row.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/detail_widget/gc_detail_rating_row.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/detail_widget/gc_detail_top_content.dart';

import '../widget/detail_widget/gc_detail_app_bar.dart';
import '../widget/detail_widget/gc_detail_item_name.dart';
import '../widget/detail_widget/gc_detail_price_row.dart';
import '../widget/detail_widget/gc_detail_rating.dart';

class GcDetailPage extends StatelessWidget {
  const GcDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 246, 253),
        body: ListView(
          children: const [
            SizedBox(height: 25.0),
            GcDetailAppBar(),
            GcDetailTopContent(),
            SizedBox(height: 30),
            GcDetailBottomContent(),
          ],
        ),
        floatingActionButton: const GcDetailAddButton());
  }
}
