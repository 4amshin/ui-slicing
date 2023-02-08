import 'package:flutter/material.dart';

class GcDetailTopContent extends StatelessWidget {
  final String? imgAsset;
  final String? tag;
  const GcDetailTopContent({
    Key? key,
    this.imgAsset,
    this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag!,
      child: Image(
        height: 250,
        image: AssetImage(
          'assets/images/grocery/$imgAsset',
        ),
      ),
    );
  }
}
