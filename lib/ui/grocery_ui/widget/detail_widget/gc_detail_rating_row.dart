import 'package:flutter/material.dart';

import 'gc_detail_rating.dart';

class GcDetailRatingRow extends StatelessWidget {
  const GcDetailRatingRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        GcDetailRating(),
        SizedBox(width: 30.0),
        GcDetailRating(
          icon: Icons.message_rounded,
          text: '7 Comments',
        ),
      ],
    );
  }
}
