import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';

class GcDetailPriceRow extends StatefulWidget {
  final String? price;
  const GcDetailPriceRow({
    Key? key,
    this.price,
  }) : super(key: key);

  @override
  State<GcDetailPriceRow> createState() => _GcDetailPriceRowState();
}

class _GcDetailPriceRowState extends State<GcDetailPriceRow> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 1,
          ),
          decoration: BoxDecoration(
            color: gcLightGreen,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            '\$${widget.price}',
            style: const TextStyle(
              fontSize: 15.0,
              color: gcGreen,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          child: Container(
            height: 35,
            width: 35,
            decoration: const BoxDecoration(
              color: gcLightRed,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: isFavorite
                ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 18,
                  )
                : const Icon(
                    Icons.favorite_outline,
                    color: Colors.red,
                    size: 18,
                  ),
          ),
        ),
      ],
    );
  }
}
