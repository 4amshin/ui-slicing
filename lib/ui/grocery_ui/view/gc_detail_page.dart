import 'package:flutter/material.dart';

class GcDetailPage extends StatelessWidget {
  const GcDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detail Page"),
      ),
    );
  }
}
