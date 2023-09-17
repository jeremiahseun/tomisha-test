import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha_test/views/home/web/web_home.dart';

import 'views/home/mobile/mobile_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tomisha Responsive Website',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MediaQuery.of(context).size.width > 650
          ? const WebHomepage()
          : const MobileHomepage(),
    );
  }
}
