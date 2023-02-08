import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../theme/color_theme.dart';

class GcListItemCard extends StatefulWidget {
  final String? name;
  final String? type;
  final String? price;
  final String? imgAsset;
  const GcListItemCard({
    Key? key,
    this.name,
    this.type,
    this.price,
    this.imgAsset,
  }) : super(key: key);

  @override
  State<GcListItemCard> createState() => _GcListItemCardState();
}

class _GcListItemCardState extends State<GcListItemCard> {
  bool isAdd = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 7,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: widget.name!,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/grocery/${widget.imgAsset}',
                  ),
                ),
              ),
            ).animate().shake(
                  // delay: 500.ms,
                  hz: 2,
                  duration: 400.ms,
                ),
          ),
          Text(
            widget.name ?? 'Title',
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.type ?? 'type',
            style: const TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${widget.price}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isAdd = !isAdd;
                    });
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: isAdd ? gcGreen : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
