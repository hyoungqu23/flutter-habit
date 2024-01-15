import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const SocialLoginButton({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(
          Size.fromHeight(48),
        ),
        backgroundColor: MaterialStatePropertyAll(
          Colors.white,
        ),
        shadowColor: MaterialStatePropertyAll(
          Colors.white,
        ),
        overlayColor: MaterialStatePropertyAll(
          Colors.white,
        ),
        splashFactory: NoSplash.splashFactory,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
        ),
        alignment: Alignment.center,
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF573353),
          fontWeight: FontWeight.w700,
        ),
      ),
      icon: Icon(
        icon,
        size: 24,
      ), // Image.asset('assets/icons/google.svg'),
    );
  }
}
