import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_slicing/screen_size.dart';
import 'package:ui_slicing/test_site.dart';
import 'package:ui_slicing/ui/grocery_ui/view/gc_chart_checkout.dart';
import 'package:ui_slicing/ui/grocery_ui/view/gc_detail_page.dart';
import 'package:ui_slicing/ui/grocery_ui/view/gc_home_page.dart';
import 'ui/student_management/view/sm_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ui Slicing',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: true,
      ),
      home: const GcHomePage(),
    );
  }
}
