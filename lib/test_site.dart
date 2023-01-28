import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TestSite extends StatefulWidget {
  const TestSite({Key? key}) : super(key: key);

  @override
  _TestSiteState createState() => _TestSiteState();
}

class _TestSiteState extends State<TestSite> {
  final Random _random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          "Test Site",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
