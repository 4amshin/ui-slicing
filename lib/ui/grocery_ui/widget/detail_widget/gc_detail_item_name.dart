import 'package:flutter/material.dart';

import 'gc_detail_rating_row.dart';

class GcDetailItemName extends StatelessWidget {
  final String? title;
  final String? description;
  const GcDetailItemName({
    Key? key,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "Bananas Organic",
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        const GcDetailRatingRow(),
        const SizedBox(height: 15),
        Text(
          description ??
              "The banana pulp contains minerals and vitamins useful and necessary for the human body: vitamins of group B, E, C.",
          style: const TextStyle(
            color: Colors.black45,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
