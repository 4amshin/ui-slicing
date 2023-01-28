import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: true,
      ),
      home: const SmHomePage(),
    );
  }
}
