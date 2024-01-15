import 'package:flutter/material.dart';
import 'package:habit/src/features/register/views/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E9),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 48,
          bottom: 32,
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/create-your-account.png',
                height: 150,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Create Your Account'.toUpperCase(),
                style: const TextStyle(
                  color: Color(0xFF573353),
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  decoration: TextDecoration.none,
                  letterSpacing: -1,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
