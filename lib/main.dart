import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ku_dorm_frontend/ui/login/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansThaiTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF207A4D),
        ),
        scaffoldBackgroundColor: Color(0xFFF8F5ED),
      ),
      home: LoginScreen()
    );
  }
}
