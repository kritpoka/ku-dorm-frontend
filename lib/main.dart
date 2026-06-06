import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ku_dorm_frontend/injection.dart';
import 'package:ku_dorm_frontend/presentation/user/user_bloc.dart';
import 'package:ku_dorm_frontend/presentation/user/user_event.dart';
import 'package:ku_dorm_frontend/ui/login/login_screen.dart';

void main() {
  configureDependencies();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<UserBloc>()..add(GetUserInfo())),
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.notoSansThaiTextTheme(),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFF207A4D),
          ),
          scaffoldBackgroundColor: Color(0xFFF8F5ED),
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
