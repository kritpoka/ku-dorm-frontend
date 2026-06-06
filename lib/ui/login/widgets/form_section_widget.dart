import 'package:flutter/material.dart';
import 'package:ku_dorm_frontend/ui/app.dart';

class FormSectionWidget extends StatefulWidget {
  const FormSectionWidget({super.key});

  @override
  State<FormSectionWidget> createState() => _FormSectionWidgetState();
}

class _FormSectionWidgetState extends State<FormSectionWidget> {
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final Color primary = Theme.of(context).colorScheme.primary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'WELCOME BACK',
          style: TextStyle(
            color: Colors.orange.shade700,
            fontSize: 12,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'เข้าสู่ระบบ',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        const SizedBox(height: 24),
        const Text(
          'รหัสนิสิต / Student ID',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        const SizedBox(height: 8),
        _buildTextField(
          primary: primary,
          hint: 'รหัสนิสิต',
          prefixIcon: Icons.badge_outlined,
          obscure: false,
        ),
        const SizedBox(height: 18),
        const Text(
          'รหัสผ่าน / Password',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        const SizedBox(height: 8),
        _buildTextField(
          primary: primary,
          hint: '••••••••',
          prefixIcon: Icons.lock_outline,
          obscure: obscurePassword,
          suffixIcon: IconButton(
            icon: Icon(
              obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              color: Colors.grey.shade500,
              size: 20,
            ),
            onPressed: () => setState(() => obscurePassword = !obscurePassword),
          ),
        ),
        const SizedBox(height: 22),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyApp())
              );
            },
            icon: const Icon(Icons.arrow_forward, size: 18, color: Colors.white,),
            label: const Text('เข้าสู่ระบบ'),
            style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(height: 22),
        Row(
          children: [
            Expanded(child: Divider(color: Colors.grey.shade300)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text('หรือ', style: TextStyle(color: Colors.grey.shade500, fontSize: 13)),
            ),
            Expanded(child: Divider(color: Colors.grey.shade300)),
          ],
        ),
        const SizedBox(height: 22),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyApp())
              );
            },
            icon: Icon(Icons.security_outlined, size: 18, color: primary),
            label: Text(
              'เข้าสู่ระบบด้วย KU All-Login',
              style: TextStyle(color: primary, fontWeight: FontWeight.w600),
            ),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              side: BorderSide(color: primary.withValues(alpha: 0.4)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: Text(
            'ใช้บัญชีนนทรี (Nontri Account) ของมหาวิทยาลัย\nหากมีปัญหาการเข้าใช้งาน ติดต่อสำนักงานหอพัก',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade500, fontSize: 12, height: 1.6),
          ),
        ),
      ],
    );
  }
}

Widget _buildTextField({
  required Color primary,
  required String hint,
  required IconData prefixIcon,
  required bool obscure,
  Widget? suffixIcon,
}) {
  return TextField(
    obscureText: obscure,
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Colors.grey.shade400),
      prefixIcon: Icon(prefixIcon, color: Colors.grey.shade500, size: 20),
      suffixIcon: suffixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade200),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade200),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: primary, width: 1.5),
      ),
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
    ),
  );
}