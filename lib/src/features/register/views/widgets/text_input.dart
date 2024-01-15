import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String label;
  final IconData icon;
  final FormFieldSetter onSaved;
  final FormFieldValidator validator;
  final TextInputType keyBoardType;
  final bool isPassword;

  const TextInput({
    super.key,
    required this.label,
    required this.icon,
    required this.onSaved,
    required this.validator,
    required this.isPassword,
    required this.keyBoardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: label,
        prefixIcon: Icon(icon),
        prefixIconColor: const Color(0xFFFDA758),
        suffix: isPassword
            ? const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Text(
                  'Show',
                  style: TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            : null,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.zero,
      ),
      style: const TextStyle(
        color: Color(0xFFFDA758),
      ),
      keyboardType: keyBoardType,
      onSaved: onSaved,
      validator: validator,
    );
  }
}
