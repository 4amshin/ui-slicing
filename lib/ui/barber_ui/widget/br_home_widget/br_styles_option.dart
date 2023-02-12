import 'package:flutter/material.dart';

class BrStylesOption extends StatelessWidget {
  const BrStylesOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Select Hairstyle",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            Container(
              height: 10,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.amber[300],
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 320,
          child: GridView.builder(
            itemCount: 4,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.cyanAccent[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
