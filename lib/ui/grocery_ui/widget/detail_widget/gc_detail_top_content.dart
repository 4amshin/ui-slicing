import 'package:flutter/material.dart';

class GcDetailTopContent extends StatelessWidget {
  const GcDetailTopContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      height: 250,
      image: AssetImage(
        'assets/images/grocery/banana.png',
      ),
    );
  }
}
