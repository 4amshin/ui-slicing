import 'package:flutter/material.dart';
import 'package:ui_slicing/ui/barber_ui/view/home/br_home_hairstyle_option.dart';

class BrHomeViewMoreButton extends StatelessWidget {
  final String? title;
  const BrHomeViewMoreButton({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BrHomeHairstyleOption(),
            ),
          );
        },
        style: FilledButton.styleFrom(
          backgroundColor: Colors.indigoAccent[100],
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          title ?? "View More",
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.white,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
