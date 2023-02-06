import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/color_theme.dart';

class GcSearch extends StatelessWidget {
  const GcSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 6,
            child: Container(
              height: 42,
              margin: const EdgeInsets.only(right: 15),
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: gcBlueGrey,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/grocery/search.svg',
                    height: 20,
                    color: gcIconGrey,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    "Search....",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: gcIconGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: 42,
              padding: const EdgeInsets.only(
                left: 2,
                top: 6,
              ),
              decoration: BoxDecoration(
                color: gcBlueGrey,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: SvgPicture.asset(
                'assets/icons/grocery/filter.svg',
                color: gcIconGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
