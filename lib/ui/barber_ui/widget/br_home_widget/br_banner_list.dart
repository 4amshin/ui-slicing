import 'package:flutter/material.dart';

class BrBannerList extends StatelessWidget {
  const BrBannerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        itemCount: 3,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 230,
            margin: const EdgeInsets.only(
              top: 5,
              bottom: 5,
              right: 15,
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.indigoAccent[100],
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Column(
              children: [],
            ),
          );
        },
      ),
    );
  }
}
