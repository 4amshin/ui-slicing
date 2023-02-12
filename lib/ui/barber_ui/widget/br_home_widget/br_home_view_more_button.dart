import 'package:flutter/material.dart';

class BrHomeViewMoreButton extends StatelessWidget {
  const BrHomeViewMoreButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: FilledButton.styleFrom(
          backgroundColor: Colors.indigoAccent[100],
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: const Text(
          "View More",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
