import 'package:flutter/material.dart';

class OnBoardingTab extends StatelessWidget {
  final String title, imageAsset;

  const OnBoardingTab({
    super.key,
    required this.title,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF573353),
            fontSize: 32,
            fontWeight: FontWeight.w800,
            decoration: TextDecoration.none,
            letterSpacing: -1,
          ),
        ),
        Image.asset(
          imageAsset,
          height: 300,
        ),
        Text(
          'We can help you to be a better\nversion of yourself.'.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF573353),
            fontSize: 16,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
