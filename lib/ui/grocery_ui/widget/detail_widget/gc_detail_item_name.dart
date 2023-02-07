import 'package:flutter/material.dart';

import 'gc_detail_rating_row.dart';

class GcDetailItemName extends StatelessWidget {
  const GcDetailItemName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Bananas Organic",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        GcDetailRatingRow(),
        SizedBox(height: 15),
        Text(
          "The banana pulp contains minerals and vitamins useful and necessary for the human body: vitamins of group B, E, C.",
          style: TextStyle(
            color: Colors.black45,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
