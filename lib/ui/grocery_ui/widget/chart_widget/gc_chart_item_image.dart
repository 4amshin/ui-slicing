import 'package:flutter/material.dart';

class GcChartItemImage extends StatelessWidget {
  final String? imgAsset;
  const GcChartItemImage({
    Key? key,
    required this.imgAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        'assets/images/grocery/$imgAsset',
      ),
      width: 80,
    );
  }
}
