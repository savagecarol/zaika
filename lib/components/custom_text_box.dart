import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator; // validation function
  final TextInputType keyboardType;

  const CustomTextBox({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.grey[900],
          ),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.bodyMedium,
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[500]),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: Colors.grey[900]) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon, color: Colors.grey[900]) : null,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
