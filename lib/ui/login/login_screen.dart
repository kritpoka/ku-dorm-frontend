import 'package:flutter/material.dart';
import 'package:ku_dorm_frontend/ui/login/widgets/form_section_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primary,
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.34,
            child: Stack(
              children: [
                Positioned(
                  top: -50,
                  left: -50,
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.07),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: -30,
                  right: -70,
                  child: Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.05),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                SafeArea(
                  bottom: false,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Center(
                            child: Text(
                              'KU',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          'KU Dorm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'ระบบหอพักนิสิต',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.85),
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'มหาวิทยาลัยเกษตรศาสตร์',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.85),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFF8F5ED),
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
                child: FormSectionWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
